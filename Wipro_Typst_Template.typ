#import "template.typ": *
#import "@preview/acrostiche:0.3.0": *
#import "@preview/i-figured:0.1.0"

#set heading(numbering: "1.")
#show heading: i-figured.reset-counters
#show figure: i-figured.show-figure


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "",
  subtitle: "Wirtschaftsprojekt HS2023",
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
))

= Problem, Fragestellung und Vision
== Problem
== Fragestellung
== Vision
#pagebreak()

= Stand der Technik
== Technologische Grundlagen
== Technische Konzepte
// TODO Konzepte in diesem Feld welche für den Leser relevant sind
== Stand in Bezug auf eigenes Projekt
// TODO Welche Forschung wurde in jüngster Zeit gemacht welche relevant für das eigene Projekt sind
#pagebreak()

= Ideen und Konzepte
== Grundidee
== Konzepte
#pagebreak()

= Methoden
== Vorgehensmodell
== Labor-/Feldexperiment
== Ermittlung offener Projektrahmenbedingungen
== Projektanforderungen / Anforderungsanalyse
== Einschränkungen und Abgrenzungen
== Systemarchitektur
== Komponentendesign
== Umsetzung / Programmierung
== Testing
#pagebreak()

= Realisierung
#pagebreak()

= Evaluation und Validation
== Vergleich mit Anforderungen
== Technische Aspekte
== Vorgehen
#pagebreak()

= Ausblick
== Projekt Fazit
== Ausblick
#pagebreak()

#set heading(numbering: none, outlined: false)
#print-index(title: [Glossar])

#pagebreak()
#i-figured.outline(title: [Abbildungsverzeichnis])
#i-figured.outline(title: [Tabellenverzeichnis], target-kind: table,)

#pagebreak()
#bibliography(title: [Literatur], "Referenzen.bib", style: "american-psychological-association")
