#let pre_cite(..args, prefix: none) = {
  if prefix == none {
    cite(..args)
  } else {
    show "(": [(#prefix ]
    cite(..args)
  }
}

// Define decision environment

To give a concise description of the seminal experiment conducted by #cite(<staw-1976>, form: "prose", supplement: none): Subjects were presented with a hypothetical scenario, wherein they were made an officer of a technology company tasked with, in a first stage, allocating research and development funds to _either_ one of two company divisions and, in a second stage (5 years later in the hypothetical scenario), to evaluate their first-stage decision and allocate further research and development funds, freely distributable among the two divisions.
In the second stage some subjects were informed that the division they had chosen in the first stage was underperforming, others that their divisions performed well.
Though not stated explicitly, but presumably drawing from classical principles of economic decision making, the author states that "intuitively, one would expect individuals to reverse decisions or to change behaviors which results in negative consequences" #cite(<staw-1976>, form: "normal", supplement: "p. 27").
However, he finds, when subjects were informed in the second stage that the department they had chosen in the first stage performed worse than the alternative, those subjects, on average, chose to allocate a sum 25% higher to their first-stage choice compared to subjects that were informed their first-stage choice had outperformed the alternative.
Prima facia, this behavior appears incongruent with basic, both empirical and normative, principles of classical economic theories of decision making #pre_cite(<marshall-2013>, prefix: "e.g.", supplement: none), in particular marginal thinking, i.e. individuals evaluate decision alternatives on the _change in utility_ resulting from that decision versus the additional cost incurred -- previous investment decisions should (empirically and normatively) therefore not affect future decisions.
Subjects who received negative feedback in the #cite(<staw-1976>, form: "prose", supplement: none) experiment violated this principle in the second stage, as the amount invested in the second stage was correlated with the amount previously invested in the first stage, even though the additional utility gained from investing more funding in the other corporate division is greater than sticking with the division chose at the first stage.

Since this seminal contribution, a robust body of research has emerged on this behavioral phenomenon, wherein individual decision makers continue a course of action in the face of negative outcomes #pre_cite(<sleesman-2012>, prefix: "see", supplement: "for an overview an meta-analysis").
// Escalation of commitment is one of several terms that describe a decision making phenomenon, wherein individual decision makers continue a course of action in the face of a negative outcome #pre_cite(<staw-1981>, prefix: "see", supplement: none).
Escalation of commitment, and some derivative forms, are the preferred terms used by organizational behavior and management/business researchers #pre_cite(<staw-1976>, prefix: "e.g.", supplement: none)@staw-1981@astebro-2007@bazerman-1982@bazerman-1984@booth-2003@brockner-1982@brockner-1986@garland-1998@garland-1990@haunschild-1994@heath-1995@heng-2003@jeffrey-1992@ku-2007@mccain-1986@mcnamara-2002@moon-2001@moon-2002@northcraft-1986@schaubroeck-1994@schmidt-2002@schulz-2002@seibert-2001@whyte-1991@wong-2006@wong-2007@zhang-2006 as well as some economists @berg-2008 and psychologists @boehne-2000. Other psychologists @arkes-1985@schulz-hardt-2008@tan-2002 and management researchers @keil-1995@soman-2001, somewhat unfortunately, use the term _sunk cost_, which is a related concept, that is sometimes viewed as a possible determinant of escalation of commitment, which will be discussed later.
#cite(<bragger-1998>, form: "prose", supplement: none) and #cite(<bragger-2003>, form: "prose", supplement: none) also refer to _hysteresis_ , a specific model of deferred investment #cite(<dixit-1992>, form: "normal", supplement: none).
Negative outcomes conceivably conceptually extend to many kinds of decisions situations, e.g. interpersonal relationships #pre_cite(<rego-2016>, prefix: "see e.g.", supplement: none)@olivola-2018, however, in all the, otherwise quite disparate, strands of research on the phenomenon, i.e. economics, psychology, and organizational behavior, a negative outcome is most often conceptualized as some form of _cost_ and the entire decision making environment as an _investment decision_ #pre_cite(<sleesman-2012>, prefix: "see", supplement: none), i.e. "situations in which resources are allocated to one decisional alternative over others" @staw-1976[p. 28]. While this paper is motivated by some of the limitations of previous approaches in explaining elected politicians' decisions making -- that specifically relate to economic theories of decision making and how how investment and returns on that investment are conceptualized -- framing politicians' decision making environment in economic terms, specifically as an investment decision, is an efficient starting point.
Moreover, since politicians, like managers, investors, etc., often allocate funds for projects whose outcomes are not fully certain and foreseeable at time of investment, e.g. whether a large construction project will be completed in-time and in-budget, or whether a pension reform will be able ensure an adequate standard of living to retirees in ten years time, it will be efficient in general to look towards the well-developed canon of economic theories of decision making for a baseline of decision making _under conditions of uncertainty_, which much of the existing research, both economic and psychological, also in some way references.

It should be noted, due to its apparent violation of expectations derived from basic, classical economic theories of decision making, escalation of commitment has been referred to as "irrational" economic behavior by some researchers of the phenomenon #pre_cite(<arkes-1985>, prefix: "e.g.", supplement: "p. 124")@astebro-2007[p. 254]@northcraft-1986[p. 349], again others refer only specifically to sunk cost effects as irrational #cite(<garland-1991>, form: "normal", supplement: none)#cite(<schmidt-2002>, form: "normal", supplement: none), both implying that economic theory alone cannot address the phenomenon.
In any case, the standard textbook economic decision making paradigm under uncertainty #pre_cite(<mas-colell-1995>, prefix: [e.g.], supplement: none), namely Subjective Expected Utility #pre_cite(<savage-1972>, prefix: "see", supplement: none)@anscombe-1963, does allow for, and has been used to model escalation of commitment in different ways #pre_cite(<sleesman-2012>, prefix: "see", supplement: none).
That is to say, Subjective Expected Utility Theory does not do away with marginalism, rendering sunk cost effects rational, but it takes into account individuals' _subjective_ beliefs about an uncertain future.
Subjective Expected Utility Theory has many critics and empirical support is mixed #pre_cite(<ellsberg-1961>, prefix: "see", supplement: none)@allais-1953@tversky-1975@friedman-2014, still, it will serve a springboard role for further theoretical discussion.
To wit, in what follows, decision making under uncertainty according to Subjective Expected Utility Theory will be illustrated in some detail for the idiosyncratic types of decisions politicians face, in order to precisely locate breakpoints of the theory as they relate to other competing or complementary theories and formulating hypotheses for escalation of commitment dynamics for politicians.

== Decision under uncertainty

A decision under uncertainty, in a broader sense, is any decision situation in which the outcome of that decision is not deterministic, i.e. there is a stochastically determined distribution of possible outcomes @edwards-1954.
Some economists then further differentiate uncertain from risky decisions #pre_cite(<edwards-1954>, prefix: [see], supplement: [pp. 390-391]), wherein for risky decisions that distribution is, in principle, observable, i.e. the odds of the possible outcomes can be straightforwardly computed, e.g. a game of roulette, and for uncertain decisions that distribution is not objectively knowable, e.g. horse race betting @anscombe-1963.
More often than not, politicians (like managers) must make decisions under uncertainty in the stricter sense.
According to Subjective Expected Utility, under conditions of uncertainty, individuals envision the possible outcomes of their decision situation, or "states of the world" #pre_cite(<savage-1972>, prefix: none, supplement: [p. 13]), to which they assign a likelihood of obtaining, or "personal probability" #pre_cite(<savage-1972>, prefix: none, supplement: [p. 30]).
Under Subjective Expected Utility Theory, individuals in a decisions situation choose among "acts" #pre_cite(<savage-1972>, prefix: [see], supplement: [p. 14]), or in other words courses of action, which for each possible state of the world are associated with some payoff.
The total utility of an act is given by the cumulative utility of each state of the world, weighted by its subjective probability to obtain, and decision makers choose that act with the greatest expected utility.

For instance, take the following two scenarios
#footnote[In the following section I will employ some mathematical notation for purpose of illustration and conciseness. This paper does not intend to give a full formal logical treatise of Subjective Expected Utility Theory, within this limited scope, the notation will not be rigorous or following any particular convention, rather, where appropriate, it will take inspiration from #cite(<anscombe-1963>, form: "prose", supplement: none) and #cite(<savage-1972>, form: "prose", supplement: none)]:
First, midway through construction, the national railway operator reports that the high-speed rail line currently being built will be delayed 2 years and 50% over-budget.
Second, the national audit authority releases a report, forecasting that expenses for pensions will increase by 100% in 5 years time, if no action is taken.
The first scenario is not dissimilar to the #cite(<staw-1976>, form: "prose", supplement: none) experiment.
In a first stage, legislators are initially asked to approve the funding and timeline of the rail project.
The decisions environment in this first stage, according to Subjective Expected Utility, can be conceived of as follows:
Though there are technically infinite possible outcomes (states $s$ of the world), for example sake we can assume legislators may think of four states of the world: The project is (1) completed on-time and in-budget, (2) completed a little over-budget and late, (3) severely over-budget and very late, (4) never completed.
Legislators assign each state a likelihood of occurring (personal/subjective probability $p$), e.g. $(60%, 20%, 15%, 5%)$ in order, where the probabilities sum up to $100%$.
Legislators can choose between two acts $a$: For simplicity sake, assume they choose between voting in favor appropriating the funds (act $a_f$) and voting against (act $a_g$).
Each act is associated with some value or payoff $A$, e.g. $A_f$ is the value of funds saved in unnecessary highway widenings for act $a_f$, and $A_g$ is the value of an alternative on which the same funds may be spent, if not spent on the infrastructure project if act $a_g$ is chosen.
Finally, each payoff is assigned a utility $u(A_f)$ and $u(A_g)$, according to some utility function $u$ that is idiosyncratic to the legislator.
A utility function $u$ separate from the value $A$ is used to allow for diminishing marginal utility, i.e. the 100 billionth dollar saved is not as useful one billionth #pre_cite(<edwards-1954>, prefix: [see], supplement: none)@savage-1972.
The total payoff fore each state is given by @3_rail, note that ideal value of each act is subtracted from the other to represent the opportunity cost of choosing one act over the other.
To choose among the alternatives, legislators will/should calculate the expected utility of each act by $E(u(a))=p(s_(1a))*u(s_(1a)) + p(s_(2a))*u(s_(2a))+ p(s_(3a))*u(s_(3a)) + p(s_(4a))*u(s_(4a))$, substituting $a$ for the respective act, and choose the act with the higher expected utility.
Assuming a majority of legislators found the expected utility of voting in favor to be greater than voting against, the second stage, with the news of the delay and cost overrun, can be outlined in a similar way to the first stage.
The possible states of the world may now include: The project will be (1) completed with the specified delay and cost increase, (2) further delayed and over-budget, and (3) never completed, and a possible distribution of subjective probabilities for one legislator may be $(30%, 60%, 10%)$, in order, with acts $a_(f f)$ voting to continue the funding and $a_(g g)$ voting to stop the project (see @3_rail_second).
Expected utility is calculated as before.
Crucially, at this stage Subjective Expected Utility Theory does not strictly necessitate that the project be abandoned.
Finally, note that, even assuming politicians do not solely rely on their personal judgement for determining the likelihood distribution of the end-states of the large infrastructure project, but seek out information derived from scientifically sound strategies of quantifying that likelihood distribution, reasonable individuals will disagree over the assumptions made in the pursuit of any such strategy.
I.e. the probability distribution of possible outcomes for this kind of decisions scenario is fundamentally subjective, unlike the probability distribution of a coin-toss, which will always be 50% heads -- 50% tails, or _objective_.
#figure(
  placement: auto,
  caption: [Decision scenario for funding large rail project under Subjective Expected Utility Theory],
  table(
    columns: (2fr, 11fr, 2fr, 10fr, 10fr),
    align: (left),
    stroke: none,
    table.header(
      [],
      [State $s$],
      [$p$],
      [Payoff for act $a_f$],
      [Payoff for act $a_g$],
    ),
    table.hline(start: 0, stroke: 0.7pt),
    [$s_1$], [on-time and in-budget], [$.6$], [$A_f-A_g$], [$A_g-A_f$],
    [$s_2$], [a little over-budget and late], [$.2$], [$A_f-(A_g + "bad news"$)], [$A_g-(A_f - "bad news"$)],
    [$s_3$], [severely over-budget and very late], [$.15$], [$A_f-(A_g + "bad news"$)], [$A_g-(A_f - "bad news"$)],
    [$s_4$], [never completed], [$.05$], [$-("sunk costs" + A_g)$], [$A_g$]
  ),
)<3_rail>
#figure(
  placement: auto,
  caption: [Decision scenario for funding large rail project under Subjective Expected Utility Theory],
  table(
    columns: (2fr, 11fr, 2fr, 10fr, 10fr),
    align: (left),
    stroke: none,
    table.header(
      [],
      [State $s$],
      [$p$],
      [Payoff for act $a_(f f)$],
      [Payoff for act $a_(g g)$],
    ),
    table.hline(start: 0, stroke: 0.7pt),
    [$s_1$], [no further delay and overrun], [$.3$], [$A_(f f)-A_(g g)$], [$A_(g g)-A_(f f)$],
    [$s_2$], [further delay and overrun], [$.6$], [$A_(f f)-(A_(g g) + "bad news"$)], [$A_(g g)-(A_(f f) - "bad news"$)],
    [$s_3$], [never completed], [$.1$], [$-("sunk costs" + A_(g g))$], [$A_(g g)$]
  ),
)<3_rail_second>
// #grid(
//   column-gutter: 1em,
//   columns: (1fr, 1fr),
//   [#figure(
//       caption: [Something],
//       table(
//         columns: (0.5fr, 1fr, 0.5fr, 1fr, 1fr),
//         align: left,
//         stroke: none,
//         table.header([$s$], [], [$p$], [Payoff $f$], [Payoff $g$]),
//         table.hline(start: 0, stroke: 0.7pt),
//         [1], [completed on-time and in-budget], [.6], [$A_f-$], [payoff],
//         [2], [completed a little over-budget and late], [.2], [$A_f-$ cost of delay & extra funding], [payoff],
//         [3], [completed a severely over-budget and very late], [.15], [$A_f-$ cost of delay & extra funding], [payoff],
//         [4], [never completed], [.05], [-$A_f$], [payoff],
//       ),
//     )
//   ],
//   [#figure(
//       caption: [Something],
//       grid(
//         columns: (1fr, 1fr, 1fr),
//         [state], [outcome], [payoff],
//         [state], [outcome], [payoff],
//         [], [], [],
//       ),
//     )
//   ],
// )

