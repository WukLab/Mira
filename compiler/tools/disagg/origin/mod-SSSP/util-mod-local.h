#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define MAX_V 2000000
#define NO_EDGE 0.0
#define MAX_NS 16

typedef struct GraphNode
{
  int dest;
  float w;
} GraphNode;

typedef struct AdjList
{
  // pointer to the head of the list
  struct GraphNode neighbours[MAX_NS];
  int length;
} AdjList;

typedef struct Graph
{
  struct AdjList l[MAX_V];
  int V;
} Graph;

// need to call twice if the given data is undirected
void add_edge(struct Graph *g, int s, int t, float w)
{
  if (g->l[s].length >= MAX_NS) {
    printf("Too many neighbours for node %d\n", s);
    exit(1);
  }
  g->l[s].neighbours[g->l[s].length].dest = t;
  g->l[s].neighbours[g->l[s].length++].w = w;
}

struct Graph* init_graph(uint8_t redundant, uint8_t need_fake, const char *fpath, int *total_v)
{
  struct Graph *g = malloc(sizeof(*g));
  for (int i = 0; i < MAX_V; ++ i)
  {
    g->l[i].length = 0;
    // g->l[i].neighbours = malloc(sizeof(GraphNode) * MAX_NS);
  }

  FILE *fptr = fopen(fpath, "r");
  // read from file
  if (fptr == NULL)
  {
    printf("Couldn't open file %s\n", fpath);
    exit(1);
  }
  int eid, sid, tid, vid_max;
  eid = sid = tid = 0;
  int prev_sid = -1;
  int inter = 0;
  vid_max = -1;
  float w;

  while(1)
  {
    if (!need_fake) 
    {
      // iss >> eid >> sid >> tid >> w;
      if (fscanf(fptr, "%d %d %d %f\n", &eid, &sid, &tid, &w) == EOF) break;
    }
    else
    {
      // iss >> sid >> tid;
      if (fscanf(fptr, "%d %d\n", &sid, &tid) == EOF) break;
      eid ++;
      inter = (prev_sid == sid) ? inter + 1 : 0;
      w = (++inter) / (float)100;
    }
    if (sid < MAX_V && tid < MAX_V)
    {
      // if (sid < 10) cout << line << endl;
      // printf("%d %d\n", sid, tid);
      add_edge(g, sid, tid, w);
      vid_max = (vid_max > sid) ? vid_max : sid;

      if (!redundant) 
      {
        add_edge(g, tid, sid, w);
        vid_max = (vid_max > tid) ? vid_max : tid;
      } 
    }
  }
  fclose(fptr);
  g->V = vid_max + 1;
  *total_v = vid_max + 1;

  return g;
}

void inspect_graph(Graph *g)
{
  for (int i = 0; i < g->V; ++ i)
  {
    printf("--- %d : neighbours ---\n", i);
    for (int j = 0; j < g->l[i].length; ++ j)
    {
      GraphNode cur = g->l[i].neighbours[j];
      // line_header *lh = (line_header *)(uintptr_t)(t.head_addr);
      printf("%d %f\n", cur.dest, cur.w);
    }
  }
}

typedef struct MinHeapNode
{
  int v;
  float dist;
} MinHeapNode;

#define heap_last(heap) (heap->array[heap->size - 1])
#define heap_idx(heap,idx) ((heap)->array[(idx)])
#define parent_idx(i) ((i-1) / 2)
#define left_child(i) ((i << 1) + 1)
#define right_child(i) ((i << 1) + 2)
#define is_heap_empty(heap) ((heap)->size == 0)
#define heap_contains(heap, v) ((heap)->pos[(v)] < (heap)->size)

typedef struct MinHeap
{
  struct MinHeapNode *array;
  int size;
  int capacity;
  int *pos;
} MinHeap;

struct MinHeap *init_min_heap(int capacity)
{
  MinHeap *heap = malloc(sizeof(*heap));
  heap->pos = malloc(sizeof(int) * capacity);
  heap->size = 0;
  heap->capacity = capacity;
  heap->array = malloc(sizeof(MinHeapNode) * capacity);
  return heap;
}

void swap_heap_node(MinHeapNode *a, MinHeapNode *b)
{
  MinHeapNode t = *a;
  *a = *b;
  *b = t;
}

void heapify(MinHeap *heap, int idx)
{
  int min, left, right;
  min = idx;
  left = left_child(idx);
  right = right_child(idx);

  if (left < heap->size && heap->array[left].dist < heap->array[min].dist)
    min = left;
  if (right < heap->size && heap->array[right].dist < heap->array[min].dist)
    min = right;
  
  if (min != idx)
  {
    MinHeapNode min_node = heap->array[min];
    MinHeapNode idx_node = heap->array[idx];

    heap->pos[min_node.v] = idx;
    heap->pos[idx_node.v] = min;

    swap_heap_node(&heap->array[min], &heap->array[idx]);
    heapify(heap, min);
  }
}

MinHeapNode extract_min(MinHeap *heap, int *success)
{
  if (is_heap_empty(heap)) {
    *success = 0;
    return (MinHeapNode){ 0 };
  } 
  MinHeapNode root = heap->array[0];

  // replace with last node
  MinHeapNode last = heap_last(heap);
  heap->array[0] = last;

  // update position of last node
  heap->pos[root.v] = heap->size - 1;
  heap->pos[last.v] = 0;

  // heapify
  heap->size --;
  heapify(heap, 0);
  *success = 1;
  return root;
}

// reset dist value of a given vertex
void decrease_key(MinHeap *heap, int v, float dist)
{
  int i = heap->pos[v];
  heap->array[i].dist = dist;

  while (i && heap->array[i].dist < heap->array[parent_idx(i)].dist)
  {
    heap->pos[heap->array[i].v] = parent_idx(i);
    heap->pos[heap->array[parent_idx(i)].v] = i;
    swap_heap_node(&heap->array[i], &heap->array[parent_idx(i)]);
    i = parent_idx(i);
  }
}