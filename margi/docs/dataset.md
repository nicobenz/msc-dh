# Dataset / corpus

<!-- Written by `/margi propose` / `/margi challenge`. Every statement cites (src: file:lines) or (user, date). -->

## Description
A gold standard evaluation dataset with textual data on what the voicebot is supposed to say at each node of the dialogue graph. (src: PROPOSAL.md:11, 39)

## Provenance and access
Provided by the company's editorial services team. (src: PROPOSAL.md:39, 45)

## Selection criteria
Covers one exemplary case, chosen because it is the default, most common case; this is the scope the company needs. (src: PROPOSAL.md:39)

## Size and format
- Textual gold items per node (number of items not stated). (src: PROPOSAL.md:39)
- Generated test data: 1000 outputs per gold item per node (limited by company budget/cost), i.e. 1000 candidates per gold standard item. (src: PROPOSAL.md:45)

## Preprocessing
_not yet documented_

## Limitations and biases
- Only one exemplary case; an adaptive gold standard is judged infeasible because of too many possible variables. (src: PROPOSAL.md:39)
- Quality of the gold standard is not checked; it is assumed to be the perfect situation and the performance goal. (src: PROPOSAL.md:45)
- Narrow single-situation evaluation reduces impact and generalisability of findings. (src: PROPOSAL.md:76)
