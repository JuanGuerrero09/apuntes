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

Further resources:
https://udlbook.github.io/udlbook/ -> https://github.com/udlbook/udlbook/tree/main
http://neuralnetworksanddeeplearning.com/about.html
https://scikit-learn.org/stable/index.html

https://sebastianraschka.com/blog/2021/ml-course.html -> https://github.com/rasbt/stat451-machine-learning-fs20/tree/master
https://d2l.ai/index.html
https://github.com/dibgerge/ml-coursera-python-assignments

# Pendientes

- [ ] Resolver los labs, empezando con highs
- [ ] Implementar una logistic regression

# 📚Notes


## Introduction and Diving into Classification

$$
\text{Deep Learning} \in \text{Representation Learning} \in \text{Machine Learning} \in \text{AI} 
$$
Machine Learning (ML) is a subfield of Artificial Intelligence (AI) dedicated to designing systems capable of **learning from data** and making predictions or decisions without explicit programming.  
Within ML, **Representation Learning** focuses on finding compact and meaningful ways to express data, while **Deep Learning** uses multi-layered neural networks to automatically extract hierarchical representations from raw inputs.

---
### Four Pillars of ML

#### Supervised Learning

Supervised learning deals with **labeled data**, where each input is associated with a known output.  
The goal is to learn a mapping function from input features to target values.

##### Classification

- **Data:** Dense structured data such as images, text, or signals, with a finite set of possible labels.
- **Task:** Assign each sample to one of several predefined categories.
- **Metrics:** Accuracy, precision, recall, F1-score.
- **Examples:** Cell classification, particle detection, sentiment analysis.

**Classical algorithms:**

- Decision Trees
- K-Nearest Neighbours (KNN)
- Support Vector Machines (SVM)
- Random Forest
- Naive Bayes

##### Regression

- **Data:** Continuous numerical outputs.
- **Task:** Predict a real-valued target variable.
- **Metrics:** Mean Squared Error (MSE), Mean Absolute Error (MAE), R² score.
- **Examples:** Cell segmentation, image denoising, super-resolution, hydraulic discharge prediction.

**Common methods:**

- Linear / Non-linear Regression
- Local Regression (LOESS)
- Ordinary Least Squares (OLS)
- Neural Networks

---

#### Unsupervised Learning

Unsupervised learning operates on **unlabeled data**, seeking to uncover hidden patterns, relationships, or structures.

##### Cluster Analysis

- **Data:** Any numerical or categorical features.
- **Task:** Group similar data points within the same cluster based on distance or similarity measures.
- **Metrics:** Silhouette Score, Rand Index.
- **Examples:** Topic modeling, behavioral segmentation, hydrological pattern clustering.

**Methods:**

- K-Means
- Hierarchical Clustering

##### Dimensionality Reduction

- **Data:** High-dimensional datasets (e.g., images, spectra, multivariate time series).
- **Task:** Reduce the dimensionality while preserving most of the information content.
- **Metrics:** Reconstruction error (MSE, MAE).
- **Examples:** Visualization, feature extraction, data compression.

**Techniques:**

- Principal Component Analysis (PCA)
- Linear Discriminant Analysis (LDA)

---

## Decision Trees

A **Decision Tree** is a predictive model that represents a series of binary or multi-way decisions leading to an outcome.  
It recursively partitions the data based on **feature thresholds** that maximize purity in the resulting subsets.

A tree starts at the **root node**, applies a condition to split the dataset, and continues until terminal **leaf nodes** represent the final predictions.  
Each path from root to leaf can be interpreted as a sequence of **if–then–else** logical statements.

---

### Building a Decision Tree

Given a dataset of $n$ samples:
$$D = \{ \langle \vec{x_0}, y_0 \rangle, \langle \vec{x_1}, y_1 \rangle, ..., \langle \vec{x_n}, y_n \rangle \}$$
where $\vec{x_i} \in \mathbb{R}^c$ (features) and $y_i \in {0, 1}$ for binary classification.

**Steps:**

1. Choose the feature $x_j$ and threshold that maximize **information gain**.
2. Split the dataset accordingly.
3. Stop splitting when:
    - The node becomes **pure** (all samples belong to one class), or
    - The information gain ≤ 0.
4. Repeat recursively for each child node.

![[Pasted image 20251024113147.png]]

---

### Information Gain

Information Gain quantifies the reduction in **entropy** (impurity) achieved by partitioning the data based on a feature.

$$\text{GAIN}(D, x_j) = H(D) - \sum_{v \in Values(x_j)} \frac{|D_v|}{|D|} H(D_v)$$

