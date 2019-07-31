from uuid import UUID, uuid4
from weakref import WeakValueDictionary


class DecodeError(Exception):
    """Exception during decoding"""
    def __init__(self, msg):
        self.msg = msg


class Node:
    """Base class for 'nodes', which can be referenced by their UUID"""

    _uuid_cache = WeakValueDictionary()

    def __init__(self, uuid=None):
        if uuid is None:
            uuid = uuid4()
        self.uuid = uuid

    @classmethod
    def _decode_protobuf(cls, proto_object, uuid):
        """Decode a Protobuf object to a Python GTIRB object.

        Must be overridden by subclasses.

        Parameters:
            cls: the Python GTIRB class to construct
            proto_object: the Protobuf object
            uuid: the UUID of the object. Automatically inserted into the
                cache by _from_protobuf.

        """
        raise NotImplementedError

    @classmethod
    def _from_protobuf(cls, proto_object):
        """Deserialize a Node from Protobuf

        Performs a cache lookup for the object's UUID in the cache, calling the
        class' _decode_protobuf constructor if cannot find it.

        """
        uuid = UUID(bytes=proto_object.uuid)
        if uuid in Node._uuid_cache:
            node = Node._uuid_cache[uuid]
            if not isinstance(node, cls):
                node_type = node.__class__.__name__
                cls_type = cls.__class__.__name__
                raise DecodeError("%s corresponds to node of type %s, not %s" %
                                  (uuid, node_type, cls_type))
            return node
        new_node = cls._decode_protobuf(proto_object, uuid)
        Node._uuid_cache[new_node.uuid] = new_node
        return new_node

    def _to_protobuf(self):
        """Return a Protobuf representation of the object.

        Must be overridden by subclasses.

        """
        raise NotImplementedError