---
Class: "[[06 Machine Learning]]"
Date: 2025-10-17
Last Modified: Friday 17th October 2025 13:00
Professor:
email:
tags:
Latest class updated:
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


# Pendientes

- [ ] Resolver los labs, empezando con highs
- [ ] Implementar una logistic regression

# 📚Notes


# Introduction and Diving into Classification

$$
\text{Deep Learning} \in \text{Representation Learning} \in \text{Machine Learning} \in \text{AI} 
$$
Machine Learning (ML) is a subset of AI focused on creating systems that learn patterns from data and make predictions or decisions. Deep Learning is a more advanced area within ML that uses neural networks with many layers to automatically extract representations from data.
## Four Pillars of ML

### Supervised Learning

Supervised learning uses labeled data — meaning each input has a known output.

#### Classification

- **Data:** Dense data (images, text, signals, etc.) with a closed and finite set of labels.
- **Task:** Assign the most suitable label to each sample.
- **Metrics:** Accuracy, precision, recall.
- **Examples:** Cell classification, particle classification, sentiment analysis.

Classical algorithms include:

- Decision Trees
- K-Nearest Neighbours (KNN)
- Support Vector Machines (SVM)
- Random Forest
- Naive Bayes

#### Regression

- **Data:** Continuous numerical outputs.
- **Task:** Predict a continuous value as close as possible to the target.
- **Metrics:** IoU, Dice score, Mean Squared Error (MSE), Mean Absolute Error (MAE).
- **Examples:** Cell segmentation, denoising, super-resolution.

Algorithms:

- Linear / Non-linear regression
- Local regression (LOESS)
- Ordinary Least Squares (OLS)
- Neural Networks

### Unsupervised Learning

Unsupervised learning uses **unlabeled** data and tries to discover hidden structures or groupings.

#### Cluster Analysis

- **Data:** Any type of features or signals.
- **Task:** Group data points that are close in a defined feature space.
- **Metric:** Silhouette Score, Rand Index.
- **Examples:** Topic modeling, behavior clustering, agent modelling.

Methods:

- K-Means
- Hierarchical Clustering

#### Dimensionality Reduction

- **Data:** High-dimensional data (images, videos, audio, etc.).
- **Task:** Transform to a lower-dimensional representation while preserving information.
- **Metrics:** MSE, MAE (reconstruction error).
- **Examples:** Feature compression, visualization, data generation.

Methods:

- Principal Component Analysis (PCA)
- Linear Discriminant Analysis (LDA)



“Does a decision tree need to be pure?” → A leaf node is considered pure when all samples within it belong to the same class.

---
## Decision Trees

A decision tree is a model that predicts the target by learning simple decision rules inferred from data features.

- It starts at a **root node** and splits data based on feature thresholds.
- Represented like nested **if–then–else statements**.
- Can be **binary** (two splits) or **multi-branch**.
#### How to Build a Decision Tree?

Given a dataset of $n$ samples
$$D = {<\vec{x_0},\vec{y_0}>, <\vec{x_1},\vec{y_1}>, ..., <\vec{x_n},\vec{y_n}>}$$

where $\vec{x_i} \in \mathbb{R}^c$ and labels $y \in \{0, 1\}$ for binary classification.

Steps:

1. Choose a feature $x_j$​ and threshold that maximizes **information gain** after splitting.
2. Stop splitting if:
    - A node is **pure** (all samples same class), or
    - Information gain ≤ 0.
3. Repeat recursively for each child node.

#### Information Gain

The Information Gain measures the expected reduction in entropy. Entropy measures impurity in the data and information gain measures reduction in impurity in the data. The feature which has minimum impurity will be considered as the root node.

Information gain is used to decide which feature to split on at each step in building the tree.

$$\text{GAIN}(D, x_j) = H(D) - \sum_{v \in Values(x_j)} \frac{|D_v|}{|D|} H(D_v)$$

#### Gini Impurity
The Gini index can also be used for feature selection. The tree chooses the feature that minimizes the Gini impurity index. The higher value of the Gini Index indicates the impurity is higher. Both Gini Index and Gini Impurity are used interchangeably. The Gini Index or Gini Impurity favors large partitions and is very simple to implement. It performs only binary split.