A higher information gain indicates a better feature for splitting, as it increases homogeneity in the child nodes.

---
### Gini Impurity

The **Gini index** provides an alternative measure of impurity:

$$H(D)_{\text{Gini}} = 1 - \sum_v (p(v))^2$$
It favors large partitions and is computationally simpler.  
Gini is typically used in **CART** (Classification and Regression Trees) implementations.

---
### Shannon Entropy

Entropy measures the **degree of disorder** in a dataset:
$$H(D)_{\text{Shannon}} = -\sum_v p(v) \log_2 p(v)$$
Lower entropy implies more homogeneous nodes. During training, each split aims to reduce entropy, resulting in more ordered subsets.

> “Where should I place the threshold?” → The split that produces the **highest information gain**.

---
### Entropy vs Gini

|Criterion|Theoretical Basis|Typical Use|Computational Cost|
|---|---|---|---|
|**Entropy**|Information Theory|Interpretable in bits|Slightly higher|
|**Gini**|Impurity measure (CART)|Default in sklearn|Slightly faster|

In most practical cases, both yield similar results.

---

### Choosing Thresholds

- For **continuous features**:  
    Evaluate potential thresholds by sorting unique values and testing midpoints.  
    Choose the one with the highest information gain.
    
- For **categorical features**:
    - Group rare categories to prevent overfitting.
    - Penalize highly fragmented splits.
    - Use encoding methods (e.g., target encoding) for high-cardinality features.

---

### Stopping Criteria and Pruning

Stopping rules prevent trees from overfitting:

- Node is pure.
- Maximum depth reached.
- Minimum number of samples per node.
- Information gain below a set threshold.

**Pruning** (post-training) removes unnecessary branches, improving generalization by reducing variance.

---
### CART: Classification and Regression Trees

CART models can handle both **discrete** and **continuous** variables, producing strictly **binary splits**.  
They are implemented in `scikit-learn` following the same principles described above but optimized for computational efficiency.

---

### Decision Trees Summary

**Advantages**

- Highly interpretable and easy to visualize.
- Captures non-linear decision boundaries.
- Requires little data preprocessing.

**Disadvantages**

- Creates axis-aligned partitions (limited flexibility).
- Sensitive to noise and outliers.
- Tends to overfit without pruning or ensemble methods.

---

## Logistic Regression

### Introduction

Logistic Regression is a model used for **binary classification** — problems where the target variable has only two possible outcomes (e.g., healthy/sick, spam/not spam, pass/fail).

The key idea is:  
👉 _the model predicts the **probability** that a sample belongs to the positive class._

This makes logistic regression a **probabilistic classifier**, not a simple linear separator.

---

### Why Not Linear Regression?

Linear Regression outputs values like:
$$
\hat{y} = w^\top x + b
$$
But these outputs can be any number from $-\infty$ to $+\infty$.

Such values cannot represent probabilities.  
If linear regression is used for classification:

- Outputs may exceed the $(0,1)$ interval
- Predictions are not probabilistic
- Optimization becomes unstable due to unbounded errors

A transformation is therefore required to restrict predictions to the interval $(0,1)$.

Logistic regression fixes this using a **nonlinear squashing function**.

### The Sigmoid Function

The sigmoid (logistic) function maps real numbers to the interval $(0, 1)$:

$$\sigma(z) = \frac{1}{1 + e^{-z}}$$
Where:

- $z = w^\top x + b$ is a linear combination of input features.
- Values close to 1 → predict class 1
- Values close to 0 → predict class 0

This converts linear predictions into **probabilities** suitable for binary classification.

---
### What the Model Actually Does

Logistic Regression produces predictions through the following steps:

1. Compute the linear combination:  
    $z = w^\top x + b$
2. Apply the sigmoid function:  
    $\hat{y} = \sigma(z)$
3. Interpret $\hat{y}$ as the probability of class 1
4. Convert probability to a class label using a threshold:
    - $\hat{y} \ge 0.5$ → class 1
    - $\hat{y} < 0.5$ → class 0
The threshold may be adjusted to control false positives or false negatives.

---
### Binary Cross-Entropy Loss

Training aims to find $w$ and $b$ that maximize the likelihood of the observed labels.

Binary Cross-Entropy (also called Log Loss) measures how incorrect a probability prediction is.

For a single sample:
$$L = -[ y\log(\hat{y}) + (1-y)\log(1-\hat{y})]$$
**Interpretation:**

- If the true label is 1 and $\hat{y}$ is close to 1 → loss is small
- If the true label is 1 and $\hat{y}$ is close to 0 → loss becomes very large

