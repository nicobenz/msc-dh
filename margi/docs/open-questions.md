# Open questions

<!-- Unresolved points from propose runs and challenge sessions. One bullet each, with the date it was raised. -->

- **Research question** (2026-10-16): The question asks "how can" a system be developed and evaluated. What would count as an answer, and which sub-questions or hypotheses structure the two parts?
- **Method** (2026-10-16): The gold standard is treated as perfect, and similarity to it as the performance goal. How does high similarity to the gold items show that the voicebot's answers are correct and safe for patients?
- **Method** (2026-10-16): How will the chosen metrics themselves be validated, for example against human judgement of the candidates, given that each has stated weaknesses?
- **Data / corpus** (2026-10-16): How many gold items and nodes does the dataset contain, in what format, and what is the exemplary case?
- **Data / corpus** (2026-10-16): Are you permitted to use, describe and publish the gold standard and the system outputs in the thesis (confidentiality, licensing, patient-related content)?
- **Method** (2026-10-16): The 1000 outputs per item come from the same system under the same input. What varies between them (sampling temperature, speech input), and how do you account for this in the similarity scores?
- **Method** (2026-10-16): The system is a speech-to-speech voicebot, but the evaluation compares text per node. Which part of the voice pipeline (speech recognition, speech output) is evaluated, if any?
- **Method** (2026-10-16): Why graph-based dialogue with langgraph and fastapi rather than alternatives, and what is the "DAG" in the title as against a cyclic graph?
- **Field and related work** (2026-10-16): The listed related work covers e-learning and language learning. Which literature covers voice or conversational agents in healthcare and informed consent, LLM evaluation against references, and LLM judges?
- **Expected contribution** (2026-10-16): The evaluation pipeline is called domain-agnostic. What in the thesis will show that, given it is tested in one domain on one case?
- **Planned outline** (2026-10-16): Which chapters of the thesis correspond to the sections named in the work plan, and how do they map to the current headings in the thesis files?
- **Constraints** (2026-10-16): What are the submission date, the length limit and the formal requirements, and who are the advisors with what expectations?
