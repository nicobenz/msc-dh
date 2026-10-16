# Method

<!-- Written by `/margi propose` / `/margi challenge`. Every statement cites (src: file:lines) or (user, date). -->

## Approach
Two parts. (1) Applied/hands-on: build the voicebot, focusing on design of the graph system and reasoning for software choices; no evaluation in this part. (2) Empirical: evaluate the system built in part 1 against the gold standard. (src: PROPOSAL.md:43-45)

System concept: a voice-based AI system in which a graph guides the dialogue between patient and LLM; each node carries specific instructions and the data needed for that step. This gives predictable structure and guardrails against drifting outside the preparation scope. (src: PROPOSAL.md:7)

Evaluation procedure: feed the gold dataset's input for each node into the system automatically, collect 1000 outputs per gold item and node, and measure similarity of each candidate to the gold item. (src: PROPOSAL.md:45)

## Tools and implementation
- langgraph for the graph; fastapi for the backend; stack choices also influenced by the company's stack (stack decision still to be checked in weeks 1-2). (src: PROPOSAL.md:43, 55)
- Web app deployed to the company's cloud for internal stakeholders and subject matter experts to test. (src: PROPOSAL.md:60)
- Evaluation pipeline with code and CI/CD for automated runs. (src: PROPOSAL.md:66)
- DeepEval for LLM judges. (src: PROPOSAL.md:45)

## Justification and alternatives considered
Metric combination chosen to cover different perspectives and aspects. (src: PROPOSAL.md:45) Per metric (src: PROPOSAL.md:45):
- BoW, TF-IDF, machine-translation metrics (Word Error Rate, Edit Distance, "etc."): only lexical overlap, miss synonyms, suffer from small sample size; good for key words such as correct medical terms.
- Embedding cosine similarity: captures semantics and synonyms; may struggle with medical jargon and report inflated similarity because everything is in the medical domain.
- LLM judges (several prompt templates): flexible, but hard to reproduce; mitigated by using DeepEval and the weighted mean over logprobs of the score tokens instead of the predicted token.

- Graph: the dialogue is not linear; the path through the graph depends on the patient's answers. (user, 2026-10-16, open-questions.md)
- langgraph: current industry standard for node-based LLM flows, the best pick from a company perspective, "maybe not from a scientific perspective". (user, 2026-10-16, open-questions.md)
- fastapi: part of the company stack; Flask or Django would be possible, but fastapi scales best if the prototype becomes a product. (user, 2026-10-16, open-questions.md)
- Why 1000 outputs: modern LLMs have no temperature parameter, so outputs vary for the same input; 1000 outputs capture the output distribution per node for descriptive statistics instead of relying on one unstable output. (user, 2026-10-16, open-questions.md)

## Evaluation and validation
- Similarity to the gold standard is treated as the primary performance goal. (src: PROPOSAL.md:45)
- Metrics: embedding similarity, bag of words, TF-IDF, WER, edit distance, LLM judges with different prompt templates. (src: PROPOSAL.md:45)
- Pre-evaluation: internal stakeholders/subject matter experts test the app to find obvious issues. (src: PROPOSAL.md:60)
- Metrics are not validated in this thesis; it relies on literature and past work, especially for LLM judges, because the company project has no metric validation rounds. (user, 2026-10-16, open-questions.md)
- Similarity to the gold standard cannot prove correctness or safety, but since the gold items were created by subject matter experts as correct and safe, higher similarity is taken to correlate with higher correctness and safety. (user, 2026-10-16, open-questions.md)
- Text tokens from the speech-to-speech model are evaluated, not the audio. (user, 2026-10-16, open-questions.md)

## Limitations
- LLM judges are hard to align to the use case; changing a judge prompt mid-test invalidates earlier scores; iteratively improving the prompt on this dataset risks overfitting. (src: PROPOSAL.md:45)
- Gold standard quality unchecked; only one case evaluated. (src: PROPOSAL.md:39, 45, 76)
- No metric validation (see above). (user, 2026-10-16, open-questions.md)
- Slow LLM judges: pipeline run takes probably a couple of days. (src: PROPOSAL.md:66)