Binary Cross-Entropy applies strong penalties to confident incorrect predictions, encouraging stable and meaningful probability estimates

---
### Relation to Maximum Likelihood Estimation

Logistic Regression is trained by finding the parameters that **maximize the likelihood** of the observed labels.  
For the Bernoulli distribution, maximizing likelihood is equivalent to **minimizing Binary Cross-Entropy**.

Thus, logistic regression has a direct statistical interpretation.

---

### Gradient Descent

Gradient Descent updates the model parameters by following the negative gradient of the loss:
$$
 \leftarrow w - \alpha\frac{\partial L}{\partial w}, \qquad b \leftarrow b - \alpha\frac{\partial L}{\partial b}$$

This iterative process continues until the loss stabilizes.

---

## Multinomial Logistic Regression (Softmax Regression)

### Softmax Function

For multiclass problems with $k$ categories, the softmax function generalizes the sigmoid:
$$\hat{y}_i = \frac{e^{z_i}}{\sum_{j=1}^k e^{z_j}}$$
This function converts raw class scores into:

- A normalized probability distribution
- Probabilities that sum to 1
- A clear class decision based on the maximum probability

---

### Multiclass Cross-Entropy

The corresponding loss for multiclass classification is:
$$L = -\sum_{c=1}^k y_c \log(\hat{y}_c)$$
Here:
- $y_c$ is a **one-hot encoded** label
- $\hat{y}_c$ is the predicted probability for class $c$

This loss penalizes incorrect probability distributions and rewards confident predictions for the correct class.

---
## Classification Metrics

### Confusion Matrix

A confusion matrix summarizes predictions into:

- **True Positives (TP)**
- **False Positives (FP)**
- **True Negatives (TN)**
- **False Negatives (FN)**

### Derived Metrics

- **Accuracy:** overall correctness
- **Precision:** TP / (TP + FP)
- **Recall (Sensitivity):** TP / (TP + FN)
- **F1 Score:** harmonic mean of precision and recall
- **MCC:** robust even with imbalanced classes

---

### Accuracy

Fraction of all predictions that are correct:

$$\text{Accuracy} = \frac{TP + TN}{TP + TN + FP + FN}$$

Useful when classes are balanced.

---

### Precision
$$\text{Precision} = \frac{TP}{TP + FP}$$
Measures the reliability of positive predictions.  
Important when false positives are costly.

---

### Recall (Sensitivity)
$$\text{Recall} = \frac{TP}{TP + FN}$$
Measures the ability to detect positive cases.  
Important when missing positives is costly (e.g., medical screening).

---

### F1 Score

Combines precision and recall into a single metric:
$$F1 = 2\cdot\frac{\text{Precision}\cdot\text{Recall}}{\text{Precision}+\text{Recall}}$$
Useful for imbalanced datasets.

---

### Matthews Correlation Coefficient (MCC)

A balanced metric even when class distributions are uneven:

- Considers all four entries of the confusion matrix
- Provides a correlation-like score between predictions and labels

It is often more informative than accuracy in imbalanced scenarios.

---

## Model Evaluation and Cross-Validation

Evaluating a classification model requires more than checking how many predictions are correct. A model can achieve high accuracy while still performing poorly in critical aspects, especially when classes are imbalanced or when certain types of errors are more harmful than others.  
Model evaluation therefore focuses on estimating **generalization performance** — how the model behaves on data not seen during training.

### Single Holdout Split

A holdout split divides the dataset into two subsets:

- **Training set:** used to fit the model parameters
- **Test set:** used to assess performance

This method is simple and computationally efficient but has limitations:

- The resulting performance estimate depends strongly on **how the split is made**.
- A single split may not represent the underlying data distribution well.
- Small datasets may produce **unstable and highly variable** results.

A holdout split is appropriate when the dataset is large and when computational resources are limited.

### Train/Validation/Test Split

A more structured approach uses **three** subsets:

- **Training set:** used to learn model parameters
- **Validation set:** used to tune hyperparameters (e.g., regularization strength)
- **Test set:** used only for the final unbiased performance estimate

This separation prevents information leakage from the test set into the training process.  
A validation set is essential when the model has multiple design choices, such as thresholds, regularization parameters, or feature transformations.

Limitations arise when the dataset is small, because dividing it into three subsets reduces the amount of data available for training.

### K-Fold Cross-Validation

K-fold cross-validation provides a more reliable performance estimate by repeatedly splitting the data into training and validation sets.  
The dataset is partitioned into $k$ equally sized folds:

1. One fold serves as the validation set.
2. The remaining $k-1$ folds form the training set.
3. The model is trained and evaluated.
4. This process repeats until every fold has served once as validation.