Turning the second scenario, the decisions environment according to Subjective Expected Utility Theory may be described as follows:
// With act $a_r$ voting for reform and act $a_s$ voting to stay the course.
Assuming, for the sake of illustration, legislators' primary rational self-interest is to get re-elected #pre_cite(<mayhew-1974>, prefix: [e.g.], supplement: none) and voters vote purely economically #pre_cite(<meltzer-1981>, prefix: [e.g.], supplement: none), payoffs $A$ for any act $a$ may be modelled as votes lost or gained in the legislator's constituency resulting from act $a$.

Uncertainty rises from the fact that the audit authority's report is a forecast.
Their projections could, therefore, be accurate ($s_1$), significantly overestimated ($s_2$), e.g. due to exogenous shocks, higher than anticipated immigration, a pandemic, etc., or significantly underestimated ($s_3$), e.g. due to overly optimistic assumptions in the aforementioned categories.
A legislator may put chances at $(50%, 30%, 30%)$, in order.
Assuming non-debt government revenue stays constant for 5 years (inflation adjusted), in the face of the report politicians may find themselves choosing among these acts: $a_s$ no reform, redirecting funds from other programs, $a_d$ no reform, take on more debt, $a_c$ reform by cutting pension payments, $a_r$ reform by levying new taxes.
Fo this decision scenario, assume further that the three relevant economic classes are retirees, the young & rich, and the young & poor (young relative to retirees).
It is beyond the scope of this paper to develop a full matrix for all the payoffs, @3_pension gives a sketch of a conceivable electoral payoff structure, given the previous assumptions.

