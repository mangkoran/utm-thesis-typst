#import "@preview/tablex:0.0.7": tablex, colspanx
#import "utils.typ": empty

#let content(
  title: empty[title],
  author: empty[author],
) = [
  #align(center)[
    = Declaration
  ]

  #align(horizon)[
    I declare that this thesis entitled "#title" is the result of my own
    research except as cited in the references. The thesis has not been accepted for
    any degree and is not concurrently submitted in candidature of any other degree.

    #tablex(
      auto-lines: false,
      columns: (auto, 1fr),
      [Signature], [:],
      [Name], [: #author],
      [Date], [: #datetime.today().display()],
    )
  ]

  #pagebreak(weak: true)
]

#content()
