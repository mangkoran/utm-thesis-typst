#import "@preview/tablex:0.0.7": tablex, colspanx

#align(center,
  [= Declaration]
)


#align(horizon,
  [
    I declare that this thesis entitled "UTM THESIS TYPST" is the result of my own
    research except as cited in the references. The thesis has not been accepted for
    any degree and is not concurrently submitted in candidature of any other degree.

    #tablex(
      auto-lines: false,
      columns: (auto, 1fr),
      [Signature], [:],
      [Name], [:],
      [Date], [: #datetime.today().display()],
    )
  ]
)