#figure(
  placement: auto,
  caption: [Decision scenario for pension reform under Subjective Expected Utility Theory],
  table(
    columns: (15fr, 10fr, 10fr),
    align: (left),
    stroke: none,
    // table.header(
    //   [$s_1$ projection correct],
    //   [$s_2$ pessimistic $"projection"^#sym.dagger$],
    //   [$s_3$ optimistic $"projection"^#sym.dagger$],
    // ),
    table.cell(
      colspan: 3,
      [_Cut other social programs_ $a_s$],
    ),
    [$s_1$ projection correct],
    [$s_2$ pessimistic $"projection"^#sym.dagger$],
    [$s_3$ optimistic $"projection"^#sym.dagger$],
    table.hline(start: 0, stroke: 0.7pt),
    [

    ],
    [
      $#sym.arrow.t$ retirees\ $#sym.approx$ young & high-income\ $#sym.arrow.b$ young & low-income
    ],
    [

    ],
    table.cell(
      colspan: 3,
      [*$a_d$ pay with debt*],
    ),
    [$s_1$ projection correct],
    [$s_2$ pessimistic $"projection"^#sym.dagger$],
    [$s_3$ optimistic $"projection"^#sym.dagger$],
    table.hline(start: 0, stroke: 0.7pt),
    [
      Retirees (growing share of constituency) support politician. Young & affluent oppose government lending.
    ], [$#sym.arrow.t$ retirees\ $#sym.arrow.b$ young & high-income\ $#sym.approx$ young & low-income], [],
    table.cell(
      colspan: 3,
      [*$a_c$ cut pensions*],
    ),
    [$s_1$ projection correct],
    [$s_2$ pessimistic $"projection"^#sym.dagger$],
    [$s_3$ optimistic $"projection"^#sym.dagger$],
    table.hline(start: 0, stroke: 0.7pt),
    [
      Retirees (growing share of constituency) don't support politician. Young constituents ambiguous.
    ], [$#sym.arrow.b$ retirees\ $#sym.arrow.b$ young & high-income\ $#sym.approx$ young & low-income], [],
    table.cell(
      colspan: 3,
      [*$a_r$ new taxes*],
    ),
    [$s_1$ projection correct],
    [$s_2$ pessimistic $"projection"^#sym.dagger$],
    [$s_3$ optimistic $"projection"^#sym.dagger$],
    table.hline(start: 0, stroke: 0.7pt),
    [
      Retirees (growing share of constituency) support politician. Young constituents oppose.
    ], [], [],
    table.hline(start: 0, stroke: 0.7pt),
    // table.cell(
    //   colspan: 3,
    //   [$#sym.zws^#sym.dagger$Theorized absolute votes gained/lost by economic classic, compared to status quo],
    // )
  ),
)<3_pension>

// #figure(
//   placement: auto,
//   caption: [Decision scenario for pension reform under Subjective Expected Utility Theory],
//   table(
//     columns: (15fr, 10fr, 10fr),
//     align: (left),
//     stroke: none,
//     table.header(
//       [$s_1$ projection correct],
//       [$s_2$ pessimistic $"projection"^#sym.dagger$],
//       [$s_3$ optimistic $"projection"^#sym.dagger$],
//     ),
//     table.hline(start: 0, stroke: 0.7pt),
//     [
//       *$a_s$ cut other social programs*:\ Retirees (growing share of constituency) support politician. Young & poor don't support.
//     ], [$#sym.arrow.t$ retirees\ $#sym.approx$ young & high-income\ $#sym.arrow.b$ young & low-income], [],
//     [
//       *$a_d$ pay with debt*:\ Retirees (growing share of constituency) support politician. Young & affluent oppose government lending.
//     ], [$#sym.arrow.t$ retirees\ $#sym.arrow.b$ young & high-income\ $#sym.approx$ young & low-income], [],
//     [
//       *$a_c$ cut pensions*:\ Retirees (growing share of constituency) don't support politician. Young constituents ambiguous.
//     ], [$#sym.arrow.b$ retirees\ $#sym.arrow.b$ young & high-income\ $#sym.approx$ young & low-income], [],
//     [
//       *$a_r$ new taxes*:\ Retirees (growing share of constituency) support politician. Young constituents oppose.
//     ], [], [],
//     table.hline(start: 0, stroke: 0.7pt),
//     table.cell(
//       colspan: 3,
//       [$#sym.zws^#sym.dagger$Theorized absolute votes gained/lost by economic classic, compared to status quo],
//     )
//   ),
// )<3_pension>

// #figure(
//   placement: auto,
//   caption: [Decision scenario for pension reform under Subjective Expected Utility Theory],
//   table(
//     columns: (10fr, 10fr, 10fr, 10fr),
//     align: (left),
//     stroke: none,
//     table.header(
//       [Payoff for act $a_s$],
//       [Payoff for act $a_d$],
//       [Payoff for act $a_c$],
//       [Payoff for act $a_r$],
//     ),
//     table.hline(start: 0, stroke: 0.7pt),
//     [
//       Payoff for act $a_s$: Retirees (growing share of constituency) support politician. Young & poor don't support.
//     ],
//     [
//       Payoff for act $a_d$: Retirees (growing share of constituency) support politician. Young & affluent oppose government lending.
//     ],
//     [
//       Payoff for act $a_c$: Retirees (growing share of constituency) don't support politician. Young constituents ambiguous.
//     ],
//     [
//       Payoff for act $a_r$: Retirees (growing share of constituency) support politician. Young constituents oppose.
//     ],
//   ),
// )<3_pension>

// #figure(
//   placement: auto,
//   caption: [Decision scenario for pension reform under Subjective Expected Utility Theory],
//   table(
//     columns: (3fr, 15fr, 2fr, 10fr, 10fr, 10fr, 10fr),
//     align: (left),
//     stroke: none,
//     table.header(
//       [],
//       [State $s$],
//       [$p$],
//       [Payoff for act $a_s$],
//       [Payoff for act $a_d$],
//       [Payoff for act $a_c$],
//       [Payoff for act $a_r$],
//     ),
//     table.hline(start: 0, stroke: 0.7pt),
//     [$s_1$], [projection correct], [$.5$], [], [], [], [],
//     [$s_2$], [projections incorrect (better)], [$.3$], [], [], [], [],
//     [$s_3$], [projection incorrect (worse)], [$.2$], [], [], [], [],
//   ),
// )<3_pension>


This distinction between uncertain and risky decisions leaves room to envisions several mechanisms by which escalation of commitment may occur with an economic framework.
For the sake of precision then, escalation of commitment behavior among politicians is not necessarily interesting because its irrational or entirely incompatible with economic models of politician behavior

Subjective utility theory #pre_cite(<savage-1972>, prefix: "see e.g.", supplement: none) is the workhorse micro-economic foundation for individual decision making under uncertainty.


Under these basic assumptions, escalation of commitment is an _irrational behavior_, and is referred to as such by most psychologists and organizational behavior scholar who research this behavior #pre_cite(<arkes-1985>, prefix: none, supplement: none)

// Still, exact approaches differ among those literature strands, #cite(<bragger-2003>, form: "prose", supplement: none) synthesize from this disparate research: "escalation of commitment are situations in which there is an initial investment of resources, some indication of nonprofit making and continued investment in the face of negative feedback" @bragger-2003[p. 6].
In his seminal paper, #cite(<staw-1976>, form: "prose", supplement: none), a organizational behavior and management researcher,


Presumably from this principle #cite(<staw-1976>, form: "prose", supplement: none) derives the expectation that "intuitively, one


Subjects in #cite(<staw-1976>, form: "author", supplement: none)'s experiment violated this principle


that individuals base their decisions only on the marginal utility of an alternative, i.e. every decision must general maximal utility for minimal input


In this seminal paper, #cite(<staw-1976>, form: "author", supplement: none), a organizational behavior researcher,

This seminal paper employs a psychological

#cite(<staw-1976>, form: "prose", supplement: none) foll

This seminal research employs a psychological len


#cite(<arkes-1985>, form: "prose", supplement: none)

#cite(<staw-1976>, form: "prose", supplement: none) observed that subjects


Prima facia, without reference to any particular decision making paradigm, the observation that individuals continue a course of action after receiving negative feedback, is unintuitive and runs counter to even basic assumptions of rational behavior, w


even in the face of uncertainty is on its face puzzling and specifically run counter to expectations of _economic_ models of decision-making. Here economic models refer to Subjective Expected Utility Theory #pre_cite(<savage-1972>, prefix: "e.g.", supplement: none) and


and runs counter to the most basic assumptions of rational decision making, i.e. "efficient, i.e. maximizing output for a given input, or minimizing input for a given output" @downs-1957[p. 5]


To what extent it is irrational behavior is more complicated. Psychologists refer to irrational behavior in the sense that it contradict expectation of standard economic theory, here subjective expected utility theory.

Economists and organizational behavior scholars, naturally, consider escalation of commitment an irrational behavior.
naturally runs counter to intuitive expectations of individuals' behavior , and mo

is on its face irrational, even before t


Two general strands in the existing literature can be distinguished: Economic and psychological. Economic accounts of escalation of commitment

// Individual decision making is a broad topic and researched, To define escalation of commitment,

// Individual decision making is of interest in most social science, the escalation of commitment literature forms a subset of that field that has been primarily concerned with decision making in _investment situations_. While this paper is motivated by some of the limitations of those previous approaches in explaining elected politicians' decisions making, that specifically relate to how investment and returns on that investment are conceptualized, framing politicians' decision making environment as an investment decision, defined as "situations in which resources are allocated to one decisional alternative over others" @staw-1976[p. 28], is an efficient starting point. Two general strands in the existing literature can be distinguished: Economic and psychological. Economic accounts of escalation of commitment

// Generally, two overarching categories of approaches can be distinguished: Economic and and psychological. The economic supercategory includes those approaches that




// Individual decision making is a broad and well-researched field, for the purpose of researching escalation of commitment among politicians,


// conceptualizing politicians' decisions as investment decisions, i.e. "situations in which resources are allocated to one decisional alternative over others" @staw-1976[p. 28], is generally appropriat .

// While this research aims to fill

// to formulate a concept of politicians' idiosyncratic decision making environment

// Individual decision making is a broad and well-researched field, so, for the purpose of this paper,


// the existing literature on escalation of commitment

// escalation of commitment is a subset of


// the existing literature on escalation of commitment generally can be to more narrowly investigate investment decisions, i.e. "situations in which resources are allocated to one decisional alternative over others" @staw-1976[p. 28]


// Individual decision making is a diverse, broad and well-researched topic, so I will first narrow the scope


"Decision making under risk can be viewed as a choice between prospects or gambles" @Kahnemann1979
In his seminal article,

#pre_cite(<edwards-1954>, prefix: none, supplement: none)

In his seminal study, #cite(<staw-1976>, form: "prose") observed that participants, when faced with an investment decision will

#cite(<staw-1976>, form: "prose", supplement: "p. 27") puts it, "intuitively, one would expect individuals to reverse decisions or to change behavior which results in negative consequences". Beyond

The rational choice literature suggests that #pre_cite(<downs-1957>, prefix: "e.g.", supplement: none)


// Definition escalation of commitment
Within the logic of rational choice theory, escalation of commitment refers to the irrational decision to allocate additional resources to one decisional
alternative over another
Investment decisions =


Prospect theory: "Loss-framed decisions (which include escalation decisions) leading to loss-aversion, and thus risk-seeking behavior (in this case further expenditures)"" @sleesman-2012[p. 544]


== theoretical distinction from gambler's fallacy

== theoretical distinction from status-quo bias

Notes:

Difference between status quo bias, gambler's fallacy

Take into account that people need to feel a degree of personal responsibility (if post-hoc rationalization is the relevant mechanism ,"self-justification may similarly depend upon the level of personal responsibility one has had in determining a particular course of action and the outcomes resulting from those actions" ) @staw-1976[p. 30]

Subjective expected utility @savage-1972


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
