#import "@preview/tablex:0.0.7": tablex, rowspanx, colspanx
// template
#import "01_cover.typ" as cover
#import "02_declaration_thesis.typ" as declaration_thesis
#import "03_declaration_supervisor.typ" as declaration_supervisor
#import "04_declaration_cooperation.typ" as declaration_cooperation
#import "05_certification.typ" as certification
#import "06_title.typ" as title
#import "07_declaration_originality.typ" as declaration_originality
#import "08_acknowledgement.typ" as acknowledgement
#import "09a_abstract_en.typ" as abstract_en
#import "09b_abstract_my.typ" as abstract_my

#let data = (
  title: "UTM Thesis Typst",
  author: "Afiq Nazrie",
  degree: "Bachelor of Computer Science",
  supervisor: (
    "Dr. Foad",
  )
)

#cover.content(
  // title: data.title,
  // author: data.author,
)

#declaration_thesis.content(
  // title: data.title,
  // author: data.author,
  // supervisor: data.supervisor,
)

#declaration_supervisor.content(
  // degree: data.degree,
  // supervisor: data.supervisor,
)

#declaration_cooperation.content()

#certification.content()

#title.content()

#declaration_originality.content()

#acknowledgement.content()

#abstract_en.content()

#abstract_my.content()

#set heading(numbering: "1.1.")

= General Requirements

== Thesis, Dissertation, and Master Project Report

A thesis, dissertation or Master project report is a document that
presents students' research and findings in support of their candidature for an academic
degree. In UTM, a project report refers to the documentation of the research component
prepared and submitted by the candidate for the award of a master's programme by
coursework. On the other hand, a dissertation refers to a document submitted by a student
in partial fulfilment for the award of a degree through a mixed-mode program. Finally, a
thesis refers to the documentation of original research prepared and submitted by a
candidate for the award of a degree for a doctoral or master's programme based on
research.

== UTM Thesis Format

A thesis can be written in one of the following formats:

- Conventional thesis: A conventional thesis typically consists of five chapters: the
  introduction, the literature review, the methodology, the results, and the
  conclusion.
- Thesis by publications: A thesis by publications consists of a compilation of
  scholarly papers published by the student as the first author during their
  candidature. Students who intend to submit their theses in this format must adhere
  to the publication requirements outlined in the graduate school regulations.

Following are guidelines for composing and preparing a dissertation or thesis in
accordance with the two formats.

=== Conventional Thesis/Dissertation

In general, a conventional thesis/dissertation consists of three main parts:
preliminary, main body and supplementary. Details on typesetting are provided in @layout.
The general structure of a conventional thesis/dissertation is shown in
@thesis_structure[Table] below.

#figure(
  tablex(
    columns: (auto, auto),
    align: center + horizon,
    [*Component*],                                     [*Note*],
    colspanx(2)[*Preliminary*],                        (),
    [Front Cover],                                     rowspanx(6)[No page number],
    [Blank Page],                                      (),
    [Declaration of Thesis/Dissertation/Project Form], (),
    [Declaration by Supervisor(s)],                    (),
    [Declaration of Cooperation],                      (),
    [Certification of Examination],                    (),
    [Title Page],                                      [Roman numeral (i), page number hidden],
    [Author's Declaration of Originality],             [Roman numeral (iii)],
    [Acknowledgement],                                 [Roman numeral (v)],
    [Abstract (English)],                              [Roman numeral (vi)],
    [Abstract (Malay)],                                [Roman numeral (vii)],
    [Table of Contents],                               rowspanx(6)[Roman numeral (cont.)],
    [List of Tables],                                  (),
    [List of Figures],                                 (),
    [List of Abbreviations],                           (),
    [List of Symbols],                                 (),
    [List of Appendices],                              (),
    colspanx(2)[*Main Body*],                          (),
    [Ch 1: Introduction],                              [Arabic numeral (1)],
    [Ch 2: Literature Review],                         rowspanx(6)[Arabic numeral (cont.)],
    [Ch 3: Methodology],                               (),
    [Ch 4: Results],                                   (),
    [Ch 5: Discussion],                                (),
    [Ch 6: Conclusion],                                (),
    [References],                                      (),
    colspanx(2)[*Supplementary*],                      (),
    [Appendices],                                      rowspanx(2)[Arabic numeral (cont.)],
    [List of Publications and Papers Presented],       (),
  ),
  supplement: [Table],
  caption: [General Structure of a Conventional Thesis/Dissertation]
) <thesis_structure>

= Layout and Content <layout>

== Page Layout

The text should be presented in portrait layout. Landscape layout may be used
for figures and tables

== Type of Paper

For viva-voce copies, high-quality A4 size (210 x 297 mm) paper with a weight of
80 grams per square metre (gsm) in white simili should be used. For hardbound copies, it
is necessary to use B5-size paper. Photocopies of the thesis must be on similar quality
paper.

== Typeface and Font Size

A thesis should be typed using a word or text processor. The 12-point font size
commonly used in printed academic materials should be used. Examples of suggested font
types are Serif (Times New Roman or Book Antiqua only) and Sans Serif (Arial, Tahoma
or Calibri only). The same font type should be used throughout the thesis.

== Margins

All pages should have the same margin. The left and right margins should be 3.25
cm (for binding purposes), and the top and bottom margins should be 2.5 cm

== Spacing

The following guidelines should be observed:

- The spacing between the chapter title and the first line of a text should be four
  (4) line spaces.
- The spacing between the last line of a text and the title of a sub-section should
  be four (4) line spaces.
- The spacing between the title of a sub-section and the first line of a text should
  be two (2) line spaces.
- The spacing between paragraphs should be two (2) line spaces.
- The number and the title of a sub-section should be aligned with the left
  margin.
- The first line of a paragraph should be indented by 1.27 cm (0.5 in) from the
  left margin.
- A new paragraph should not begin on the last line of a page.
- The spacing between the last line of a text and a table or a figure or an
  illustration should be two (2) line spaces.
- The spacing after a comma (,) should be one (1) character space.

== Pagination

Pages should be numbered consecutively including the blank page when
transitioning to a new chapter. The page numbers should be positioned at the bottom
centre, 1.25 cm from the bottom edge. Numbering should adhere to the following
guidelines:

- Preliminary pages of a thesis, starting from the title page, should be numbered
  using lowercase Roman numerals (i, ii, iii, etc.). Pages in the main text should
  be numbered using Arabic numerals (1, 2, 3, etc.).
- The first page should be the title page. This page should be counted as 'i' but
  should not be printed.
- Each chapter's first page should commence on an odd page with the page
  number printed.
- Theses that require partition pages should not have their partition pages
  numbered or counted.
- If a chapter terminates on an odd page number, a blank page should be added
  and counted, but the page number should not be printed. (In MS Word, insert
  'Section Breaks Odd Page' under the Layout Tab).
