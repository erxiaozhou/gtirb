file(REMOVE_RECURSE
  "AuxData.md"
  "AuxDataContainer.md"
  "Block.md"
  "ByteBlock.md"
  "ByteInterval.md"
  "CFG-Edges.md"
  "CFG.md"
  "CMakeFiles/general_doxyout"
  "COMPONENTS.md"
  "CONTRIBUTING.md"
  "CfgEdge.md"
  "CfgEdgeLabel.md"
  "CfgNode.md"
  "CodeBlock.md"
  "DataBlock.md"
  "FAQ.md"
  "IR.md"
  "Module.md"
  "Node.md"
  "PROTOBUF.md"
  "ProxyBlock.md"
  "README.md"
  "Section.md"
  "SymAddrAddr.md"
  "SymAddrConst.md"
  "SymStackConst.md"
  "Symbol.md"
  "SymbolicExpression.md"
  "Version.md"
  "binary-representation.md"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/general_doxyout.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
