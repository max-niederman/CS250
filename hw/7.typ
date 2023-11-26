#import "../lib.typ": *

#show: homework.with(title: "CS 250 Homework #7")

= Probability

== 1

1. There are three independent coinflips, each with two possible outcomes; therefore there are $2^3 = 8$ outcomes in the sample space.
2. The event that there is 1 head and 2 tails is ${"HTT", "THT", "TTH"}$ with cardinality 3. Each outcome is equiprobable, so the probability of this event is $3/8$.
3. The event that every coin comes up tails is ${"TTT"}$ with cardinality 1. Each outcome is equiprobable, so the probability of this event is $1/8$.
4. "No coins come up heads" is logically equivalent to "every coin comes up tails", so the probability of this event is also $1/8$.
5. There is no intersection between getting all heads and getting all tails, so the probability of getting either is the sum of their probabilities, $1/8 + 1/8 = 1/4$. (The probability of HHH is also $1/8$ by symmetry because the coin is fair.)
6. As mentioned in the previous question, there is no intersection between the events, so the probability of their intersection is zero.

== 2

7. There are two independent rolls, each with six possible outcomes; therefore there are $6^2 = 36$ outcomes in the sample space.
8. The event of "snake eyes" is ${"11"}$ with cardinality one. Each outcome is equiprobable, so the probability of this event is $1/36$.
9. The event of "doubles" is ${"11", "22", "33", "44", "55", "66"}$ with cardinality six. Each outcome is equiprobable, so the probability of this event is $6/36 = 1/6$.
10. The probability of getting one on neither roll is $(5/36)^2$, so the probability of getting one on at least one roll is its complement, $1 - (5/36)^2$.
11. The event of "sum of 7" is ${"16", "25", "34", "43", "52", "61"}$ with cardinality six. Each outcome is equiprobable, so the probability of this event is $6/36 = 1/6$.
12. The event of getting two consecutive numbers is ${"12", "23", "34", "45", "56"}$ with cardinality five. Each outcome is equiprobable, so the probability of this event is $5/36$.
13. The event of getting a total greater than 10 is ${"55", "56", "65", "66"}$ with cardinality four. Each outcome is equiprobable, so the probability of this event is $4/36 = 1/9$.
14. Getting an odd total is logically equivalent to getting dice with different parities, which is the negation of getting dice with the same parity. The probability of getting dice with the same parity is $1/2$, so the probability of getting dice with different parities is $1 - 1/2 = 1/2$.

== 3

#[
    #set enum(numbering: "a.")

    + $P(not E_2) = 1 - P(E_2) = 1 - 0.45 = 0.55$
    + $P(E_1 union E_2) = P(E_1) + P(E_2) - P(E_1 sect E_2) = 0.37 + 0.45 - 0.14 = 0.68$.
    + This event is the complement of $E_1 union E_2$, so its probability is $1 - 0.68 = 0.32$.
]

== 4

#[
    #set enum(numbering: "a.")

    + By the addition principle, $P(E_1) = P(1) + P(3) + P(5) = 0.2 + 0.1 + 0.3 = 0.6$.
    + By the addition principle, $P(E_2) = P(3) + P(6) = 0.1 + 0.15 = 0.25$.
    + $E_3 = {4, 5, 6}$, so by the addition principle, $P(E_3) = P(4) + P(5) + P(6) = 0.2 + 0.3 + 0.15 = 0.65$.
    + $E_2 sect E_3$ contains only the outcome 6, so $P(E_2 sect E_3) = P(6) = 0.15$.
    + $E_1 union E_3$ consists of outcomes 1, 3, 4, 5, and 6, so by the addition principle, $P(E_1 union E_3) = P(1) + P(3) + P(4) + P(5) + P(6) = 0.2 + 0.1 + 0.2 + 0.3 + 0.15 = 0.95$.
]

== 5

Let $S$ be the event that the student plays one or more sports and $G$ be the event that the student graduates.

