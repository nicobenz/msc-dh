#import "@preview/aio-studi-and-thesis:0.1.4": *

#let submission_date = datetime(day: 30, month: 9, year: 2026).display("[day padding:space]. [month repr:long] [year repr:full]")

#show: project.with(
  lang: "en",
  authors: (
    (
      name: "Nico Benz",
      id: "3583917",
      email: "nico.benz@studserv.uni-leipzig.de"
    ),
  ),
  title: "Developing and Evaluating a Cloud-based Voicebot for Medical Informed Consent",
  subtitle: "A Modular System Using Speech-to-Speech LLMs in a Directed Acyclic Graph",
  date: submission_date,
  version: "0.1",
  thesis-compliant: true,

  side-margins: (
    left: 3.5cm,
    right: 3.5cm,
    top: 3.5cm,
    bottom: 3.5cm
  ),
  h1-spacing: 0.5em,
  line-spacing: 0.65em,
  font: "Lato",
  font-size: 11pt,
  hyphenate: false,

  primary-color: dark-blue,
  secondary-color: blue,
  text-color: dark-grey,
  background-color: light-blue,

  custom-cover-sheet: none,
  cover-sheet: (
    university: (
      name: "Leipzig University",
      street: "Ritterstraße 26",
      city: "Leipzig",
      logo: image("misc/assets/logo_uni.svg", width: 180%)
    ),
    employer: (
      name: "Thieme Compliance GmbH",
      street: "Am Weichselgarten 30a",
      city: "Erlangen",
      logo: image("misc/assets/logo_thieme.svg", width: 280%)
    ),
    cover-image: none,
    description: "Thesis for MSc Digital Humanities",
    faculty: "Faculty of Mathematics and Computer Science",
    programme: "Computational Humanities Group",
    examiner: "Dr. Thomas Efer",
    submission-date: submission_date
  ),

  custom-declaration: none,
  declaration-on-the-final-thesis: none,

  abstract: include "misc/abstract.typ",

  outlines-indent: 1em,
  depth-toc: 4,
  show-list-of-figures: true,
  show-list-of-abbreviations: true,
  list-of-abbreviations: (
    (
      key: "LLM",
      short: "LLM",
      plural: "LLMs",
      long: "Large Language Model",
      longplural: "Large Language Models",
      description: "bla",
      group: "Technical terms",
    ),
  ),
  show-list-of-formulas: false,
  custom-outlines: (
    (
      title: none,
      custom: none
    ),
  ),
  show-list-of-tables: true,
  show-list-of-todos: true,
  literature-and-bibliography: none,
  list-of-attachements: none
)

#include "chapters/c1-introduction.typ"
#include "chapters/c2-previous-work.typ"
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