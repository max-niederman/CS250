#let implies = sym.arrow.r.double
#let iff = sym.arrow.r.l.double

#let common(title: "", subtitle: "", body) = {
    set document(
        author: "Max Niederman",
        title: title,
    )
    set page(
        numbering: (..nums) => "Niederman " + numbering("1/1", ..nums),
        number-align: center
    )

    set par(linebreaks: "optimized")

    // title
    if (title != "") {
        block(text(weight: 700, 1.75em, title))
    }

    // subtitle
    if (subtitle != "") {
        block(text(weight: 700, 1.25em, subtitle))
    }

    // author
    block(strong("Max Niederman"), below: 2em)

    body
}

#let homework(title: "", body) = {
    show heading: set block(below: 1em)
    common(title: title, body)
}

#let lecture-notes(date: "", topic: "", body) = {
    show heading: set block(below: 1em)
    show heading: set text(size: 0.85em)

    common(
        title: "CS 250 Lecture Notes",
        subtitle: date + ", on " + topic,
        body
    )
}