#import "@preview/tablex:0.0.7": tablex, colspanx
#import "utils.typ": empty

#let content(
  degree: empty[degree],
  supervisor: (
    empty[supervisor 1],
    empty[supervisor 2],
  ),
) = [
  #set align(center + horizon)

  "We hereby declare that we have read this thesis and in our opinion
  this thesis is sufficient in terms of scope and quality
  for the award of the degree of #degree"

  #tablex(
    auto-lines: false,
    columns: (auto, 40%),

    ..(for i in range(supervisor.len()) {(
      ..(if i != 0 {(
        colspanx(2)[], (),
        colspanx(2)[], (),
        colspanx(2)[], (),
      )}),
      [Signature of Supervisor #(i+1)], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Name of Supervisor #(i+1)], [: #upper[#supervisor.at(i)]],
      [Date], [: #datetime.today().display()],
    )})
  )

  #pagebreak(weak: true)
]

#content()
