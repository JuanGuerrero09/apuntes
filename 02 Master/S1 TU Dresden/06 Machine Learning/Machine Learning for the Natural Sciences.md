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


# 🕸️Resources and Relevant Links


# 📚Notes



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

## Logistic Regression

Basically binary classifcation

Bernoulli random variable and expected values

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