The final performance is computed as the **average across all folds**.

Advantages:

- Produces a **more stable and statistically meaningful** estimate of performance.
- Reduces sensitivity to data ordering or specific splits.
- Utilizes the entire dataset for both training and validation.
- Particularly beneficial when the dataset is small.

Typical choices:

- $k = 5$ or $k = 10$ in general practice
- Larger $k$ (e.g., 10) reduces bias but increases computation
- Smaller $k$ (e.g., 5) requires less computation and still performs well

![[Pasted image 20251024113419.png]]

---

## Model Evaluation and Cross-Validation (Continuation)

## One Holdout Set

### Introduction

The **holdout method** is the simplest evaluation approach: the dataset is split into a **training set** and a **test set**. The model is trained on the former and evaluated on the latter to estimate generalization performance.

### Purpose

The method checks whether the model can generalize beyond the data used to fit its parameters. A large performance gap between training and test sets indicates **overfitting**.

### Limitations

- The estimate depends entirely on a **single split**, making it unstable.
- Small datasets produce small test sets, reducing reliability.
- Hyperparameter tuning becomes problematic because repeated testing contaminates the test set.

This motivates the use of **cross-validation**.

---

## Cross-Validation

![[Pasted image 20251029152105.png]]

### Motivation

Cross-validation provides a more reliable estimate of model performance by repeatedly training and validating the model on different portions of the data. It uses the entire dataset for both training and validation at different stages.

### K-Fold Cross-Validation

The dataset is partitioned into $K$ equally sized folds.  
For each iteration:

1. One fold acts as the **validation fold**.
2. The other $(K-1)$ folds form the **training set**.
3. Performance is measured on the validation fold.

After $K$ iterations, performance is averaged:
$$\text{Performance} = \frac{1}{K} \sum_{i=1}^{K} \text{Performance}_i$$
### Choosing $K$

- Small $K$ → faster but less stable.
- Typical choices: **5 or 10**.
- Extreme: **LOOCV** ($K = n$), yielding maximum data usage but high computational cost.

---

### Cross-Validation Variants

#### Holdout Method

Single split. Fast but unreliable.

#### 2-Fold Cross-Validation

Dataset divided into two halves. Training and validation are swapped.

#### Repeated Holdout

Multiple random train/test splits; performance is averaged.

#### Leave-One-Out (LOOCV)

Each sample becomes the validation set once.  
High data efficiency, high computational cost.

![[Pasted image 20251029152219.png]]

---

## Two Cultures

Given data $D = { (\vec{x}_i, y_i) }$, two modelling philosophies exist:

### Data Modelling

- **Goal:**  
    Identify the mathematical relationship behind the data-generating process, i.e.  
    $y = f(\vec{x})$.
- **Reward:**  
    Strong interpretability and insight into underlying mechanisms.
- **Risk:**  
    If the assumed model is incorrect, conclusions are unreliable.

### Algorithmic Modelling

- **Goal:**  
    Achieve accurate predictions of $y$ from $\vec{x}$, independent of interpretability.
- **Reward:**  
    Highly flexible; any algorithm can be used.
- **Risk:**  
    The method may have no relation to the real-world mechanism.

Both perspectives lie on a spectrum and serve complementary roles.

---

## 1D Linear Regression

### Problem Setting: Simple Linear Regression

The model assumes a linear relationship between one predictor $x$ and response $y$:
$$y_i = \beta_0 + \beta_1 x_i + \varepsilon_i,\quad i=1,\dots,n.$$
![[Pasted image 20251029153315.png]]
#### Interpretation

- **Simple:** only one predictor.
- **Linear:** model is linear in parameters $\beta_0$ and $\beta_1$.
- **Randomness:** the noise term $\varepsilon_i$ makes $y_i$ stochastic.
- **Deterministic input:** $x_i$ values are treated as known constants.

#### Model Assumptions

- $\mathbb{E}[\varepsilon_i] = 0$
- $\text{Var}(\varepsilon_i) = \sigma^2$
- $\text{Cov}(\varepsilon_i, \varepsilon_j) = 0$

These assumptions ensure unbiased and minimum-variance estimators.

---

### Least Squares Estimation

Least Squares chooses parameters that **minimize the total squared discrepancy** between observed responses and model predictions:

$\min_{\beta_0,\beta_1}\ \sum_{i=1}^{n}(y_i-(\beta_0+\beta_1 x_i))^2$.  
Squaring penalizes larger errors more heavily and yields a smooth, differentiable objective.
#### Goal

