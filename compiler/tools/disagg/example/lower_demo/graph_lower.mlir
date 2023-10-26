llvm.mlir.global internal @SEdge = {#type = "direct", #line = 2M, ...}
llvm.mlir.global internal @SNode = {#type = "full", #line = 128B, ...}
%n_ahead = 4

// function args all local pointer
func.func @update_node(%arg0: struct<edge>, 
                       %arg1: struct<node>, %arg2: struct<node>)
// function arg0 remote pointer
func.func @trvs_graph_opt(%arg0: struct<edge>){
  scf.for %i <- %0 to %num_edges step %elements_per_line {
    // prefetch %n_ahead elements ahead from far memory
    %raddr = llvm.gepop %arg0[%i + %n_ahead]
    call @cache_request_ncond(@SEdge, %raddr)
    // wait for current requested data (at %i) to be in cache
    %waddr = llvm.gepop %arg0[%i]
    call @cache_poll(@SEdge, %waddr)
    // get corresponding phyiscal address (paddr) of cache line
    @wide_cache_line = call @cache_map_raddr_2_laddr(%waddr)

    scf.for %j = %c0 to %elements_per_line {
      // directly load element in (already resolved) cache line
      %1 = memref.load %wide_cache_line[%j]

      // use later element in the line to prefetch node elements
      %2 = memref.load %wide_cache_line[%j + %n_ahead_node]
      // node elements may be in cache already, fetch if not
      %rfrom = llvm.gepop %2[0, 'from']
      %rto = llvm.gepop %2[0, 'to']
      call @cache_request_cond(@SNode, %rfrom)
      call @cache_request_cond(@SNode, %rto)

      // wait for node elements to be in cache and access
      call @cache_poll(@SNode, %rfrom)
      %3 = call @cache_map_raddr_2_laddr(%rfrom) 
      call @cache_poll(@SNode, %rto)
      %4 = call @cache_map_raddr_2_laddr(%rto) 
      func.call @update_node (%1, %3, %4)
    }
    // flush used %i element for eviciton hint
    call @cache_flush(@SEdge, %waddr, @SEdge.line)
  }
}
