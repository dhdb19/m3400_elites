#let make_authors(
  title,
  authors,
  abstract,
  keywords,
) = {
  text(
    12pt,
    authors
      .enumerate()
      .map(((i, author)) => author.name + super(typographic: true)[#{ i + 1 }])
      .join(", ", last: " and "),
  )
  parbreak()
  text(
    8pt,

    authors
      .enumerate()
      .map(((i, author)) => (
        super[#{ i + 1 }] + author.affiliation + [, ] + author.matric_number
      ))
      .join("; "),
  )
}

#let make_env(
  seminar_title,
  lecturer,
  seminar_type,
  semester,
  date,
) = {
  text(
    9pt,
    grid(
      columns: (1fr, 1fr),
      [
        #seminar_title\
        #lecturer.join(", ")\
        #seminar_type
      ],
      text(
        9pt,
        align(right)[
          #semester\
          #date
        ],
      ),
    ),
  )
}

#let make_doctype(
  doctype,
) = {
  text(
    9pt,
    font: "Lato",
    tracking: 1pt,
    fill: rgb("3C714F"),
    weight: "bold",
    upper[#doctype],
  )
}

#let make_title(
  title,
  subtitle,
) = {
  set par(leading: 0.55em)
  text(
    18pt,
    fill: rgb("3C714F"),
    weight: "bold",
    font: "Lato",
  )[#title: #subtitle]
}

#let make_abstract(
  abstract,
  keywords,
) = {
  rect(
    fill: rgb("EBF1EC"),
    inset: 11pt,
  )[#text(10pt, font: "Lato")[*Abstract*]\ #par(justify: true)[#abstract]]
  parbreak()
  text(9pt)[*Keywords*: #keywords.join(", ")]
}

#let make_bibliography() = {
  set page(
    paper: "a4",
    margin: (x: 1in, y: 1in),
    header: none,
  )
  set par(
    justify: true,
    leading: 0.5em,
    first-line-indent: 0.5in,
    spacing: 0.5em,
  )
  set text(size: 10pt)
  bibliography(
    "../references.bib",
    style: "american-psychological-association",
    title: "References",
  )
}

#let make_titlepage(
  title,
  subtitle,
  authors,
  date,
  abstract,
  keywords,
  seminar_title,
  seminar_type,
  lecturer,
  semester,
  titlepage: false,
  doctype: "Article",
) = {
  make_env(
    seminar_title,
    lecturer,
    seminar_type,
    semester,
    date,
  )
  v(1em)
  make_doctype(doctype)
  make_title(
    title,
    subtitle,
  )
  parbreak()
  make_authors(
    title,
    authors,
    abstract,
    keywords,
  )
  parbreak()
  make_abstract(
    abstract,
    keywords,
  )
  if titlepage [#pagebreak()]
}

#let template(
  title: "Placeholder",
  subtitle: "Placeholder",
  authors: (),
  date: [],
  abstract: [],
  keywords: (),
  seminar_title: "Placeholder seminar",
  seminar_type: "Seminar Type",
  lecturer: ("Placeholder",),
  semester: [],
  titlepage: false,
  doctype: "Article",
  body,
) = {
  // format text --------
  set text(
    font: "TeX Gyre Termes",
    size: 11pt,
  )
  // titlepage
  set page(
    paper: "a4",
    margin: (x: 1in, y: 1in),
    header: context {
      grid(
        columns: (9fr, 1fr),
        text(9pt)[
          #if counter(page).get().first() > 1 [
            _ #title _]
        ],
        text(9pt)[
          #if counter(page).get().first() > 1 and titlepage [
            #counter(page).update(1)
            #align(right)[#context counter(page).display()]
          ] else if counter(page).get().first() > 1 [
            #align(right)[#context counter(page).display()]]
        ],
      )
    },
  )
  make_titlepage(
    title,
    subtitle,
    authors,
    date,
    abstract,
    keywords,
    seminar_title,
    seminar_type,
    lecturer,
    semester,
    titlepage: titlepage,
    doctype: doctype,
  )
  // document set up

  // format headings --------
  show heading.where(level: 1): headingtext => [
    #set align(left)
    #set text(
      12pt,
      weight: "bold",
      font: "Lato",
      fill: rgb("3C714F"),
    )
    #headingtext
  ]
  show heading.where(level: 2): headingtext => [
    #set align(left)
    #set text(
      11pt,
      weight: "regular",
      style: "oblique",
      font: "Lato",
      fill: rgb("3C714F"),
    )
    #headingtext
  ]
  show heading: set block(below: 1em, above: 2.5em)
  //  format paragraphs --------
  set par(
    justify: true,
    leading: 0.75em,
    first-line-indent: 0.5in,
    spacing: 0.75em,
  )
  // format tables -------
  set figure.caption(position: top)

  show figure.caption: c => [
    #set align(left)
    #set text(
      font: "Lato",
      size: 10pt,
    )
    #text(fill: rgb("3C714F"), weight: "bold")[#upper(
        c.supplement,
      ) #c.numbering]
    #h(0.2cm)
    #c.body
    #line(length: 100%)
    #v(-0.5em)
  ]

  show figure: fig => [
    #block(
      stroke: 1pt,
      inset: 6pt,
    )[#fig]
  ]

  show table: tab => [
    #set text(font: "Lato", size: 9pt)
    #set par(
      leading: 0.5em,
      justify: false,
    )
    #tab
  ]


  // equation formatting --------
  set math.equation(
    numbering: "(1)",
    supplement: "Equation",
  )
  // document --------
  body
  pagebreak()
  // references -------
  make_bibliography()
}
}