$$H(D)_{\text{Gini}} = 1 - \sum_v (p(v))^2$$

#### Shannon Entropy

==Entropy is a measure of disorder or impurity in the given dataset.==
In the decision tree, messy data are split based on values of the feature vector associated with each data point. With each split, the data becomes more homogenous which will decrease the entropy. However, some data in some nodes will not be homogenous, where the entropy value will not be small. The higher the entropy, the harder it is to draw any conclusion. When the tree finally reaches the terminal or leaf node maximum purity is added.
$$H(D)_{\text{Shannon}} = -\sum_v p(v) \log_2 p(v)$$

> “Where should I place the threshold?” → The split with highest information gain.

![[Pasted image 20251024113147.png]]
#### When to use Entropy vs Gini

- Both are impurity measures; both often pick similar splits.
- **Entropy** (information gain) is grounded in information theory; interpretability in bits.
- **Gini** is slightly faster to compute and is default for CART implementations.
- In practice: test both if uncertain; Gini is fine for most tasks.

---

#### Practical notes on Information Gain and thresholds

- For **continuous features**, evaluate candidate thresholds by sorting unique values and testing midpoints between consecutive distinct values — compute gain for each threshold and pick the best.
    
- For **categorical features** with many categories, consider:
    
    - grouping rare categories,
    - penalizing splits with many small groups (to avoid overfitting),
    - using techniques like target encoding if categories are high-cardinality.
        
- **Where to place the threshold?** The threshold that yields the highest information gain (or largest impurity decrease).
- **Overfitting concern:** pure splits can lead to very deep trees that perfectly fit training data but generalize poorly.    

---

#### Stopping criteria & pruning

Common stopping conditions:

- Node is pure (all samples same label).
- Maximum depth reached.
- Minimum samples per node.
- Information gain / impurity decrease below a threshold.

---

#### Impurity decrease vs Information gain in implementations

- Many libraries (scikit-learn) compute **impurity decrease** at each split (Gini decrease by default). The chosen split is the one maximizing the decrease.
- Keep in mind: impurity decrease accumulates across tree; features with more distinct values can have higher raw decreases — use cross-validation to avoid selection bias.

---

classification and regression trees:
- continuous and discrete features
- strictly binary splits (trees tend to be larger)
- implemented in _sklearn_
- follows building recipe from above but differ in details

### Decision Trees Summary

**Advantages**

- Easy to interpret and visualize.
- Can represent complex decision boundaries.

**Disadvantages**

- Splits only create axis-aligned partitions (straight-line splits).
- Prone to overfitting (memorizing training data).


Homework
![[Pasted image 20251023233636.png]]

# CLASS 02

---

## Logistic Regression

Logistic Regression is a binary classification algorithm used when the output we want to predict has only two possibilities — like **spam or not spam**, **disease or no disease**, **will buy or won’t buy**.

Unlike decision trees that split data into branches, Logistic Regression tries to find a **straight line (or plane/hyperplane)** that separates two classes. But instead of predicting a class directly, it predicts a **probability**.

---

### Why not use Linear Regression?

Why don’t we just draw a straight line and use linear regression?” ->  Because linear regression gives any number from **−∞ to +∞**. But probabilities must be between **0 and 1**.

That's why Logistic Regression uses a special function that forces predictions into a **0 to 1 range**.

---

### Sigmoid Function — The Heart of Logistic Regression

Logistic Regression uses the **sigmoid function**:

$$\sigma(z) = \frac{1}{1 + e^{-z}}$$

- It takes any number (positive or negative) and squashes it into a value between **0 and 1**.
- Here, $z = w^\top x + b$, which is just a **weighted sum of input features** (like in linear regression).
- If the result is above 0.5 → predict **class 1**, otherwise **class 0**.

This is how the model converts raw numbers into **probabilities**.

---

#### **What is the Model Actually Doing?**

1. It looks at your input features (like age, salary, heart rate, etc.).
2. Multiplies them by weights (which it learns).
3. Adds a bias.
4. Passes the result into the sigmoid function.
5. The output is:
    - **Close to 1 → likely positive class**
    - **Close to 0 → likely negative class**

