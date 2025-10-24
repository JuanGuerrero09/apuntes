---
Class: "[[06 Machine Learning]]"
Date: 2025-10-17
Last Modified: Friday 17th October 2025 13:00
Professor:
email:
tags:
---
# 👨🏽‍🏫Professor


# 📖Summary
Approach:
- Weekly lectures fridays
- Labs bi weekly
No exams, note based on capstone project.
- 2-3 students
- handed out in December
- use lab sessions for it


# 🕸️Resources and Relevant Links


# 📚Notes


# Introduction and Diving into Classification

$$
\text{Deep Learning} \in \text{Representation Learning} \in \text{Machine Learning} \in \text{AI} 
$$

## Four Pillars of ML

### Supervised Learning

#### Classification


Data: dense data (images, text, ..) and closed set labels
Task: find the best fitting label for image
Metric: accuracy, precision, recall
Examples: cell classification, particle classification, sentiment analysis

- Decision trees
- K-nearest neighbours
- Support vector machine
- Random forest
- Naive Bayes classifier

#### Regression

Data: dense signals and dense outputs (eg. scalars in a 2D plane) (IMPROVE THIS!)
Task: Closest output to target
Metric: IoU, Dice score, fidelity
Examples: cell segmentation, denoising, super-resolution


- Linear/non-linear regression
- Local regression (LOESS)
- Ordinary least squares regression
- Neural networks


### Unsupervised Learning

#### Cluster Analysis

data: signals of any kind?
task: items close to each-other (distance metric requires)
metric: Silhouette Score, Rand Index
examples: topic modeling, agent modelling, behavior matching


- Hierarchical clustering
- K-means clustering
#### Dimension Reduction

data: dense signals (img, videos, audio, etc)
task: find smaller representation which stills allows reconstruction, ej, from 3D to 2D or 1D
metric: mean squared error, mean absolute error
examples: complex data analysis, comparisons, data generation

- Linear discriminant analysis
- Principal component analysis




Definitions:

Supervised vs Unsupervised learning

Supervised 
- Classifciation
- Regression

Unsupervised learning
- Cluster analysis 
- Dimension reduction

Decision tree must be pure?

Check the labs

## Decision trees

Where to first place a threashold.
Features 

Start from Root node to leaf nodes

Can be binary (only two possible outcomes) or non binary

A decision tree can be rephrased by a sequence of *if then else statements*.

#### How to build a Tree?

Given a dataset of $n$ samples $D = {<\vec{x_0},\vec{y_0}>, <\vec{x_1},\vec{y_1}>, ..., <\vec{x_n},\vec{y_n}>}$  $\mathbb{N}$
We assume to have a binary classification task with features $\vec{x_i} \in \mathbb{R}^c$ and labels $y \in \mathbb{N}$ where y = 1 for target class and y = 0 for non-target class. 
> CHAT GPT EXPLICAR

to build a tree:
1. Pick a feature $x_i^j$ such that, when the parent node is split, results in the largest _information gain?_
2. stop if
	- child nodes are pure (contain only samples from one class)
	- information gain <= 0
3. Go back to step 1 for each of the child nodess

> que es information gain?


classification and regression trees:
- continuous and discrete features
- strictly binary splits (trees tend to be larger)
- implemented in _sklearn_
- follows building recipe from above but differ in details

> ADD INFORMATION GAIN FORMULA

> ADD AND EXPLAIN gini impurity

> add an explain Shannon entropy H

Where should you place the threshold? With the higher GAIN

### Decision trees summary
- easy to interpret and communicate
- can capture complete hypothesis space

- can only partition variabble s by a straight line
- prone to overfit (memorize training data)

Homework
![[Pasted image 20251023233636.png]]
## Logistic Regression

Basically binary classifcation


can be modelled as a Bernoulli random variable??: Y  Ber(p) with success probability
p 2 [0, 1],
Nothing bprevents negatice calues since not gaurantee between 0 to 1

To avoid this add the logistic sigmoid functino

_Maximum likelihood estimation_ -> statistics check
Parameter of the model to maximise the likehood of the data that we've found
asume data samples are independend of each others

Binary cross entropy to ANN

For new values we define a threshold 

w-> weights to be train

> Implement first logisitc regression to do the first NN


LR onlly to binary, so multinobial lofistic or softmax regression

Now is not 1-p the probabitlity, all must be summing 1 and bewtween 0 an 1

_Onehot Encoding_ Each single number into a vector

Loss function -> Binary cross entropy to multicategory cross entropy

## Classification Metrics

Compaer with the prediction quality

_Confusion matrix_ -> True / False Positive / Negatives

Witch sikit learn consuion_matrix

- Accuracy (not good if a lot of 1 or 0 since the ml model tends to that one) and Precision
- Recall / Sensitivity
- more advanced: F1 Score and Mathews correlation coef

### Excercising confusion


## Non-binary Classification Metrics

Global accuracy can still be computed
Confssuion matrix [class x class] 
_Metrics reloaded project_ 

## ML Jargon

- Overfitting (memorizing training data basically) / Underfitting (not capable enough to even fit data)

## Model Evaluation
Compare different model algorithms
Estimate generalizatin performance

One Holdhout Set: Train with some samples and left the rest to evaluate the model

_Hyper parameter?_ 

### Cross-Validation