#import "../lib.typ": *
#import "@preview/diagraph:0.1.0"

#show raw.where(lang: "graphviz"): it => diagraph.raw-render(
    engine: "neato",
    it
)

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

#figure(
    caption: "Graph 1",
)[
    ```graphviz
    graph test {
        1 -- 2
        1 -- 3
        2 -- 3
    }
    ```
]