Example:  
If the model outputs 0.82, it means **82% chance it's a positive case**.

---

#### **How Does It Learn the Best Line?**

The model doesn't know the correct weights at first. So it tries values, checks how wrong they are, and slowly improves.

To measure how wrong it is, it uses a **Loss Function (Log Loss / Binary Cross-Entropy)**:

$$L = -\left[ y \log(\hat{y}) + (1 - y) \log(1 - \hat{y}) \right]$$

- If the model predicts a probability close to the true label, the loss is small.
- If it says 0.01 when the answer is 1 → loss becomes very big.

Then it adjusts the weights using **Gradient Descent**, which is like walking downhill until you reach the **minimum loss**.

---

#### **Final Decision Rule**

Once trained, for new inputs, we decide the class using a **threshold**, usually 0.5:

$$\text{If } \hat{y} \geq 0.5 \Rightarrow \text{class = 1}$$
$$\text{If } \hat{y} < 0.5 \Rightarrow \text{class = 0}$$

---

#### **In Simple Words**

- Logistic Regression **does not predict directly 0 or 1** – it predicts how likely something is to be 1.
- It uses the **sigmoid function** to turn linear equations into probabilities.
- It learns by minimizing **log loss**, adjusting weights using **gradient descent**.
- Then it applies a **threshold (usually 0.5)** to decide the final class.
---
#### **Maximum Likelihood Estimation (MLE)**

- Logistic Regression chooses weights that **maximize the likelihood of the observed data**.
- Intuition: Find the weights that make the predicted probabilities as close as possible to the true labels in the training set.
- Assumption: Each data sample is **independent** from the others.

Instead of thinking in probabilities, we usually **minimize the negative log-likelihood**, which is equivalent to the **binary cross-entropy loss** used in neural networks:

$L = -\frac{1}{n} \sum_{i=1}^{n} \big[ y_i \log(\hat{y}_i) + (1 - y_i) \log(1 - \hat{y}_i) \big]$

- Small loss → predictions match true labels
- Large loss → predictions far from true labels

---

#### **Multinomial Logistic Regression / Softmax Regression**

- Standard Logistic Regression works **only for binary problems**.
- For **more than 2 classes**, we use **Softmax Regression**.

**Softmax** converts raw scores into probabilities that **sum to 1 across all classes**:

$\hat{y}_i = \frac{e^{z_i}}{\sum_j e^{z_j}}​​$

- Each class gets a probability between 0 and 1.
- The predicted class is the one with the **highest probability**.
- Training uses **multiclass cross-entropy loss**, an extension of binary cross-entropy:

$$L = -\sum_{i=1}^{n} \sum_{c=1}^{k} y_{i,c} \log(\hat{y}_{i,c})$$

- **One-hot encoding** is used for labels: each label becomes a vector with 1 at the true class position and 0 elsewhere.

---

#### **Classification Metrics**

To evaluate predictions, we compare predicted classes to true labels using:

- **Confusion Matrix:** Shows True Positives, False Positives, True Negatives, False Negatives.
- **Accuracy:** Overall fraction of correct predictions.
- **Precision:** Fraction of predicted positives that are actually positive.
- **Recall / Sensitivity:** Fraction of true positives that are correctly predicted.
- **F1 Score:** Harmonic mean of precision and recall.
- **Matthews Correlation Coefficient (MCC):** Balanced metric even if classes are imbalanced.

Example (Python with scikit-learn):

```python
from sklearn.metrics import confusion_matrix,
ConfusionMatrixDisplay
# ...
cm = confusion_matrix(y_test, predictions, labels=model.classes_)
disp = ConfusionMatrixDisplay(confusion_matrix=cm,
display_labels=model.classes_)
disp.plot()
```

![[Pasted image 20251024113656.png]]

---

#### **Non-binary Classification Metrics**

- Confusion matrix can be extended to **k × k** for multiple classes.
- Accuracy can still be computed globally.
- Other metrics like F1 and MCC also extend naturally.

---

#### **Overfitting vs Underfitting**

