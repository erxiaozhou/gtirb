ProxyBlock
====================

A **ProxyBlock** is a placeholder that serves as the endpoint (source
or target) of a [CfgEdge](CfgEdge.md).

**ProxyBlock** objects allow the construction of CFG edges to or from
another node. For example, a call to a function in another module may
be represented by an edge that originates at the calling
[CodeBlock](CodeBlock.md) and targets a **ProxyBlock**. Another
example would be an edge that represents an indirect jump whose target
is not known.

A **ProxyBlock** does not represent any instructions and so has
neither an address nor a size.

The corresponding Protobuf message type is `ProxyBlock`.


Guaranteed Properties
---------------------

- A **ProxyBlock** is a [CfgNode](CfgNode.md).


- Each **ProxyBlock** must belong to either zero (0) or one (1)
  [Module](Module.md) objects. The owning **Module** must be stored as
  a reference.
  - This reference may be null, in which case the **ProxyBlock** is
    freestanding and does not belong to any **Module**.
  - The reference must be readable.
  - If the reference is writable, setting it must automatically update
    the **proxy_blocks** sets for the affected **Module** object or objects
    (there will be at most two).


API Implementations
--------------------

The guaranteed functionality is provided as follows.

### ProxyBlock Classes

| Language    | ProxyBlock Class  |
|:------------|:------------------|
| C++         | gtirb::ProxyBlock |
| Python      | gtirb.ProxyBlock  |
| Common Lisp | **proxy-block**   |



### Associated Module


| Language    | Associated Module                               |
|:------------|:------------------------------------------------|
| C++         | gtirb::ProxyBlock::getModule()                  |
| Python      | gtirb.ProxyBlock.module                         |
| Common Lisp | **module** (*object* *proxy-block*) => *result* |


Links
--------------------

- [GTIRB Components](COMPONENTS.md)
- [Using Serialized GTIRB Data](../../PROTOBUF.md)
