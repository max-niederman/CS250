#import "../lib.typ": *

#show: homework.with(title: "CS 250 Homework #2")

= Formal Logic

== 1

#[
    #set enum(numbering: "a.")

    + Yes
    + No, because "he" is ambiguous
    + Yes
    + No, because "the game" is ambiguous
    + No, because "next year" is ambiguous
    + No, for the same reason
    + No, because $x$ is free
]

== 2

#[
    #set enum(numbering: "a.")

    + True
    + False
    + False
    + False
    + True
    + False
    + True
    + True
]

== 3

#[
    #set enum(numbering: "a.")

    I will use $T$ to denote a truth and $F$ to denote falsehood.

    + $A and (B or C) iff T and (F or T) iff T and T iff T$
    + $(A and B) or C iff F or T iff T$
    + $(A and B)' or C iff (A and B)' or T iff T$
    + $A' or (B' and C)' iff F or (T and T)' iff F or F iff F$
]

== 9

#[
    #set enum(numbering: "a.")

    + Answers 1 and 3, but not answer 2 are correct negations. This follows from De Morgan's laws.
    + Only answer 2 is correct, because the other answers miss the case where cucumbers are seedy but not green.
    + Only answer 4 is correct. This once again follows from De Morgan's laws.
]

== 11

#[
    #set enum(numbering: "a.")

    + The food is good and the service is not excellent.
    + The food is not good and the service is not excellent.
    + The food is not good or the service is not excellent, and the price is not high.
    + The food is good or the service is excellent.
    + The price is high, and the food is not good or the service is not excellent.
]


== 12

#[
    #set enum(numbering: "a.")

    + The processor is slow or the printer is fast.
    + The processor is slow and the printer is fast.
    + The processor is fast and the printer is fast.
    + The processor is slow or the printer is fast, and the file isn't damaged.
    + The file is not damaged and the processor is fast, but the printer is fast.
    + The printer is slow but the file is not damaged.
]

== 19

#[
    #set enum(numbering: "a.")

    + $H => K$
    + $K => (H and A)$
    + $K => H$
    + $K <=> A$
    + $(A or H) => K$
]

== 23

#[
    #let truthTable(formula, label: []) = {
        let fmtTruth(a) = if a { $T$ } else { $F$ }
        let row(a, b, c) = (a, b, c, formula(a, b, c)).map(fmtTruth)

        table(
            columns: (auto, auto, auto, auto),
            align: center,
            $A$, $B$, $C$, label,
            ..row(true, true, true),
            ..row(true, true, false),
            ..row(true, false, true),
            ..row(true, false, false),
            ..row(false, true, true),
            ..row(false, true, false),
            ..row(false, false, true),
            ..row(false, false, false)
        )
    }

    #let implies(a, b) = not a or b
    #let equivalent(a, b) = implies(a, b) and implies(b, a)

    #truthTable(
        (A, B, C) => equivalent(
            implies(A, B),
            not A or B,
        ),
        label: $(A => B) <=> A' or B$
    )
    #truthTable(
        (A, B, C) => implies(
            (A and B) or C,
            A and (B or C)
        ),
        label: $(A and B) or C => A and (B or C)$
    )
    #truthTable(
        (A, B, C) => A and not (not A or not B),
        label: $A and (A' or B')'$
    )
    #truthTable(
        (A, B, C) => implies(
            A and B,
            not A
        ),
        label: $A and B => A'$
    )
    #truthTable(
        (A, B, C) => implies(
            implies(A, B),
            implies(
                (A or C),
                (B or C)
            )
        ),
        label: $(A => B) => ((A or C) => (B or C))$
    )
]

