#import "@preview/tablex:0.0.7": tablex, rowspanx, colspanx

#let content(
  title: "THESIS TITLE",
  author: "THESIS AUTHOR",
  metric: "AUTHOR METRIC",
  dob: "AUTHOR DOB",
  session: "ACADEMIC SESSION",
  utm_email: "AUTHOR UTM EMAIL",
  supervisor: (
    "SUPERVISOR 1",
    "SUPERVISOR 2",
  )
) = [
  #align(right, 
    [PSZ 19:16 (Pind. 1/23)]
  )

  #align(
    center,
    [
      #upper[*UNIVERSITI TEKNOLOGI MALAYSIA*] \
      #upper[*DECLARATION OF THESIS*]
    ]
  )


  #tablex(
    auto-lines: false,
    columns: (1fr, 2fr, 1fr, 2fr),
    [Author's Name], [: #upper[#author]], [Academic Session], [: #session],
    [Matric No.],    [: #metric],         [UTM Email],        [: #utm_email],
    [Date of Birth], colspanx(3)[: #datetime.today().display()], (), (),
    [Thesis Title],  colspanx(3)[: #upper[#title]], (), (),
  )

  I declare that this thesis is classified as:

  #tablex(
    auto-lines: false,
    columns: (auto, auto, auto),
    [#square[]], [*OPEN ACCESS*], [I agree that my report to be published as a hard copy or made available through online open access.],
    [#square[]], [*RESTRICTED*], [Contains restricted information as specified by the organization/institution where research was done.],
    [#square[]], [*CONFIDENTIAL*], [Contains confidential information as specified in the Official Secret Act 1972.],
  )

  _(If none of the options are selected, the first opetion will be chosen by default)_

  I acknowledge the intellectual property in the thesis belongs to Universiti Teknologi Malaysia,
  and I agree to allow this to be placed in the library under the following terms:

  + This is the property of Universiti Teknologi Malaysia
  + The Library of Universiti Teknologi Malaysia has the right to make copies for the purpose of only.
  + The Library of Universiti Teknologi Malaysia is allowed to make copies of this thesis for academic exchanges.

  #tablex(
    auto-lines: false,
    columns: (auto, 1fr, auto, 1fr),
    colspanx(4, align: center)[Signature of Student], (), (), (),
    [Signature], colspanx(3)[:], (), (),
    colspanx(4)[], (), (), (),
    colspanx(4)[], (), (), (),
    colspanx(4)[], (), (), (),
    [Name], colspanx(3)[: #upper[#author]], (), (),
    [Date], colspanx(3)[: #datetime.today().display()], (), (),
    colspanx(4)[], (), (), (),
    colspanx(4)[], (), (), (),
    colspanx(4)[], (), (), (),
    colspanx(4, align: center)[Approved by Supervisor(s)], (), (), (),
    ..(if supervisor.len() == 1 {(
      [Signature of Supervisor I], colspanx(3)[:], (), (),
      colspanx(4)[], (), (), (),
      colspanx(4)[], (), (), (),
      colspanx(4)[], (), (), (),
      [Name of Supervisor I], colspanx(3)[: #upper[#supervisor.at(0)]], (), (),
      [Date], colspanx(3)[: #datetime.today().display()], (), (),
    )} else if supervisor.len() == 2 {(
      [Signature of Supervisor I], [:], [Signature of Supervisor II], [:],
      colspanx(4)[], (), (), (),
      colspanx(4)[], (), (), (),
      colspanx(4)[], (), (), (),
      [Name of Supervisor I], [: #upper[#supervisor.at(0)]], [Name of Supervisor II], [: #upper[#supervisor.at(1)]],
      [Date], [: #datetime.today().display()], [Date], [: #datetime.today().display()],
    )} else {(
      panic("supervisor must be 1 or 2")
    )}),
  )

  NOTES: If the thesis is CONFIDENTIAL or RESTRICTED, please attach with the letter from the organization
  with period and reasons for confidentiality or restriction.

  #pagebreak(weak: true)
]

#content()