We are given that $P(S) = 0.72$ and $P(S sect G) = 0.67$,
and asked to find $P(G | S)$.

By the definition of conditional probability, $P(G | S) = P(S sect G) / P(S)$, so
$ P(G | S) = 0.67/0.72 approx #calc.round(digits: 2, 0.67/0.72)$.

= Relations

== 1

#[
    #set enum(numbering: "a.")

    + Many-to-many
    + Many-to-one
    + One-to-one
    + One-to-many
]

== 2

#let rrho = $class("relation", rho)$
#let rsigma = $class("relation", sigma)$

#[
    #set enum(numbering: "a.")

    + $rho union sigma$ is satisfied by $(2, 6)$ and $(3, 17)$, but not by $(2, 1)$. It is satisfied by $(0, 0)$ iff $0 divides 0$, which depends on the exact definition of divisibility being used.
    + $rho sect sigma$ is satisfied by $(2, 12)$ because $2 rrho 12 and 2 rsigma 12$, but not by $(3, 6)$ or $(1, 2)$ because neither satisfy $sigma$.
    + None of the pairs satisfy $rho'$, b ecause in each case the first element divides the second.
    + The relation $sigma'$ is satisfied by $(1, 1)$ and $(4, 8)$ but not by $(2, 10)$ because $5(2) <= 10$.
]

== 3

#[
    #set enum(numbering: "a.")

    + $rho sect sigma$ is the relation "lives and works in".
    + $rho union sigma$ is the relation "lives and/or works in".
    + $rho sect sigma'$ is the relation "lives but doesn't work in".
    + $rho' union sigma$ is the relation "works but doesn't live in".
]

== 4

#[
    #set enum(numbering: "a.")

    + $rho$ is reflexive, neither symmetric nor antisymmetric, and not transitive.
    + $rho$ is reflexive, symmetric, antisymmetric, and transitive.
    + $rho$ is not transitive, symmetric, antisymmetric, or reflexive.
    + $rho$ is transitive and antisymmetric but not symmetric or reflexive.
]

== 5

#[
    #set enum(numbering: "a.")

    + $rho$ is reflexive and antisymmetric, but not symmetric or transitive.
    + $rho$ is symmetric and transitive, but not reflexive or antisymmetric.
    + $rho$ is symmetric and transitive, but not reflexive or antisymmetric.
    + $rho$ is reflexive, symmetric, and transitive, but not antisymmetric.
    + $rho$ is symmetric, transitive, and antisymmetric, but not reflexive.
]

== 6

#[
    #set enum(numbering: "a.")

    + Yes to both.

      By definition, $rho, sigma supset.eq { (s, s) | s in S }$, so their union and intersection are also supersets of this set, and therefore reflexive.
    + Yes to both.

      In the case of $rho union sigma$, if we choose $(a, b) in rho union sigma$, then either $(a, b) in rho$ or $(a, b) in sigma$. In either case, because $rho$ and $sigma$ are symmetric, $(b, a) in rho$ or $(b, a) in sigma$, so $(b, a) in rho union sigma$.

      For $rho sect sigma$, if we choose $(a, b) in rho sect sigma$, then $(a, b) in rho$ and $(a, b) in sigma$. Because $rho$ and $sigma$ are symmetric, $(b, a) in rho$ and $(b, a) in sigma$, so $(b, a) in rho sect sigma$.
    + $rho sect sigma$ is antisymmetric, but $rho union sigma$ is not necessarily.

      For $rho sect sigma$, if we take $a, b in S$ such that $(a, b), (b, a) in rho sect sigma$, then $(a, b), (b, a) in rho$. Because $rho$ is antisymmetric, $a = b$.

      A counterexample for $rho union sigma$ is $S = {1, 2}$, $rho = {(1, 2)}$, and $sigma = {(2, 1)}$. Then $(1, 2), (2, 1) in rho union sigma$, but $1 != 2$.
    + $rho sect sigma$ is transitive, but $rho union sigma$ is not necessarily.

      For $rho sect sigma$, if we take $a, b, c in S$ such that $(a, b), (b, c) in rho sect sigma$, then $(a, b), (b, c) in rho$ and $(a, b), (b, c) in sigma$. Because $rho$ and $sigma$ are transitive, $(a, c) in rho$ and $(a, c) in sigma$, so $(a, c) in rho sect sigma$.

      A counterexample for $rho union sigma$ is $S = {1, 2}$, $rho = {(1, 2)}$, and $sigma = {(2, 1)}$. Then $(1, 2), (2, 1) in rho union sigma$, but $(1, 1) in.not rho union sigma$.
]

