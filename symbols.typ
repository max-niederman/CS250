#import "./lib.typ": *

#show: common.with(title: "CS 250 Symbol Reference")

#table(
    columns: (auto, auto, 1fr, 1fr),
    [Symbol], [Example], [Name], [Read As],

    $'$, $Q'$, [negation], [not],
    $and$, $P and Q$, [conjunction], [and],
    $or$, $P or Q$, [disjunction], [or],
    $=>$, $P => Q$, [implication], [implies],
    $<=>$, $P <=> Q$, [equivalence], [if and only if],

    $forall$, $forall x in X, P(x)$, [universal quantifier], [for all],
    $exists$, $exists x in X, P(x)$, [existential quantifier], [there exists],

    $in$, $x in X$, [set membership], [in],
    $emptyset$, $emptyset$, [empty set], [the empty set],

    $union$, $X union Y$, [union], [union],
    $sect$, $X sect Y$, [intersection], [intersection],
    $union.big$, $union.big_(x in X) S(x)$, [infinite union], [union],
    $sect.big$, $sect.big_(x in X) S(x)$, [infinite intersection], [intersection],
    $times$, $X times Y$, [cartesian product], [cross],
    $-$, $X - Y$, [set difference], [minus],

    $subset.eq$, $X subset.eq Y$, [subset], [is a subset of],
    $supset.eq$, $X supset.eq Y$, [superset], [is a superset of],
    $subset$, $X subset Y$, [proper subset], [is a proper subset of],
    $supset$, $X supset Y$, [proper superset], [is a proper superset of],

    $log$, $log_b x$, [logarithm], [logarithm],
    $!$, $k!$, [factorial], [factorial],
)