- **Overfitting:** Model memorizes training data, performs poorly on new data.
- **Underfitting:** Model too simple, cannot capture patterns in data.

**Goal:** Achieve **good generalization** — perform well on unseen data.

---

#### **Model Evaluation and Cross-Validation**

- **One Holdout Set:** Split data into train and test. Simple but limited.
- **Two Holdout Sets:** Train, validation, test. Better for hyperparameter tuning.
- **K-Fold Cross-Validation:** Split data into k subsets. Train k times, each time leaving out one subset for validation. Provides robust estimate of performance.

**Summary of Logistic Regression:**

- Predicts probabilities using **sigmoid or softmax**.
- Learns weights using **maximum likelihood / cross-entropy loss**.
- Evaluates with **confusion matrix and derived metrics**.
- Performance assessment via **holdout or k-fold cross-validation**.
- Forms the **blueprint for modern neural networks**.


![[Pasted image 20251024113419.png]]


Summary
Logistic regression
	• architecture = blue print for modern neural networks
	• maximum likelihood estimation = negative log likelihood = binary cross entropy
Single holdout set
	• default method in practice
	• limited with respect to hyperparameters tuning and rigorous performance evaluation
K-fold cross-validation
	• one method to statistically assess model performance
	• several variants exist
	• best: choose k such that enough data is left in the validation folds

---

# CLASS 03

### One Holdout Set


### Cross-Validation

K-Fold Cross-Validation
![[Pasted image 20251029152105.png]]

K-Fold Cross Validation Variants for Model Evaluations
- Holdout Method
- 2-Fold Cross-Validation
- Repeated Holdout (k=4)
- Leave One-Out Cross Validation (k=n, LOOCV)
![[Pasted image 20251029152219.png]]
### Two Cultures
Given data D = < ⃗xo, y0 >, . . ., where ⃗x are the observed inputs for a natural
process and y are the observed outputs:

#### Data Modelling
• goal:
find the best mathematical model
for y = f(⃗x)
• reward: rich insights into the data
generating process
• risk: what if the model is wrong?

#### Algorithmic Modelling
• goal:
predict correctly y given ⃗x
• reward: fast turnaround, no
constraints on the algorithmic
approach
• risk: found algorithm has nothing
to do with the data generating
process

## 1D Linear Regression

### Problem Setting: simple linear regression

$$
y_i = \beta_0 + \beta_1x_i+\epsilon_i,\quad i=1,2,...,n
$$
What is Linear Regression?

![[Pasted image 20251029153315.png]]
• simple: only one x to result
in response y
• linear: model is linear in βi
• RV: εi and thus yi
• xi are known constants

model assumptions
∗ E[εi] = 0
∗ var[εi] = σ2
∗ cov(εi, εj) = 0

### Least Square Estimation

Goal
• seek estimators ˆβ0, ˆβ1 which
• minimize the sum of squares of
deviations yi − ˆyi
(observations yi, predictions ˆyi)
Note
• least square estimation do not require
distributional assumptions
• least square estimation is connected to
maximum likelihood estimation
![[Pasted image 20251029153436.png]]

### Least Square Solution
![[Pasted image 20251029153500.png]]

### Observations and takeaways
 central to all: minimizing the sum of least squares 
![[Pasted image 20251029153537.png]]

![[Pasted image 20251029153547.png]]

## K Dimensional Linear

### Problem Setting: k-dim linear regression

![[Pasted image 20251029153612.png]]

![[Pasted image 20251029153626.png]]
### Least Square Estimation and Solution

![[Pasted image 20251029153702.png]]
Question!
How many times in the last 9 slides did we talk
about ˆy?
How many times in the last 9 slides did we talk
about ˆβ?

### Conclusion

#### Summary

K-fold cross-validation
• one method to statistically assess model performance
• several variants exist
• best: choose k such that enough data is left in the validation folds

two cultures
• wish to learn from data has spurred two cultures:
data modelling and algorithmic modelling
• both are extremes to a spectrum, both are required
• there is no free lunch anywhere

linear regression / data modelling
• powerful tool to analyse data from linear data generating processes
• indepth math analysis rewards with strong guarantees and comprehensive knowledge about