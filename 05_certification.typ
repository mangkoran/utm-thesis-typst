#import "@preview/tablex:0.0.7": tablex, colspanx

*Pengesahan Peperiksaan*

#tablex(
  auto-lines: false,
  columns: (auto, 1fr),
  colspanx(2)[Tesis ini telah diperiksa dan diakui oleh:], (),
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
  colspanx(2)[Disahkan oleh Timbalan Pendaftar di Fakulti:], (),
  [Tandatangan], [:],
  colspanx(2)[], (),
  colspanx(2)[], (),
  colspanx(2)[], (),
  [Nama], [:],
  [Date], [: #datetime.today().display()],
)
