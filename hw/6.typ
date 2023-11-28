#import "../lib.typ": *

#show: homework.with(title: "CS 250 Homework #6")

= Counting

== 1

By the multiplication principle,
there are $ 4^20 dot 5^10$

== 2

By the multiplication principle,
there are $26^3 dot 10^2$.

== 3

There are $2 dot 4 + 4 dot 2 = 16$

== 4

No, there are only $10^2 = 100$ possible combinations.

== 5

The first digit must be 2 or 4, so

$ 2 dot 4 dot 4 = 32 $

= Inclusion and Exclusion


== 1


$ (35 + 18) - 42 = #{35 + 18 - 42} $

So ten people.

== 2

*skipped*

== 3

*skipped*

== 4

*skipped*

== 5

*skipped*

= Permutations and Combinations

14
21
24
25
26

== 1

There are an odd number of men, so they must be at the ends and they must alternate. Therefore, the number of permutations is

$ 11! dot 8! $

== 2

By the multiplication principle and the binomial formula,

$
binom(17, 5) dot binom(23, 7)
= 17!/(5!12!) dot 23!/(7!16!)
$

== 3

First we choose two members from manufacturing,
then we multiply by the possible ways to choose four from out of manufacturing:

$
binom(14, 2) dot binom(7 + 4 + 5 + 2 + 3, 4)
$

== 4

First choose one of the two accountants,
then multiply by the possible ways to choose the others:

$
2 dot binom(7 + 14 + 4 + 5 + 3, 5)
$

== 5

There are $ binom(7 + 4  5 + 2 + 3, 6) $
ways to choose committees with zero manufacturing members,
and $ 14 dot binom(7 + 4 + 5 + 2 + 3, 5) $
ways to choose committees with one manufacturing member.

Subtracting from the total number of committees gives

$
binom(7 + 14 + 4 + 5 + 2 + 3, 6) - binom(7 + 4 + 5 + 2 + 3, 6) - 14 dot binom(7 + 4 + 5 + 2 + 3, 5)
$