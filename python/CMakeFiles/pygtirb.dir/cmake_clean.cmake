file(REMOVE_RECURSE
  "AuxData_pb2.py"
  "ByteInterval_pb2.py"
  "CFG_pb2.py"
  "CMakeFiles/pygtirb"
  "CodeBlock_pb2.py"
  "DataBlock_pb2.py"
  "IR_pb2.py"
  "Module_pb2.py"
  "Offset_pb2.py"
  "ProxyBlock_pb2.py"
  "Section_pb2.py"
  "Symbol_pb2.py"
  "SymbolicExpression_pb2.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/pygtirb.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
