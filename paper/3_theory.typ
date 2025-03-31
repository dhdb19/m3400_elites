#let pre_cite(..args, prefix: none) = {
  if prefix == none {
    cite(..args)
  } else {
    show "(": [(#prefix ]
    cite(..args)
  }
}

// Irrationality
In his seminal article,

#pre_cite(<edwards-1954>, prefix: none, supplement: none)

In his seminal study, #cite(<staw-1976>, form: "prose") observed that participants, when faced with an investment decision will

#cite(<staw-1976>, form: "prose", supplement: "p. 27") puts it, "intuitively, one would expect individuals to reverse decisions or to change behavior which results in negative consequences". Beyond

The rational choice literature suggests that #pre_cite(<downs-1957>, prefix: "e.g.", supplement: none)


// Definition escalation of commitment
Within the logic of rational choice theory, escalation of commitment refers to the irrational decision to allocate additional resources to one decisional
alternative over another
Investment decisions = "situations in which resources are allocated to one decisional alternative over others" @staw-1976[p. 28]


Prospect theory: "Loss-framed decisions (which include escalation decisions) leading to loss-aversion, and thus risk-seeking behavior (in this case further expenditures)"" @sleesman-2012[p. 544]


== theoretical distinction from gambler's fallacy

== theoretical distinction from status-quo bias

Notes:

Difference between status quo bias, gambler's fallacy

Take into account that people need to feel a degree of personal responsibility (if post-hoc rationalization is the relevant mechanism ,"self-justification may similarly depend upon the level of personal responsibility one has had in determining a particular course of action and the outcomes resulting from those actions" ) @staw-1976[p. 30]

Subjective expected utility @Savage1972


== Self-justification Theory (cognitive dissonance) @Aronson1968 @Festinger1957


== Prospect Theory @Kahnemann1979



== Goal substitution @Conlon1993



== Self-presentation theory @Goffman1959@Jones1982



== Principal-agent theory @Eisenhardt1989@Jensen1976 @Ross1973



Project determinants
Mostly driven by subjective expected utility @sleesman-2012[p. 542] @Staw1987


Large infrastructure projects vs social programs touches several mechanisms


#figure(
  caption: [Some nice table],
  kind: table,
  table(
    align: left,
    columns: (2fr, 2fr, 2fr, 1fr),
    stroke: none,
    [Category], [Theory], [Mechanism], [Different?],
    table.hline(start: 0, stroke: 1pt),
    [Project determinants], [ Subjective expected utility], [Decision risk], [X],
    [Project determinants], [ Subjective expected utility], [Opportunity cost information], [],
    [Project determinants], [ Subjective expected utility], [Information set (information acquisition, decision uncertainty)], [],
    [Project determinants], [ Subjective expected utility], [Positive performance trend information], [],
    [Project determinants], [ Subjective expected utility], [Expressed preference for initial decision], [],
    [Psychological], [Self-justification theory], [Previous resource expenditure (sunk cost (money and time))], [],
    [Psychological], [Self-justification theory], [Familiarity with decision context (expertise, self-confidence/efficacy)], [],
    [Psychological], [Self-justification theory], [Personal responsibility], [],
    [Psychological], [Self-justification theory], [Ego threat], [X],
    [Psychological], [Prospect theory], [Information framing], [X],
    [Psychological], [Goal substitution], [Proximity to project completion], [X],
    [Social Determinants], [Self-presentation theory], [Public evaluation of decision], [],
    [Social Determinants], [Self-presentation theory], [Resistance decision from others], [],
    [Social Determinants], [Self-presentation theory], [Group identity], [X],
    [Structural Determinants], [Principal-agent theory], [Agency problems], [X]
  ),
)<table1>