== 7

#[
    #set enum(numbering: "a.")

    + $rho$ is its own reflexive closure. Its symmetric closure is $rho union {(3, 2), (2, 1)}$ and its transitive closure is $rho union {(3, 2), (2, 1)}$.
    + $rho$ is its own reflexive, symmetric, and transitive closure.
    + The reflexive closure of $rho$ is $rho union {(2, 2), (3, 3)}$, its symmetric closure is $rho union {(2, 1), (3, 2)}$, and its transitive closure is $rho union {(2, 1), (3, 2)}$.
    + $rho$ is its own transitive closure. Its reflexive closure is $rho union {(2, 2), (3, 3)}$ and its symmetric closure is $rho union {(2, 1), (3, 2), (3, 1)}$.
]

== 8

#[
    #set enum(numbering: "a.")

    + $rho$ is its own reflexive closure. Its symmetric closure is $rho union {(1, 0), (2, 1), (4, 2), (6, 4)}$ and its transitive closure is $rho union {(0, 2), (1, 4), (2, 6), (0, 4), (0, 6), (1, 6)}$.
    + The reflexive closure of $rho$ is $rho union {(0, 0), (1, 1), (2, 2), (4, 4), (6, 6)}$, its symmetric closure is itself, and its transitive closure is $rho union {(0, 0), (1, 1), (2, 2), (4, 4), (6, 6), (2, 6), (6, 2)}$.
    + The reflexive closure of $rho$ is $rho union {(4, 4), (6, 6)}$, and it is its own symmetric and transitive closure.
    + $rho$ is its own reflexive, symmetric, and transitive closure.
    + $rho$ is its own symmetric and transitive closure. Its reflexive closure is ${(0, 0), (1, 1), (2, 2), (4, 4), (6, 6)}$.
]

= Functions

== 1

#[
    #set enum(numbering: "a.")

    + $f(S) = {3, 7}$
    + $f(S) = {1, 3}$
    + $f(S) = {2, 1, 0}$
]

== 2

#[
    #set enum(numbering: "a.")

    + False. All function bring all elements of their domain to an image, but not all functions are surjective.
    + False. Take the function $f : NN -> NN = n |-> 1$. Every element in the codomain, $NN$, has an image under $f$, but $f$ is not surjective because $NN != {1}$.
    + True. If every element in the codomain has a preimage under $f$, then by unioning the images of all the preimages, we get that the range is superset of the codomain. The range is a subset of the codomain by definition, so the range is equal to the codomain and $f$ is surjective by definition.
    + True. Assume that such a function $f$ does exist. By the pigeonhole principle, at least one element in $f$'s codomain has more than one preimage, violating the assumption that $f$ is injective.
]

== 3

#[
    #set enum(numbering: "a.")

    + Not a function from $S$ to $T$.
    + A function from $S$ to $T$. Neither one-to-one nor onto.
    + A function from $S$ to $T$. One-to-one and onto.
    + Not a function from $S$ to $T$.
    + Not a function from $S$ to $T$.
]

== 4

#[
    #set enum(numbering: "a.")

    + This is not a function because some U.S. citizens either do not have middle initials or have middle initials beginning with characters not in any alphabet (e.g. ideograms or syllabograms).
    + This is a function because every person has exactly one birthday. It is onto but not one-to-one because people have been born on every day and multiple people can the same birthday.
    + This is not a function because not all U.S. citizens have social security numbers.
]