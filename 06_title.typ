#import "utils.typ": empty

#let content(
  title: empty[title],
  author: empty[author],
  degree: empty[degree],
  school: empty[school],
  faculty: empty[faculty],
) = [
  #set align(center)

  #upper[#title]

  #v(1fr)

  #upper[#author]

  #v(1fr)

  A thesis submitted in fulfillment of the requirements
  for the award of the degree of #degree

  #v(1fr)

  #school \
  #faculty \
  Universiti Teknologi Malaysia

  #v(1fr)

  #upper(datetime.today().display("[month repr:long] [year]"))

  #pagebreak(weak: true)
]

#content()
