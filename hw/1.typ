#import "../lib.typ": *
#import "@preview/diagraph:0.1.0"

#show: homework.with(title: "CS 250 Homework #1")

= Logarithms

== 1

+ $ x = 2 $
+ $ x = 0 $
+ $ x = (log_2 4) / (log_2 16) = 2 / 4 = 1 / 2 $
+ $ x = - log_2 8 = -3 $
+   $
    log_5 x &= 5 \ 
    x &= 5^5 \
    &= #calc.pow(5, 5)
    $
+ $ x = 3 $
+ $ x = -1 $
+ $ x = log_7 (7^3) = 3 $
+   $
    log_x 32 &= 5 \
    x^5 &= 32 \
    x &= #calc.pow(32, 1/5)
    $
+   $
    log_x (2^10) &= 10 \
    x &= 2
    $

== 2

+   $
    &  log_2 x^2 y \
    =& log_2 x^2 + &log_2 y \
    =& 2 log_2 x + &log_2 y
    $
+   $
    &  log_2 (x^3 y^2) / z \
    =& log_2 x^3 + log_2 y^2 - &log_2 z \
    =& 3 log_2 x + 2 log_2 y - &log_2 z
    $
+   $
    &  log_2 x y z \
    =& log_2 x + log_2 y + log_2 z
    $
+   $
    & log_2 (x / y)^2 \
    =& 2 log_2 (x / y) \
    =& 2 (log_2 x - log_2 y) \
    =& 2 log_2 x - 2 log_2 y
    $
+   $
    & log_2 root(3, x y) \
    =& 1/3 log_2 x y \
    =& 1/3 (log_2 x + log_2 y) \
    =& 1/3 log_2 x + 1/3 log_2 y
    $

== 3

+ $ 3^4 = 81 $
+ $ 7^1 = 7 $
+ $ (1/2)^3 = 1/8 $
+ $ 3^0 = 1 $
+ $ 4^(-3) = 1/64 $

== 4

+ $ log_8 64 = 2 $
+ $ log_10 1000 = 3 $
+ $ log_4 1/16 = -2 $
+ $ log_3 1/81 = -4 $
+ $ log_(1/2) 32 = -5 $

= Graphs

== 1

$g$ must satisfy:

$
g(a) = (1, 2) \
g(b) = (1, 3) \
g(c) = (2, 3) \
g(d) = (2, 2)
$

Any function that satisfies these conditions could be _the_ function, but the simplest one is the one defined only on $a$, $b$, $c$, and $d$.

== 2

#[
    #set enum(numbering: "a.")

    + The graph is simple because it does not have any loops or parallel arcs.
    + The graph is not complete because not all nodes are adjacent.
    + The graph is connected because there is a path between every pair of nodes.
    + $3, a_5, 5, a_6, 6$ and $3, a_3, 4, a_4, 5, a_6, 6$ are two distinct paths between $3$ and $6$.
    + Yes, $3, a_3, 4, a_4, 5, a_5, 3$ is a cycle.
    + Removing $a_3$, $a_4$, or $a_5$ would make the graph acyclic.
    + Removing $a_6$ would make the graph disconnected.
]

== 3

#grid(
    columns: 3,
    figure(
        diagraph.raw-render(
            engine: "neato",
            height: 2in,
        )[```dot
            graph test {
                mode = "major"

                node [shape = "circle"]

                1 -- 2
                1 -- 3
                2 -- 3
            }
        ```],
        caption: [A simple graph with three nodes of degree two.],
    ),
    figure(
        diagraph.raw-render(
            engine: "neato",
            height: 2in,
        )[```dot
            graph test {
                mode = "sgd"

                node [shape = "circle"]

                1 -- 1

                1 -- 2
                2 -- 1

                2 -- 3
                3 -- 1

                3 -- 4
                4 -- 1
            }
        ```],
        caption: [A graph with four nodes and cycles of length $1$ through $4$.]
    ),
    figure(
        diagraph.raw-render(
            engine: "neato",
            height: 2in,
        )[```dot
            graph test {
                mode = "sgd"

                node [shape = "circle"]

                1 -- 1
                2 -- 2
                1 -- 2
                1 -- 2

                3 -- 3
                4 -- 4
                3 -- 4
                3 -- 4
            }
        ```],
        caption: [A noncomplete graph of four nodes, each having degree four.],
    )
)

== 4

#[
    #set enum(numbering: "a.")

    + Nodes $3$, $4$, $5$, and $6$ are reachable from node $3$.
    + The shortest path from $3$ to $6$ has length $2$.
    + One such path is: $ 1, 2, 2, 2, 2, 2, 2, 1, 6 $
]

== 5

Carl and Fletcher are not acquainted.

SiuYin is acquainted with just one person, Carl.

The degree of seperation between Carl and Yuri is $2$,
with the shortest path being through Moku.

= Trees

== 1

The graphs in a, c, and d are trees.
They are drawn as conventional trees below.

The graph in b is not a tree because it contains a cycle.

#grid(
    columns: 3,
    gutter: 4pt,
    figure(
        diagraph.raw-render(
            engine: "dot",
            height: 1.5in,
        )[```dot
            graph test {
                node [shape = "circle", label = "", height = 0.1]

                r [xlabel = "r"]

                r -- 1
                1 -- 2
                2 -- 3
            }
        ```],
        caption: [A conventional drawing of the tree in Exercise 6.2.1 (a).]
    ),
    figure(
        diagraph.raw-render(
            engine: "dot",
            height: 1.5in,
        )[```dot
            graph test {
                node [shape = "circle", label = "", height = 0.1]

                r [xlabel = "r"]

                r -- 1
                r -- 2
                r -- 3
                r -- 4
                r -- 5
                r -- 6
            }
        ```],
        caption: [A conventional drawing of the tree in Exercise 6.2.1 (c).]
    ),
    figure(
        diagraph.raw-render(
            engine: "dot",
            height: 1.5in,
        )[```dot
            graph test {
                node [shape = "circle", label = "", height = 0.1]

                r [xlabel = "r"]

                r -- 10
                r -- 11
                
                10 -- 20
                10 -- 21
                11 -- 22
                11 -- 23

                20 -- 30
                23 -- 31
            }
        ```],
        caption: [A conventional drawing of the tree in Exercise 6.2.1 (d).]
    ),
)

== 2

The graph in b is not a binary tree because it contains a cycle and is therefore not any kind of tree.

The graph in c is a tree, but it is not a binary tree because the root node has four children.

The graphs in a and d are binary trees.

== 3

#[
    #set enum(numbering: "a.")

    + Yes, it is a binary tree.
    + Yes, it is a full binary tree because every node has either zero or two children.
    + Yes, it is a complete binary tree because every level is full except for the last one.
    + The parent of $e$ is $b$.
    + $e$ has no right child.
    + $g$ has depth $2$.
    + The height of three is $3$.
]

== 4

Preorder: $a, b, d, e, h, f, c, g$

Inorder: $d, b, h, e, f, a, g, c$

Postorder: $d, h, e, f, b, g, c, a$

== 5

Preorder: $a, b, d, g, e, c, f, h$

Inorder: $g, d, b, e, a, h, f, c$

Postorder: $g, d, e, b, h, f, c, a$

== 6

Preorder: $a, b, e, c, f, j, g, d, h, i$

Inorder: $e, b, a, j, f, c, g, h, d, i$

Postorder: $e, b, j, f, g, c, h, i, d$

== 7

Preorder: $a, b, e, f, c, g, h, d, i$

Inorder: $e, b, f, a, g, c, h, i, d$

Postorder: $e, f, b, g, h, c, i, d, a$