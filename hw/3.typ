#import "../lib.typ": *

#show: homework.with(title: "CS 250 Homework #3")

= Proof Techniques

== 1

#set enum(numbering: "a.")

+ An oblong rectangle is a geometric figure with four right angles, but not a square.
+ Zero is not positive, but neither is it negative.
+ Gunnar is a person with red hair, but neither is he tall nor does he have green eyes.
+ Philip is a person with red hair, but neither is he tall nor does he have green eyes.

== 2

+ $-1 | 1$ and $1 | -1$, but $-1 eq.not 1$.
+ $(-1)^2 = 1 > 0$, but $-1 <= 0$.
+ $0$ is an even number, but $0^2 + 1 = 1$ is not prime.
+ $6$ is a positive integer, but $6^3 <= 6!$.

== 3

Proof by exhaustion:

#table(
    columns: (auto, auto, auto, auto),
    $n$, $n^2$, $2^n$, $n^2 >= 2^n$,

    $2$, $4$, $4$, [True],
    $3$, $9$, $8$, [True],
    $4$, $16$, $16$, [True],
)

#sym.qed

== 4

Let $m$ and $n$ be two even integers, and write them as $2a$ and $2b$ for some integers $a$ and $b$. Then:

$
m + n
&= 2a + 2b \
&= 2(a + b)
$

So, by definition, $m + n$ is even.

#sym.qed

== 5

Let $m$ and $n$ be two even integers, and assume by contradiction that $m + n$ is odd.

By definition, $n = 2b$ and $m + n = 2k + 1$ for some integers $b$ and $k$. But then:

$
m + n
&= 2k + 1 \
m
&= 2k + 1 - n \
&= 2k + 1 - 2b \
&= 2(k - b) + 1
$

So $m$ is odd, which contradicts the assumption that $m$ is even.

Therefore, by contradiction, $m + n$ is even.

#sym.qed

== 6

Let $m$ be an odd integer and $n$ be an even integer,
with $m = 2a + 1$ and $n = 2b$ for some integers $a$ and $b$.

$
m + n &=
(2a + 1) + 2b \
&= 2a + 2b + 1 \
&= 2(a + b) + 1
$

So, by definition, $m + n$ is odd.

#sym.qed

== 7

Let $m$ be an odd integer and $n$ be an even integer,
with $m = 2a + 1$ and $n = 2b$ for some integers $a$ and $b$.

$
m - n &=
(2a + 1) - 2b \
&= 2a + 1 - 2b \
&= 2(a - b) + 1
$

So, by definition, $m - n$ is odd.

#sym.qed

== 8

Let $n$ be an even integer, with $n = 2a$ for some integer $a$.

$
n^2
&= (2a)^2 \
&= 4a^2 \
n^2 - 1 &=
4a^2 - 1 \
&= 4a^2 - 2 + 2 - 1 \
&= 2(2a^2 - 1) + 1
$

So, by definition, $n^2 - 1$ is odd.

#sym.qed

== 9

Let $n$ and $n + 1$ be two consecutive integers.

=== Case 1: $n$ is even.

Let $a$ be an integer such that $n = 2a$. Then:

$
n(n + 1)
&= 2a(n + 1)
&= 2(a(n + 1))
$

So, by definition, $n(n + 1)$ is even.

=== Case 2: $n$ is odd.

Let $a$ be an integer such that $n = 2a + 1$. Then:

$
n(n + 1)
&= (2a + 1)(2a + 1 + 1) \
&= (2a + 1)(2a + 2) \
&= 2((2a + 1)(a + 1))
$

So, by definition, $n(n + 1)$ is even.

#sym.qed

== 10

Let $n$ be an integer.

=== Case 1: $n$ is even.

Let $a$ be an integer such that $n = 2a$. Then:

$
n^2 + n
&= (2a)^2 + 2a \
&= 4a^2 + 2a \
&= 2(2a^2 + a)
$

So, by definition, $n^2 + n$ is even.

