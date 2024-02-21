#import "template.typ": *
#import "@preview/acrostiche:0.3.1": *
#import "@preview/i-figured:0.2.4"
#import "@preview/anti-matter:0.1.1": anti-matter, fence, set-numbering

#set heading(numbering: "1.")
#show heading: i-figured.reset-counters
#show figure: i-figured.show-figure


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "",
  subtitle: "Bacherlorarbeit",
  authors: (
    "",
    ""
  ),
  betreuer: "",
  experte: "",
  auftraggeber: "",
  logo: "img/hslu_logo.svg",
  institut: "Hochschule Luzern - Departement Informatik",
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: lorem(59),
  version: "Version 1.0",
  studiengang: "BSc Informatik"
)


#init-acronyms((
  "Wipro": ("Wirtschaftsprojekt",),
  "BAA": ("Bacherlorarbeit",),
))

#include "chapters/01_introduction.typ"
#include "chapters/02_state-of-research.typ"
#include "chapters/03_concept.typ"
#include "chapters/04_methodology.typ"
#include "chapters/05_realization.typ"
#include "chapters/06_evaluation.typ"
#include "chapters/07_conclusion.typ"

#fence()
#pagebreak()

#set heading(numbering: none)

= Glossar
#print-index(title: [])
#pagebreak()

= Abbildungsverzeichnis
#i-figured.outline(title: [])
= Tabellenverzeichnis
#i-figured.outline(title: [], target-kind: table,)
#pagebreak()

#bibliography(title: [Literatur], "Referenzen.bib", style: "american-psychological-association")
#pagebreak()

// reset the numbering for the appendix
#counter(heading).update(0)
#set heading(numbering: "A.")
#include "chapters/a_appendix.typ"