#import "../lib.typ": *

#show: lecture-notes.with(
    date: "2023-09-28",
    topic: "Graphs"
)

= Formal Definition of Graphs

A graph $G = (N, A, g)$ consists of a set of nodes $N$, a set of arcs $A$, and a function $g: A arrow {{n, n'} | n, n' in N}$ that maps each arc to the unordered pair of nodes it connects.

A directed graph (digraph) consists of a set of nodes $N$, a set of arcs $A$, and a function $g: A arrow N times N$ that maps each arc to the ordered pair of nodes it connects.

= Terminology

== Undirected

/ Adjacent: Two nodes are adjacent if an arc connects them.
/ Degree: The degree of a node is the number of arcs incident to it.
/ Isolated node: A node with degree $0$.
/ Loop: An arc that connects a node to itself.
/ Parallel arcs: Two or more arcs that connect the same two nodes.
/ Complete graph: A graph in which every pair of distinct nodes is adjacent.
/ Subgraph: A graph $G' = (N', A', g)$ is a subgraph of $G = (N, A, g)$ iff $N' subset.eq N$ and $A' subset.eq A$.
/ Path: A sequence $n_0, a_0, n_1, a_1, ..., n_(k-1), a_(k-1), n_k$ of alternating nodes and arcs such that $g(a_i) = {n_i, n_(i+1)}$ (or $(n_i, n_(i+1))$ for digraphs) for $0 <= i < k$. The *length* of a path is the number of arcs it contains, and a node $e$ is *reachable* from a node $s$ if there is a path from $s$ to $e$.
/ Cycle: A path connecting a node to itself which does not contain any other cycles.
/ Connected: A graph is connected if every node is reachable from every other node; i.e., if there is a path between every pair of nodes.

== Directed

/ In-degree: The number of arcs that terminate at a node.
/ Out-degree: The number of arcs that originate at a node.

= Notation

- The *degree* of a node $v$ is denoted by $d(v)$.
- The *in-degree* of a node $v$ is denoted by $d^-(v)$.
- The *out-degree* of a node $v$ is denoted by $d^+(v)$.

= Trees

A *tree* is a connected graph with no cycles,
and one node designated as the *root* of the tree.

The *height* of a tree is the length of the longest path from the root to a leaf.

A *forest* is an acyclic graph, but is not necessarily connected.
Forests are collections of trees, because each connected subgraph of a forest is a tree.

The *level* of a node in a tree is the length of the path from the root to that node.

/ Full binary tree: All internal nodes have two children and all leaves have the same level.
/ Complete binary tree: All levels are full except possibly the last, which is filled from left to right.

== Traversal

/ Pre-order: Visit the root, then recursively visit the left subtree, then recursively visit the right subtree.
/ In-order: Recursively visit the left subtree, then visit the root, then recursively visit the right subtree.
/ Post-order: Recursively visit the left subtree, then recursively visit the right subtree, then visit the root.