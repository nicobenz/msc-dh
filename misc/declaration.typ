#import "config.typ": submission_date

#page(
  footer: none,
  header: none,
  numbering: none,
)[
  #set text(size: 10pt)
  #set heading(numbering: none)
  #heading(outlined: false, "Erklärung")

  Ich versichere, dass ich die vorliegende Arbeit selbstständig und nur unter Verwendung der angegebenen Quellen und Hilfsmittel angefertigt habe, insbesondere sind wörtliche oder sinngemäße Zitate als solche gekennzeichnet. Mir ist bekannt, dass Zuwiderhandlung auch nachträglich zur Aberkennung des Abschlusses führen kann.

  Ich versichere, dass das elektronische Exemplar mit den gedruckten Exemplaren übereinstimmt.

  #v(1fr)

  #grid(
    columns: (1fr, 1fr, 1.5fr),
    column-gutter: 20pt,
    align: bottom,

    [Ort: Leipzig],
    [Datum: #submission_date],
    [Unterschrift: #box(width: 1fr, line(length: 100%, stroke: 0.5pt))],
  )
]
