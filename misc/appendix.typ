#set heading(numbering: none)
#heading(outlined: true, "Appendix")

#v(1em)

#let appendix-count = 1

#let appendix-items = range(appendix-count).map(idx => {
  let path = "appendix_items/a" + str(idx) + ".typ"
  import path as mod
  (
    label: "A" + str(idx + 1),
    title: mod.title,
    content: mod.content,
  )
})

// Index
#for item in appendix-items [
  Appendix #item.label: #item.title

  #v(1em)
]

#pagebreak()

// Content
#for item in appendix-items [
  #heading(outlined: false)[Appendix #item.label: #item.title]

  #item.content

  #pagebreak(weak: true)
]
