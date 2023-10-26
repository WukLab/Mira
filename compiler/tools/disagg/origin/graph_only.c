#include "stdlib.h"
#include "stdio.h"
#include "string.h"

#define MAX_V 2000000
#define NO_EDGE 0.0
#define MAX_NS 16

typedef struct GraphNode
{
  double w;
  int dest;
} GraphNode;

typedef struct LinkedGraphNode 
{
  GraphNode *node;
  struct LinkedGraphNode *next;
} LinkedGraphNode;

typedef struct AdjList
{
  // pointer to the head of the list
  struct GraphNode* neighbours[MAX_NS];
  int length;
} AdjList;

typedef struct Graph
{
  struct AdjList *l;
  int V;
} Graph;

GraphNode *new_graph_node(int dest, double w)
{
  GraphNode *n = malloc(sizeof(*n));
  n->dest = dest;
  n->w = w;
  return n;
}

// need to call twice if the given data is undirected
void add_edge(struct Graph *g, int s, int t, double w)
{
  if (g->l[s].length >= MAX_NS) {
    printf("Too many neighbours for node %d\n", s);
    exit(1);
  }
  g->l[s].neighbours[g->l[s].length++] = new_graph_node(t, w);
}

void inspect_graph(Graph *g)
{
  for (int i = 0; i < g->V; ++ i)
  {
    printf("--- %d : neighbours ---\n", i);
    for (int j = 0; j < g->l[i].length; ++ j)
    {
      GraphNode *cur = g->l[i].neighbours[j];
      printf("%d %lf\n", cur->dest, cur->w);
    }
  }
}

int main(int argc, char **argv) {
  struct Graph *g = malloc(sizeof(*g));
  g->l = malloc(sizeof(struct AdjList) * MAX_V);
    for (int i = 0; i < MAX_V; ++ i)
  {
    g->l[i].length = 0;
  }
  add_edge(g, 0, 1, 0.5);
  return 0;
}