Find $(\hat{\beta}_0, \hat{\beta}_1)$ that minimize:

$$\sum_{i=1}^{n} (y_i - \hat{y}_i)^2.$$

This is the **Ordinary Least Squares (OLS)** criterion.

### Notes

- OLS does **not** require assumptions about the distribution of errors.
- When Gaussian errors are assumed, OLS corresponds to **Maximum Likelihood Estimation**.

---

### Least Squares Solution

#### Slope

$$\hat{\beta}_1 = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})} {\sum_{i=1}^{n} (x_i - \bar{x})^2}$$
#### Intercept
$$\hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}$$
Both are derived by minimizing the squared loss with respect to $\beta_0$ and $\beta_1$.

#### Properties of Estimators

- $\mathbb{E}[\hat{\beta}_0] = \beta_0$
- $\mathbb{E}[\hat{\beta}_1] = \beta_1$
- Variances and covariances can be computed analytically.

---

### Observations and Takeaways

- The foundation of linear regression is minimizing squared errors.
- Simple formulas produce estimators with strong statistical guarantees:
    - unbiasedness,
    - minimal variance among linear unbiased estimators (Gauss–Markov).        
- These results enable the reuse of the same formulas whenever data follow similar generating processes.

---

## K-Dimensional Linear Regression

### Problem Setting: k-Dimensional Linear Regression

Model with $k$ predictors:  
$y_i=\beta_0+\beta_1 x_{i,1}+\cdots+\beta_k x_{i,k}+\varepsilon_i$.

![[Pasted image 20251029153612.png]]
#### Design Matrix and Notation

Stacking all observations in matrix form:  
$\vec{y}=X\vec{\beta}+\vec{\varepsilon}$,  
where $X\in\mathbb{R}^{n\times (k+1)}$ contains a column of ones (intercept) and the predictors.

### Least Squares Estimation and Solution

OLS in matrix form:  
$\hat{\vec{\beta}}=(X^\top X)^{-1}X^\top\vec{y}$.

![[Pasted image 20251029153702.png]]
#### Conditions and Practical Notes

- **Invertibility:** $X^\top X$ must be invertible; strong multicollinearity harms invertibility and inflates variance.
- **Centering/standardizing:** often improves numerical stability and interpretability of coefficients.
- **Diagnostics:** residual plots test homoscedasticity and independence; VIF checks multicollinearity.

## Artificial Neural Networks

### Introduction

Artificial Neural Networks generalize linear models by stacking multiple layers of transformations. Each neuron computes a weighted sum of inputs, as a vector $x\in\mathbb{R}^n$, applies a linear map and a bias, and then a non-linear function:
$$
z = W x + b,\qquad h=\sigma(z)$$
- $W$ (weights) scales and mixes inputs; $b$ (bias) shifts the response and lets the neuron activate even when $x=\vec{0}$.
- $\sigma(\cdot)$ introduces **curvature**; without it, stacked layers would still behave like one linear map.

**Intuition:** the linear part aligns the input along directions deemed useful; the activation keeps only useful magnitude/sign information and discards the rest, enabling non-linear decision boundaries.

### Non-Linear Activations

If $\sigma(z)=z$, multiple layers collapse to a single matrix: $W^{(L)}\cdots W^{(1)}x = \tilde{W}x$, i.e., still a linear model. Non-linearities such as ReLU, tanh, sigmoid, or GeLU allow piecewise-linear or smooth curved mappings that can approximate complex functions.

**Common choices**

- **ReLU:** $\text{ReLU}(z)=\max(0,z)$ — simple, avoids saturation for $z>0$, sparse activations.
- **tanh/sigmoid:** smooth and bounded; may saturate for large $|z|$ (small gradients).
- **GeLU:** smooth variant often effective in transformers.

### Hidden Layers

Each hidden unit receives all inputs from the previous layer (fully connected).  
The computation inside a hidden unit consists of:

- a linear combination of inputs (via weights and biases),
- followed by a non-linear activation.

Hidden layers allow the model to build hierarchical representations: simple features in early layers and more abstract features in deeper layers.

Hidden neurons compute:  
$$H_j = \sigma(\sum_i W^{(I)}_{ji} x_i + b^{(0)}_j)$$
Their outputs feed into subsequent layers.

## Multilayer Perceptron (MLP)

A Multilayer Perceptron is a **fully connected feed-forward** network consisting of:

- an input layer,
- one or more hidden layers,
- an output layer.

The model processes data sequentially from left to right. The output is obtained after applying weight matrices, biases, and activations across all layers.  
This architecture is the fundamental building block for many deep learning models.

