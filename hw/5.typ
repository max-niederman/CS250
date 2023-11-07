#import "../lib.typ": *

#show: homework.with(title: "CS 250 Homework #5")

#set math.vec(delim: "[")
#set math.mat(delim: "[")

= Sets

== 1

We'll first convert the sets to a normal form for comparison:

+ ${5}$
+ ${-24, -12, -8, -6, -4, -3, -2, -1, 1, 2, 3, 4, 6, 8, 12, 24}$
+ ${1, 2, 3, 4}$
+ ${5, 8, 13}$
+ ${1, 2, 3, 4}$
+ $emptyset$
+ ${1, 2, 3, 4, 6, 8, 12, 24}$
+ ${1, 2, 3, 4}$

Two of these are duplicates,
so there are six distinct sets.

== 2

#[
    #set enum(numbering: "a.")

    + $|S| = 2$
    + $|S| = 2$
    + $|S| = 1$
    + $|S| = 3$
    + $|S| = 3$
]

== 3

#[
    #set enum(numbering: "a.")

    + False.
    + True.
    + False.
    + True.
    + True.
    + True.
]

== 4

#[
    #set enum(numbering: "a.")

    + True.
    + True.
    + False; $emptyset in C$ but $emptyset in.not A$.
    + True.
    + True.
    + False; $A$ contains $a$, ${a}$, and ${{a}}$, but not ${a, {a}}$.
    + True.
    + False; $a in B$ but $a in.not C$.
    + True.
]

== 5

$
S = {& a, b } \
cal(P)(S) = {& emptyset, {a}, {b}, {a, b} } \
cal(P)(cal(P)(S)) = {
    &emptyset, \
    &{emptyset}, \
    &{{a}}, \
    &{emptyset, {a}}, \
    &{{b}}, \
    &{emptyset, {b}}, \
    &{{a}, {b}}, \
    &{emptyset, {a}, {b}}, \
    &{{a, b}}, \
    &{emptyset, {a, b}}, \
    &{{a}, {a, b}}, \
    &{emptyset, {a}, {a, b}}, \
    &{{b}, {a, b}}, \
    &{emptyset, {b}, {a, b}}, \
    &{{a}, {b}, {a, b}}, \
    &{emptyset, {a}, {b}, {a, b}}
}
$

= Binary and Unary Operation

== 1

#[
    #set enum(numbering: "a.")

    + $ x &= 1 \ y &= 5 $
    + $ x &= 8 \ y &= 7 $
    + $
        mat(
            2, -1;
            1, 1;
        ) vec(x, y) &= vec(-2, 5) \
        mat(
            3, 0;
            1, 1;
        ) vec(x, y) &= vec(-2, 5) \
        mat(
            1, 0;
            0, 1;
        ) vec(x, y) &= vec(-2/3, 13/3) \
        x &= -2/3 \ y &= 13/3
    $
]

== 2

#[
    #set enum(numbering: "a.")

    + This is a binary operation on $NN$.
    + This is a binary operation on $NN$.
    + This is a binary operation on $ZZ$.
    + This is not a closed unary operation on $RR$, because $ln 0 in.not RR$.
]

== 3


#[
    #set enum(numbering: "a.")

    + This is a unary operation on $ZZ$.
    + This is not a binary operation on ${1, 2, 3}$, because $3 circle.tiny 3 = 5 in.not {1, 2, 3}$.
    + This is a binary operation on $QQ$ assuming that the denominator refers to the denominator of the simplest fraction, or on $ZZ^2$ where the first element is the numerator and the second the denominator.
    + This is a binary operation on any set of ten people *with different names*.
]

== 4

#[
    #set enum(numbering: "a.")

    + This is not a binary operation on $RR$ because it is undefined for $x = 0$.
    + This is a closed binary operation on ${p, q, r} ast.basic$.
    + This is a unary operation on $RR$.
    + This is a closed binary operation on $NN$.
]

== 5

#[
    #set enum(numbering: "a.")

    + This is a binary operation on $NN$.
    + This is not a closed binary operation on the set of Fibonacci numbers;
        $1$ and $3$ are Fibonacci numbers, but $1 circle.tiny 3 = 4$ is not.
    + This is a unary operation on ${p, q, r} ast.basic$.
    + This is not a closed binary operation on $RR - QQ$;
        $sqrt(2)$ and $1 - sqrt(2)$ are in $RR - QQ$, but $sqrt(2) circle.tiny (1 - sqrt(2)) = 1 in.not RR - QQ$.
]