=== Case 2: $n$ is odd.

Let $a$ be an integer such that $n = 2a + 1$. Then:

$
n^2 + n
&= (2a + 1)^2 + 2a + 1 \
&= 4a^2 + 4a + 1 + 2a + 1 \
&= 4a^2 + 6a + 2 \
&= 2(2a^2 + 3a + 1)
$

So, by definition, $n^2 + n$ is even.

#sym.qed

== 11

Let $n$ be an integer.

$
3(n^2 + 2n + 3) - 2n^2
&= 3n^2 + 6n + 9 - 2n^2 \
&= n^2 + 6n + 9 \
&= (n + 3)^2
$

So, by definition, $3(n^2 + 2n + 3) - 2n^2$ is a perfect square.

#sym.qed

== 12

Let $x$ be an integer such that $x + 1$ is not positive. Then:

$
x + 1 &<= 0 \
x &<= -1 \
x &<= 0
$

So $x$ is not positive. Therefore, by contraposition, if $x$ is positive, then $x + 1$ is positive.

#sym.qed

== 13

Let $n$, $n + 1$, and $n + 2$ be three consecutive integers.

$
n + (n + 1) + (n + 2)
&= n + n + n + 1 + 2 \
&= 3n + 3 \
&= 3(n + 1)
$

The number $n + 1$ is an integer, so $3$ divides $n(n + 1)(n + 2)$ by definition.

#sym.qed

== 14

Let $n, m, p in ZZ$ such that $n divides m$ and $m divides| p$.

Then, by definition, there exist $a, b in ZZ$ such that $m = a n$ and $p = b m$. Therefore,

$
p
&= b m \
&= b (a n) \
&= (b a) n
$

The number $b a$ is an integer, so $n divides| p$ also.

#sym.qed

== 15

Let $n$ be an odd integer with $n = 2a + 1$ for some integer $a$.

=== Case 1: $a$ is even.

Let $b$ be an integer such that $a = 2b$. Then:

$
n^2
&= (2a + 1)^2 \
&= (2(2b) + 1)^2 \
&= (4b + 1)^2 \
&= 16b^2 + 8b + 1 \
&= 8(2b^2 + b) + 1
$

So there exists an integer $k$ such that $n^2 = 8k + 1$.

=== Case 2: $a$ is odd.

Let $b$ be an integer such that $a = 2b + 1$. Then:

$
n^2
&= (2a + 1)^2 \
&= (2(2b + 1) + 1)^2 \
&= (4b + 3)^2 \
&= 16b^2 + 24b + 9 \
&= 8(2b^2 + 3b + 1) + 1
$

So there exists an integer $k$ such that $n^2 = 8k + 1$.

#sym.qed

== 16

=== Part 1: $2 divides n => 2 divides.not n^3 + 13$

Let $n$ be an even integer with $n = 2a$ for some integer $a$. Then,

$
n^3 + 13
&= (2a)^3 + 13 \
&= 8a^3 + 13 \
&= 2(4a^3 + 6) + 1
$

So $n^3 + 13$ is odd.

=== Part 2: $2 divides.not n^3 + 13 => 2 divides n$

Let $n$ be an integer such that $n^3 + 13$ is odd, with $n^3 + 13 = 2a + 1$ for some integer $a$. Then,

$
n^3 + 13
&= 2a + 1 \
n^3
&= 2a + 1 - 13 \
&= 2a - 12 \
&= 2(a - 6)
$

So $n^3$ is even.

If we assume by contradiction that $n$ is odd, then $n = 2b + 1$ for some integer $b$. This implies that

$
n^3 &= (2b + 1)^3 \
&= 8b^3 + 12b^2 + 6b + 1 \
&= 2(4b^3 + 6b^2 + 3b) + 1
$

So, by contradiction, $n^3$ must be even.

=== Part 3: Equivalence

It follows from parts 1 and 2 that $n$ is even if and only if $n^3 + 13$ is odd.

#sym.qed