$$\hat{y} = f(x) = \phi\!\big(W^{(L)}\,\sigma(\cdots \sigma(W^{(1)}x+b^{(1)})\cdots)+b^{(L)}\big)$$
where $\sigma$ acts on hidden layers and $\phi$ is an output activation suited to the task (e.g., identity for regression, sigmoid for binary classification, softmax for multiclass).  
**Key properties:** dense connections, no recurrence, universal approximation with sufficient width.

A loss function $L(y, \hat{y})$ is required to train the model.

## Artificial Neural Networks

### Introduction

Artificial Neural Networks generalize linear models by stacking multiple layers of transformations. Each neuron computes a weighted sum of inputs, as a vector $x\in\mathbb{R}^n$, applies a linear map and a bias, and then a non-linear function:
$$
z = W x + b,\qquad h=\sigma(z)$$
- $W$ (weights) scales and mixes inputs; $b$ (bias) shifts the response and lets the neuron activate even when $x=\vec{0}$.
- $\sigma(\cdot)$ introduces **curvature**; without it, stacked layers would still behave like one linear map.

**Intuition:** the linear part aligns the input along directions deemed useful; the activation keeps only useful magnitude/sign information and discards the rest, enabling non-linear decision boundaries.

### Non-Linear Activations

If $\sigma(z)=z$, multiple layers collapse to a single matrix: $W^{(L)}\cdots W^{(1)}x = \tilde{W}x$, i.e., still a linear model. Non-linearities such as ReLU, tanh, sigmoid, or GeLU allow piecewise-linear or smooth curved mappings that can approximate complex functions.

**Common choices**

- **ReLU:** $\text{ReLU}(z)=\max(0,z)$ — simple, avoids saturation for $z>0$, sparse activations (most popular).
- **tanh/sigmoid:** smooth and bounded; may saturate for large $|z|$ (small gradients).
- **GeLU:** smooth variant often effective in transformers.

![[Pasted image 20251029155747.png]]
### Hidden Layers

Each hidden unit receives all inputs from the previous layer (fully connected).  
The computation inside a hidden unit consists of:

- a linear combination of inputs (via weights and biases),
- followed by a non-linear activation.

Hidden layers allow the model to build hierarchical representations: simple features in early layers and more abstract features in deeper layers.

Hidden neurons compute:  
$$H_j = \sigma(\sum_i W^{(I)}_{ji} x_i + b^{(0)}_j)$$
Their outputs feed into subsequent layers.

## Multilayer Perceptron (MLP)

A Multilayer Perceptron is a **fully connected feed-forward** network consisting of:

- an input layer,
- one or more hidden layers,
- an output layer.

The model processes data sequentially from left to right. The output is obtained after applying weight matrices, biases, and activations across all layers.  
This architecture is the fundamental building block for many deep learning models.

$$\hat{y} = f(x) = \phi\!\big(W^{(L)}\,\sigma(\cdots \sigma(W^{(1)}x+b^{(1)})\cdots)+b^{(L)}\big)$$
where $\sigma$ acts on hidden layers and $\phi$ is an output activation suited to the task (e.g., identity for regression, sigmoid for binary classification, softmax for multiclass).  
**Key properties:** dense connections, no recurrence, universal approximation with sufficient width.

A loss function $L(y, \hat{y})$ is required to train the model.

---

## SGD — Stochastic Gradient Descent

### Supervised Learning 

A dataset contains input–output pairs. The model produces predictions through a parameterized function. These parameters consist of all weights and biases across the network. The goal of training is to find parameters that minimize a loss function measuring prediction error.

