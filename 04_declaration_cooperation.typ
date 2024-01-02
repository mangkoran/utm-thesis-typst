#import "@preview/tablex:0.0.7": tablex, colspanx
#import "utils.typ": empty

#let content(
  parties: (
    empty[party 1],
    empty[party 2],
  )
) = [
  #align(center)[
    #upper[*Declaration of Cooperation*]
  ]

  #align(horizon)[
    This is to confirm that this research has been conducted through a collaboration between
    #for i in range(parties.len()) {
      if parties.len() == 0 {
        panic("parties cannot be zero")
      } else if i == parties.len() - 1 {
        [and #parties.at(i)]
      } else if parties.len() == 2 {
        [#parties.at(i) ]
      } else {
        [#parties.at(i), ]
      }
    }

    #tablex(
      auto-lines: false,
      columns: (auto, 1fr),

      [Certified by], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Signature], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Name], [:],
      [Position], [:],
      [Official Stamp], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Date], [: #datetime.today().display()],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
    )
  ]

  #align(bottom)[
    \*This section is to be filled up for theses with industrial collaboration
  ]

  #pagebreak(weak: true)
]

#content()
