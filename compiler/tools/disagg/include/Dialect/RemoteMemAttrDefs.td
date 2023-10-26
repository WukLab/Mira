#ifndef REMOTE_MEM_ATTR_DEFS
#define REMOTE_MEM_ATTR_DEFS

include "mlir/IR/AttrTypeBase.td"
include "RemoteMemBase.td"

class RemoteMem_Attr<string name,
                     list<Traits> traits = []>
  : AttrDef<RemoteMem_Dialect, name, traits>;

#endif
