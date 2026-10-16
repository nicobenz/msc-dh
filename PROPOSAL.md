# Proposal

Medical doctors don't have lots of time to talk to their patients about planned procedures and their pros and cons. Usually they only spend a couple of minutes explaining complex ideas to patients that do not possess the medical background for understanding what is about to happen. This is even though in Germany medical doctors are obligated by law to do pre-procesure consultations for patients informed consent for better decisions regarding their own health. This leads to patients that don't know what to expect, don't know how to prepare and an overall unsatisfactory patient journey in clinics.

The goal of this thesis is to develop an AI-based voicebot that patients can talk to about their planned procedure as a preparation for the in-person consulations with their medical doctor. The idea is that patients can prepare for the consultations using an AI system so that they already know the basics and can prepare questions for their medical doctor or ask follow-ups there. This gives patients more control about their health decisions and medical doctors don't have to waste time talking about the basics and can use the precious time covering questions or more individual concerns of the specific patient.

To achieve this I will develop a voice-based AI system that uses a graph-based approach to guide the dialogue with the patient and the LLM where each node provides specific instructions for the specific step as well as the relevant data that is needed for that step. This puts predictable structure to the appraoch and provides guardrails to the LLM to not let the dialogue get into areas that are outside the preparation scope and the system is not intended for and that should be covered by the medical doctor instead.

The thesis will be written in the German company Thieme Compliance that focusses on patient informed consent leaflets and tries to expant more into digital approaches to informed consent.

Another part of the thesis is evaluation of the system. Answers of the system for each node will be tested against a gold standard dataset that will be provided by the company. This gold standard makes it possible to use methods in NLP and genrative AI like LLM judges to measure the performance of the whole system and highlight strengths and weaknesses.

## Title ideas

Developing and Evaluating a Cloud-based Voicebot for Medical Informed Consent. A Modular System Using Speech-to-Speech LLMs in a Directed Acyclic Graph

## Research question

How can an AI-based voicebot system for patients medical informed consent be developed and evaluated?

## Motivation

The German healthcare system suffers from many redundant and inefficient processes for medical doctors that results in them having only a very low amount of time to actually talk to their patients for informed medical consent. On the other hand, patients often feel powerless and without any real possibility to decide on their own health and think they have to just have to do what their medical doctors tell them. My goal is to improve both situations by giving patients more power in form of information what results in better informed patients that then need less time in the in-person consultations and result more efficient time spend where both parties benefit.

## Field and related work

ilic2023 give an broad overview on the usage of intelligent systems for e-learning. They differentiate between different kinds of learning agents such as pedagogical agents that give hints or solutions and conversational agents that are directly involved with the user via conversation. They concluded that especially conversational agents could increase student motivation and engagement. They also highlighted personalisation through evaluation of learning progress and adaptive scaling of difficulty as key areas where intelligent e-learning systems have the possibility to really show their value.

bianchi2004 created a conversational system based on a dictionary approach that pieced together answers from pre-selected phrases and syntactic rules. They also included an ontology based knowledge component that helped in the generation of correct replies.

griol2014 created a chatbot for elementary school students that used speech input for answers. Even though the reply was just taken from a pre-selection, the tool was deemed very effective by domain experts.

procter2017 created a conversational e-learning system in their master's thesis but focussed more on gathering real-time user data instead of enhancing the core mechanics of the interaction itself.

zhou2024 and shishido2023 focussed on using conversational systems in the setting of English as a foreign language, but are not on a level of true interactivity yet. zhou2024 used a system that provided feedback only in case of pronunciation errors while shishido2023 provided a way of inputting the answer to a multiple choice question via speech to trigger a spoken feedback.

## Data / corpus

I will be provided a gold standard evaluation dataset by the editorial services team. That dataset contains textual data what the voicebot is supposed to say during each node. However, that will not cover all different situations but rather one exeplary case. We have to acceept this limitation since adaptive gold standard dataset is not possible. This would depent on too many variables that could occur during the voicebot use. The evaluation will use this one exemplary case since this is the default most common case. To evaluate the performance on that situation is the scope that the company needs. More broad evaluation of more cases is outside of scope for this thesis, but will be covered in findings / conclusion.

## Method

