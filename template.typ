// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  title: "",
  subtitle: "",
  abstract: [],
  authors: (),
  betreuer: "",
  experte: "",
  auftraggeber: "",
  institut: "",
  date: datetime.today().display("[day].[month].[year]"),
  logo: "",
  body,
  version: "",
  studiengang: ""
) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Liberation Sans", lang: "de")
  set heading(numbering: "1.1")

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(1.6fr)
  align(center)[
    #text(2em, weight: 700, title)
    #v(1.2em, weak: true)
    #text(1.2em, subtitle)

    // Author information.
    #pad(
      top: 0.7em,
      grid(
        gutter: 1em,
        ..authors.map(author => align(start, strong(author))),
      ),
    )
    // Betreuer information.
    #text([Betreuer: #betreuer])
    
    #v(4.6fr)
    #v(1.2em, weak: true)
    #text(1.1em, date)
    #v(1.2em, weak: true)
    #text(1.1em, institut)
    #v(1.2em, weak: true)
    #text(1.1em, version)
  ]
  v(2.4fr)
  pagebreak()

  // Eidesstattlicheerklärung
  v(1fr)
align(left)[
    #heading(
      outlined: false,
      numbering: none,
      text(smallcaps[Wirtschaftsprojekt an der Hochschule Luzern – Informatik]),
    )#v(10pt)
    #strong[Titel: #title]#linebreak() \
    #strong[Student: ]#str(authors.at(0)) \ #v(10pt)
    #strong[Student: ]#str(authors.at(1)) \ #v(10pt)
    #strong[Studiengang: ]#studiengang \ #v(10pt)
    #strong[Jahr: ]#datetime.today().display("[year]") \ #v(10pt)
    #strong[Betreuer: ]#betreuer \ #v(10pt)
    #strong[Experte: ]#experte \ #v(10pt)
    #strong[Auftraggeber: ]#auftraggeber \ #v(10pt)
    #strong[Codierung / Klassifizierung der Arbeit: ]\ #text([⊠ Öffentlich □ Vertraulich]) \ #v(10pt)
    #text(strong([Eidesstattliche Erklärung:])) #text([Ich erkläre hiermit, dass wir die vorliegende Arbeit selbständig und ohne unerlaubte fremde Hilfe angefertigt haben, alle verwendeten Quellen, Literatur und andere Hilfsmittel angegeben haben, wörtlich oder inhaltlich entnommene Stellen als solche kenntlich gemacht haben, das Vertraulichkeitsinteresse des Auftraggebers wahren und die Urheberrechtsbestimmungen der Hochschule Luzern respektieren werden.]) \ #v(10pt)
    #strong[Ort / Datum, Unterschrift: ]#box(line(length: 5cm)) \ #v(10pt)
    #strong[Ort / Datum, Unterschrift: ]#box(line(length: 5cm)) \ #v(10pt)
    #strong[Ausschliesslich bei Abgabe in gedruckter Form:] \ 
    #strong[Eingangsvisum durch das Sekretariat auszufüllen] \ #v(10pt)
    #text[Rotkreuz, den] #box(line(length: 5cm)) #text[Visum: ] #box(line(length: 5cm))
  ]
  v(1.618fr)
  pagebreak()

  // Abstract page.
  v(1fr)
align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(0.85em, smallcaps[Abstract]),
    )
    #abstract
  ]
  v(1.618fr)
  pagebreak()

  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()

  // Main body.
  set par(justify: true)

  body
}