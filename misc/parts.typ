#let _part-counter = counter("thesis-part")

#let part(title, body) = {
  _part-counter.step()
  context {
    let key = "thesis-part-" + str(_part-counter.get().first())

    page(header: none)[
      #{
        show heading: none
        heading(level: 1, numbering: none, title)
      }
      #metadata(none)#label(key + "-start")

      #v(1fr)
      #align(center, text(size: 1.6em, weight: "bold", title))
      #v(1.5em)
      #outline(
        title: none,
        depth: 2,
        target: selector(heading).after(label(key + "-start")).before(label(key + "-end")),
      )
      #v(1fr)
    ]

    body

    [#metadata(none)#label(key + "-end")]
  }
}
