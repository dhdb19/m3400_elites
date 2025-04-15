#let pre_cite(..args, prefix: none) = {
  if prefix == none {
    cite(..args)
  } else {
    show "(": [(#prefix ]
    cite(..args)
  }
}

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
  set par(
    justify: true,
    leading: 0.5em,
    first-line-indent: 0.5in,
    spacing: 0.5em,
  )
  set text(
    size: 10pt,
    lang: "en",
    region: "en",
  )
  bibliography(
    "../references.yml",
    // style: "american-psychological-association",
    style: "american-psychological-association",
    // style: "../style/apa.csl",
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
    lang: "en",
    region: "en",
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
    first-line-indent: 0.25in,
    spacing: 0.75em,
  )
  // format tables -------
  set figure.caption(position: top)

  show figure.caption: c => [
    #set align(left)
    #set text(
      font: "Lato",
      size: 9pt,
    )
    #text(fill: rgb("3C714F"), weight: "bold")[
      #upper(c.supplement) #context { context c.counter.display(c.numbering) }]
    #h(0.2cm)
    #c.body
    #line(length: 100%, stroke: 0.5pt)
    #v(-0.5em)
  ]

  show figure: fig => [
    #block(
      stroke: 0.5pt,
      inset: 5pt,
    )[#fig]
  ]

  show table: tab => [
    #set text(font: "Lato", size: 8pt)
    #show math.equation: set text(font: "Lete Sans Math")
    #set par(
      leading: 0.5em,
      justify: false,
      spacing: 0em,
    )
    #tab
  ]

  set table(row-gutter: 0em)

  set quote(block: true)

  show quote: q => {
    v(-1em)
    set pad(x: 2em)
    set text(size: 10pt)
    set par(leading: 0.5em)
    q
    v(-0.5em)
  }

  // equation formatting --------
  set math.equation(
    numbering: "(1)",
    supplement: "Equation",
  )
  // document --------
  body
  // pagebreak()
  // references -------
  make_bibliography()
}
}
