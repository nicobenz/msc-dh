# Research question

<!-- Written by `/margi propose` / `/margi challenge`. Every statement cites (src: file:lines) or (user, date). -->

## Working title
"Developing and Evaluating a Cloud-based Voicebot for Medical Informed Consent. A Modular System Using Speech-to-Speech LLMs in a Directed Acyclic Graph" (src: PROPOSAL.md:15)

## Research question
"How can an AI-based voicebot system for patients medical informed consent be developed and evaluated?" (src: PROPOSAL.md:19)

## Sub-questions and hypotheses
No formal sub-questions or hypotheses. An answer to the research question is the description of the development process and a template of the steps used; the evaluation is the proof of the process' results. (user, 2026-10-16, open-questions.md) The process counts as having worked if the evaluation yields high similarity scores. (user, 2026-10-16, open-questions.md)

## Motivation and relevance
- Doctors have little time (a couple of minutes) to explain planned procedures to patients without medical background, although German law obliges doctors to hold pre-procedure consultations for informed consent. Result: patients don't know what to expect or how to prepare, and have an unsatisfactory patient journey. (src: PROPOSAL.md:3)
- German healthcare is described as having redundant, inefficient processes that leave doctors little time; patients often feel powerless over their own health decisions. (src: PROPOSAL.md:23)
- Aim: patients prepare with an AI system, know the basics, and prepare questions/follow-ups; doctors skip the basics and use the time for individual concerns. This gives patients more control. (src: PROPOSAL.md:5, 23)
- Setting: written at the German company Thieme Compliance, which focuses on patient informed consent leaflets and wants to expand into digital approaches. (src: PROPOSAL.md:9)

## Expected contribution
- Mainly practical: a showcase of building a voicebot plus a template for evaluating its performance. (src: PROPOSAL.md:49)
- The evaluation pipeline is meant to be domain-agnostic, depending only on a gold standard dataset for the voicebot's domain, so it can be reused in other fields. (src: PROPOSAL.md:49)

## Scope and exclusions
- In scope: the voicebot as preparation for the in-person consultation; evaluation of the system's answers per node against the company's gold standard on one exemplary default case. (src: PROPOSAL.md:5, 11, 39)
- Out of scope: topics outside the preparation scope, which the doctor should cover (guardrail design intent). (src: PROPOSAL.md:7)
- Out of scope: testing the evaluation pipeline in other domains; it is only described in a future research section. (user, 2026-10-16, open-questions.md)
- Out of scope: evaluation of more cases than the single default case (to be discussed in findings/conclusion); checking the quality of the gold standard dataset. (src: PROPOSAL.md:39, 45)
- No evaluation of the first part (system building), only reasoning for design and architecture decisions. (src: PROPOSAL.md:43)

## Sources
- PROPOSAL.md (read 2026-10-16). No challenge sessions yet.
