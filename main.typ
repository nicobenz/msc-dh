#import "@preview/aio-studi-and-thesis:0.2.0": *

#import "misc/config.typ": submission_date, template

#show: project.with(..template)

#include "chapters/c1-introduction.typ"
#include "chapters/c2-related-work.typ"
#include "chapters/c3-method.typ"
#include "chapters/c4-results.typ"
#include "chapters/c5-discussion.typ"
#include "chapters/c6-conclusion.typ"

#pagebreak()
#bibliography("misc/lit.bib", style: "apa")

#pagebreak()
#include "misc/appendix.typ"

#pagebreak()
#include "misc/declaration.typ"
