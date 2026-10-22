#import "@preview/aio-studi-and-thesis:0.2.0": *

#import "misc/config.typ": submission_date, template
#import "misc/parts.typ": part

#show: project.with(..template)

#include "chapters/c1-introduction.typ"
#include "chapters/c2-background.typ"

#part[Part I: Design and Implementation][
  #include "chapters/c3-intro-design.typ"
  #include "chapters/c4-lit-design.typ"
  #include "chapters/c5-requirements.typ"
  #include "chapters/c6-system-design.typ"
  #include "chapters/c7-implementation.typ"
  #include "chapters/c8-feedback.typ"
  #include "chapters/c9-discussion-design.typ"
]

#part[Part II: Evaluation][
  #include "chapters/c10-intro-eval.typ"
  #include "chapters/c11-lit-eval.typ"
  #include "chapters/c12-data.typ"
  #include "chapters/c13-method.typ"
  #include "chapters/c14-results.typ"
  #include "chapters/c15-discussion-evaluation.typ"
]

#include "chapters/c16-discussion.typ"
#include "chapters/c17-conclusion.typ"


#pagebreak()
#bibliography("misc/lit.bib", style: "apa")

#pagebreak()
#include "misc/appendix.typ"

#pagebreak()
#include "misc/declaration.typ"
