#import "@preview/lilaq:0.1.0" as lq
#import "../style/paper_template.typ": template

#show: template.with(
  title: [This is an extremely nice title that is quite long to be honest],
  subtitle: "And this is an equally impressive subtitle with very big words",
  authors: (
    (
      name: "Iordanis Pantzartzis",
      affiliation: "Universität Konstanz",
      matric_number: "01/1001158",
    ),
  ),
  abstract: lorem(120),
  seminar_title: "Political Elites",
  lecturer: ("Prof. Dr. Christian Breunig", ""),
  semester: "Winter semester 2024/2025",
  date: "April 15, 2025",
  keywords: ("Placeholder", "Something else"),
  titlepage: false,
  doctype: "Term paper",
  seminar_type: "Master seminar",
)

= Introduction

#include "1_intro.typ"

= Literature Overview

#include "2_lit.typ"

= Theory

#include "3_theory.typ"

= Research Design

#include "4_rd.typ"

= Appendix

#include "5_appendix.typ"

// #let (x, y) = lq.load-txt(read("../data/d2000_oecd/oecd_filtered_clean.csv"))

= Equations

An inline equation is set as $f(x) = sin(x)$<eq2>, now some more text: #lorem(30). Some out-of-line equations look like: $ f(x)=(beta_1)/(exp(beta_0 +beta_1 *x_1)) $<eq1> Take a look at my beautiful boy @eq1. As @Kahnemann1979 [p. 7] find

#cite(label("Kahnemann1979"), form: "prose", supplement: "p. 1")#cite(
  label("Kahnemann1979"),
  form: "prose",
  supplement: "p. 7",
)