Given dataset  
$$D = \{\langle \vec{x}_i, y_i \rangle\}_{i=1}^m$$
the model $f(\vec{x},|,\vartheta)$ predicts  
$$\hat{y}_i = f(\vec{x}_i\,|\,\vartheta)$$
Training minimizes a loss:  
$$\vartheta^* = \arg\min_{\vartheta}L(y, f(\vec{x}, \vartheta)$$
$\vartheta$ contains all weights and biases.
- **$L$ choice:** Mean Squared Error for regression; Binary Cross-Entropy for binary classification; Cross-Entropy with softmax for multiclass.
- **Role of $L$:** defines “what good means”; its surface over $\vartheta$ is the **optimization landscape**.

### Gradient Descent

Gradient Descent updates parameters in the direction that reduces the loss according to the gradient. The learning rate controls the size of each update step. Large learning rates may cause divergence; small rates may cause extremely slow training.

Update rule:  
$$\vartheta_{s+1} = \vartheta_s - \eta \nabla_\vartheta L(y, f(\vec{x}\,|\,\vartheta_s))$$
- **$\eta$ (learning rate):** step size; too large → divergence/oscillation; too small → slow progress or stagnation.
- **$\nabla_{\vartheta}L$ (gradient):** direction of steepest increase; the negative gradient gives the direction of fastest decrease.

**Why full-batch GD is impractical:** each step requires scanning the entire dataset; on large data it is slow and may get trapped in sharp minima due to low noise.

### Stochastic Gradient Descent (sample-level updates)

SGD replaces the full average by a single sample:

Characteristics:
- fast updates,
- strong noise in gradients,
- high sensitivity to the learning rate.

Uses one sample at a time:  
$$\vartheta_{s+1}=\vartheta_s-\eta\,\nabla_{\vartheta} L\!\big(y_i,\ f(x_i\mid\vartheta_s)\big)$$
- **Pros:** very frequent, cheap updates; gradient noise can help escape poor basins.
- **Cons:** very noisy signal; sensitive to $\eta$; unstable without tuning.
### Mini-batch SGD (the practical standard)

Mini-batches of size $b$ average gradients over a small subset:

$$\vartheta_{s+1}=\vartheta_s-\frac{\eta}{b}\sum_{\beta=1}^{b}\nabla_{\vartheta} L\!\big(y_{i_\beta},\ f(x_{i_\beta}\mid\vartheta_s)\big)$$

- **Step:** one mini-batch update.
- **Epoch:** one pass over all training samples.
- **Shuffling:** batches are re-formed every epoch to avoid order bias.

**Why mini-batches work so well**

- **Statistical:** averaging over $b$ samples reduces gradient variance versus pure SGD, improving stability.
- **Computational:** batches fit GPU/TPU vectorization; throughput rises sharply for moderate $b$ (e.g., 32–512).
- **Generalization:** moderate gradient noise often acts as an implicit regularizer.

**Choosing batch size and learning rate**

- Small $b$ → noisier but more regularizing gradients; often needs a **smaller** $\eta$ per-sample or a warmed-up schedule.
- Large $b$ → smoother gradients; can use **larger** $\eta$ but may generalize slightly worse without additional tricks (e.g., learning-rate scaling or warmup).  
    Practical ranges: $b\in[32,512]$; tune $\eta$ on a log-scale (e.g., $10^{-4}$ to $10^{-1}$).
---

## Backpropagation

Backpropagation provides **exact gradients** for all parameters by systematic application of the chain rule.

**Forward pass:** compute $\hat{y}$ layer by layer and evaluate the loss $L(y,\hat{y})$.  
**Backward pass:** propagate sensitivities from output to input:

- For a layer output $h=\sigma(z)$ with $z=W x+b$, the gradient wrt $W$ is

$$\frac{\partial L}{\partial W} = \left(\frac{\partial L}{\partial h}\odot \sigma'(z)\right)\,x^T,$$

and wrt $b$ is

$$\frac{\partial L}{\partial b} = \frac{\partial L}{\partial h}\odot \sigma'(z),$$

where $\odot$ is the element-wise product.  
The term $\frac{\partial L}{\partial h}$ comes from the **next layer** and is passed backward, accumulating via matrix multiplications and element-wise derivatives. This recursion yields gradients for every layer efficiently — critical for deep networks.

**What $\hat{y}$ denotes:** the model’s predicted output. The loss compares $y$ (ground truth) and $\hat{y}$; their difference drives gradient signals.

### The Role of $\hat{y}$

The symbol $\hat{y}$ denotes the model’s predicted value. The difference between $y$ (true label) and $\hat{y}$ (prediction) determines the loss.  
Backpropagation uses this difference to compute error signals throughout the network.

### Mechanism

1. A forward pass computes $\hat{y}$.
2. The loss quantifies error.
3. Gradients of the loss with respect to the output are computed.
4. These gradients propagate backward, layer by layer.
5. Each weight receives its own gradient, which SGD uses to update the parameter.

Backpropagation makes training deep architectures computationally feasible.

### Chain Rule in Neural Networks

For a small network:

$$x \rightarrow \sigma(w_0 x + b_0) \rightarrow \sigma(w_1 x' + b_1) \rightarrow \hat{y}$$
Loss:  
$$L = \frac{1}{N}(y - \hat{y})^2$$
A weight affects the loss through multiple computational paths, requiring sums of chain-rule terms.


![[Pasted image 20251029154934.png]]


![[Pasted image 20251109205350.png]]
![[Pasted image 20251109205404.png]]

## PyTorch

PyTorch is designed for **numerical computation**, with a strong focus on **deep learning**.

Main characteristics:

- A tensor library similar to NumPy → but with GPU support (`torch.cuda`)
- Automatic differentiation system (`torch.autograd`)
- A modular system to build neural networks → “lego block style”
- Control over training loops (unlike high-level libraries such as Keras)
- Highly flexible for research, prototyping, and custom architectures

---

### Core Components of PyTorch

#### 1. **Tensors** (the PyTorch array)

Equivalent to NumPy arrays but with:

- GPU acceleration
- Support for automatic gradients
- Many operations identical to NumPy

Examples:

- Creation: `torch.tensor`, `torch.zeros`, `torch.randn`
- Operations: `@` (matrix multiplication), broadcasting, slicing, reshaping
- Moving to GPU: `tensor.to("cuda")`

---

#### 2. **Autograd** (Automatic Differentiation)

PyTorch tracks computations performed on tensors (if `requires_grad=True`).  
It builds a **computational graph** and can compute gradients with:

`loss.backward()`

This is what makes training neural networks possible.

The graph is constructed dynamically → meaning every forward pass can change (very useful for research models).

---

#### 3. **Neural Network Modules (`torch.nn`)**

These are the building blocks of ANNs:

- `nn.Linear` → fully connected layers
- `nn.ReLU`, `nn.Sigmoid`, `nn.Tanh`, `nn.GELU` → activations
- `nn.Sequential` → simple way to stack layers
- Custom models created by subclassing `nn.Module`

PyTorch requires defining:

1. **`__init__`** → layers
2. **`forward()`** → how inputs flow through the network

Example architecture conceptually:

```python
class MLP(nn.Module):
     def __init__(self):
            super().__init__()
            self.layer1 = nn.Linear(in_features, hidden)
            self.act = nn.ReLU()         
            self.layer2 = nn.Linear(hidden, out_features)      
    def forward(self, x):         
    return self.layer2(self.act(self.layer1(x)))
    ```

---

#### 4. **Loss Functions (`torch.nn.functional` or `nn`)**

PyTorch provides many losses:

- `nn.MSELoss()` → regression
- `nn.CrossEntropyLoss()` → multiclass classification
- `nn.BCELoss()` → binary classification

Training compares:

- **Target values** → `y`
- **Predictions** → `y_hat`

Then computes loss → then gradients.

---

#### 5. **Optimizers (`torch.optim`)**

Update parameters using gradient descent variants:

- `optim.SGD` → stochastic gradient descent
- `optim.Adam` → Adam optimizer (most popular)
- `optim.RMSprop`, `optim.Adagrad`, etc.

Standard workflow:

1. Zero accumulated gradients → `optimizer.zero_grad()`
2. Compute gradients → `loss.backward()`
3. Update parameters → `optimizer.step()`    

---

### Training Loop (Core Logic in PyTorch)

Unlike Keras, PyTorch does **not** automate the training loop.

The general flow:

1. **Forward pass**

`y_hat = model(x)`

2. **Compute loss**

`loss = criterion(y_hat, y)`

3. **Backpropagation**

`loss.backward()`

4. **Optimizer step**

`optimizer.step()`

5. **Reset gradients**

`optimizer.zero_grad()`

This manual control is what makes PyTorch extremely flexible — you can modify any part of this pipeline.

---

### Why Use PyTorch?

- Excellent for research and custom architectures
- Fine control over all steps
- Dynamic computation graphs
- Clear debugging (Pythonic style)
- Strong documentation, ecosystem (Lightning, HuggingFace, fastai)
- Native GPU support

---

### Lego-Block Style Model Building

PyTorch models are assembled piece-by-piece:

- Layers = bricks
- Activation functions = bricks
- Custom computation = mortar
- Forward pass = how the bricks connect

Everything is explicit, making it simple to experiment with:

✅ new architectures  
✅ new losses  
✅ non-standard layers  
✅ physics-informed models  
✅ stochastic models

---

### Mini Practical Guide (Mental Checklist)

#### ✅ Create tensors

`torch.tensor()`, `torch.randn()`, `.to(device)`

#### ✅ Build model

Subclass `nn.Module` or use `nn.Sequential`

#### ✅ Choose loss

MSE, CrossEntropy, etc.

#### ✅ Choose optimizer

SGD, Adam…

#### ✅ Write training loop

Forward → Loss → Backward → Update → Zero grads

#### ✅ Move model and data to GPU

`model.to("cuda")`, `x.to("cuda")`

#### ✅ Use DataLoader for batching

`torch.utils.data.DataLoader(dataset, batch_size=32, shuffle=True)`