This thesis has two main parts. First is building the voicebot system where it is mostly about design of the graph system and reasoning of the software used and why. I will build the graph network using langgraph and choose fastapi as a framework for the backend. No evaluation here, only reasoning for design and architectural decisions. Those are also influenced by the stack that the company uses. This first part is more hands-on and applied science.

Second part is more empirical and more scientific in nature. This part will focus on the evaluation of the systems performance that was build in part 1. For that we use the gold standard dataset that the editorial services team provided. Checking the quality of the gold standard dataset is outside of scope of this thesis, so we assume that the provided dataset is in fact gold standard and forms the performance goal of the whole system. So in other words, making the system reach the highest most similarity scores to the gold standard dataset is assumed to be the primary goal since the gold standard dataset comprises the perfect situation. To measure similarity, I will use traditional methods from NLP and fairly new methods generative AI. The main idea is to automate the evaluation dataset to put its input data for each node into the system and collects results for each node. Due to budget and cost restrictions set by the company, we can collect 1000 outputs for each input from the evaluation dataset for each node, resulting in a test data size that is appropriate. This then means that I have 1000 candidate items for each gold standard item. I can then measure similarity scores based on these methods/metrics: Embedding similarity, bag of words, TF-IDF, Methods from machine translation like Word Error Rate, Edit Distance, etc. and LLM judges using different prompt templates. All these methods have pros and cons. BoW, TF-IDF and Machine Translation metrics like Word Error Rate suffer from only checking lexical overlap by not catching synonyms and from small sample size but can perform well to find special key words that are relevant to e.g. check for correct medical terms. Cosine similarity of embedding vectors can check semantic overlap including synonyms but might struggle due to medical jargon and report overly high similarity scores due to everything being in the medical domain and thus more similar due to the fact that we are working inside a special domain. LLM judges are very flexible in grading condidates in respect to the gold standard but LLMs suffer from being inherently non-probabilistic and hard to reproduce. To reduce that, I will use DeepEval for the LLM judges where not the prodicted score token is used but rather the logprobs of the model are accessed to see the distribution of the predicted tokens. This ca then be used to get a more accurate score by calculating the weighted mean of the logprobs in the score prediction. However, LLM judges have another downside in that are also hard to align to the use case and changing LLM judge prompts mid-test makes all previous scorings invalid. And even improving the prompt first could be seen as some form of overfitting because the prompt is iteratively improved to produce high scores for that specific dataset. All these methods have their pros and cons and because of that I chose this combination to cover different perspectives and aspects to get a better overall evaluation by highlighting different approaches.

## Expected contribution

The contribution is mainly practical since this is a very practical thesis in a company. The contribution will be a showcase to build a voicebot along with a template for evaluation to check the performance of the voicebot. The evaluation pipeline will be domain-agnostic and only depend on a gold standard dataset for the voicebots domain, so the template can be used in different fields as well.

## Planned outline

Week 1-2:
Request all needed permissions for cloud deployments and company internal repositories. Decide on stack for web app by checking what is used in company. Write introduction incl. problem description and background of company.

Week 3-4:
Mainly literature research while permission requests are being worked on by IT staff. End week 4 with good draft of previous work section.

Week 5-8:
Build the web app and deploy to the companies cloud for internal stakeholders to test and give feedback. Lets them provide feedback for iterative improvement of the app so that subject matter experts can test themselves and can find the most obvious issues before evaluation can start. End with rough draft of architectural decision section.

Week 9-10:
Collect the 1000 candidate outputs per node by automating interaction with the web app. Write draft on data collection.

Week 11-14:
Build the evaluation pipeline. Set up all the code and CI/CD to have automated runs of the pipeline. Get a walking skeleton running in the first one or two weeks, then flesh it out by adding more and more of the mentioned metrics. Draft methods section while evaluation pipeline is running (probaly takes a couple of days to finish due to slow LLM judges for several thousand items).

Week 15:
Write findings section.

Week 16-20:
Practical and empirical parts finished. Write and improve remaining chapters and prepare submission.

## Constraints

Constraits were already mentioned throughout the other chapters. Main constraints are that we are in a company setting and the company sets a scope on what to build and what to evaluate, so we are stuck with a single gold standard dataset on the single default situation. This mean we can only do a very narrow evaluation of a single situation which reduces the impact and the generalisation capabilities of the findinds.
