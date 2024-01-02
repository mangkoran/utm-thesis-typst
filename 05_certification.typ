#import "@preview/tablex:0.0.7": tablex, colspanx

#let content() = [
  #align(center)[
    #upper[*Pengesahan Peperiksaan*]
  ]

  #align(horizon)[
    #tablex(
      auto-lines: false,
      columns: (auto, 1fr),

      [Tesis ini telah diperiksa dan diakui oleh], [:],
      [Nama dan Alamat Peperiksa Luar], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Nama dan Alamat Peperiksa Luar], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Nama Penyelia Lain (jika ada)], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Disahkan oleh Timbalan Pendaftar di Fakulti], [:],
      [Tandatangan], [:],
      colspanx(2)[], (),
      colspanx(2)[], (),
      colspanx(2)[], (),
      [Nama], [:],
      [Date], [: #datetime.today().display()],
    )
  ]

  #pagebreak(weak: true)
]

#content()
