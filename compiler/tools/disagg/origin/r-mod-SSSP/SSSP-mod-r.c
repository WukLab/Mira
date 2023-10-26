#include "util-mod-r.h"
#include <stdio.h>
#include <float.h>

#define at(G, r, c) (G[r * (MAX_V) + c])
#define min_d(x, y) ((x) < (y) ? (x) : (y))
#define max_d(x, y) ((x) > (y) ? (x) : (y))

static const double MAX_D = DBL_MAX;

void dijkstra(Graph* graph, int src, double *solution)
{
  MinHeap *heap = init_min_heap(graph->V);
  for (int vid = 0; vid < graph->V; ++vid)
  {
    solution[vid] = MAX_D;
    heap->array[vid] = (MinHeapNode){ vid, solution[vid] };
    heap->pos[vid] = vid;
  }
  heap->size = graph->V;
  printf("After heap init\n");
  for (int r = parent_idx(heap->size - 1); r > -1; --r) heapify(heap, r);
  printf("After heapify\n");

  solution[src] = 0.0;
  decrease_key(heap, src, 0.0);
  int success;
  while (!is_heap_empty(heap))
  {
    MinHeapNode min_node = extract_min(heap, &success);
    if (!success) break;
    int t= min_node.v;
    // traverse neighbours
    if (solution[t] >= MAX_D) break;
    for (int i = 0; i < graph->l[t].length; ++ i)
    {
      __int128_t token = cache_request((uint64_t) &(graph->l[t].neighbours[i]));
      GraphNode cur = *(GraphNode *) cache_access(&token);

      int nid = cur.dest;
      if (heap_contains(heap, nid))
      {
        solution[nid] = min_d(solution[nid], cur.w + solution[t]);
        decrease_key(heap, nid, solution[nid]);
      }
    }
  }
}

int main(int argc, char const *argv[])
{
    /* disagg env init */
  init_device();
  init_bufs();
  cache_init();
  cache_create((uint64_t) 4 << 20, 64 * sizeof(GraphNode));

  int total_v = 0;
  int redundant_data = atoi(argv[2]);
  int need_fake = atoi(argv[3]);

  Graph *g = init_graph(redundant_data, need_fake, argv[1], &total_v);
  // inspect_graph(g);

  double *solution = malloc(sizeof(*solution) * g->V);
  dijkstra(g, 0, solution);

  shutdown_device();
  FILE *out = fopen("solution.txt", "w");
  for (int i = 0; i < total_v; ++ i)
  {
    // printf("%d - %d\n", i, total_v);
    fprintf(out, "%lf\n", solution[i]);
  }
  fclose(out);

  return 0;
}
