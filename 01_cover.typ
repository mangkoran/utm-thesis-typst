#import "utils.typ": empty

#let content(
  title: empty[title],
  author: empty[author],
) = [
  #set align(center)
  #set page(margin: (x: 3.25cm, y: 5cm))

  #upper[#title]
  
  #v(1fr)
  
  #upper[#author]
  
  #v(1fr)
  
  #upper[Universiti Teknologi Malaysia]
  
  #pagebreak(weak: true)
]

#content()
