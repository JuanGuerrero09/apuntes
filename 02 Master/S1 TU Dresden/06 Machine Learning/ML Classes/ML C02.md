---
Class: "[[06 Machine Learning]]"
Date: 2025-11-09
Last Modified: Sunday 9th November 2025 21:51
---
# Friday 17th October 2025

# 📒Class Summary

This lecture introduced **Logistic Regression**, a fundamental algorithm for **binary classification**.  
Unlike linear regression models that predict continuous values, logistic regression predicts **probabilities** and maps them to class labels using the **sigmoid function**.

The session covered:

- Why linear regression cannot be used for classification
- The role of the **sigmoid** in converting linear outputs into probabilities
- The **model formulation** (weights, bias, predictions)
- **Maximum Likelihood Estimation (MLE)** and **cross-entropy loss**
- The training procedure via **gradient descent**
- Extension to **multiclass problems** through **softmax regression**
- Classification metrics and evaluation methods such as **confusion matrices** and **cross-validation**


---
# 📝 Notes
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

---

# 💡 Key Takeaways

- Logistic Regression predicts **probabilities**, not discrete classes.
- The **sigmoid** converts linear outputs into values between 0 and 1.
- Training minimizes **cross-entropy loss** via gradient descent.
- Logistic regression is the **foundation** of neural networks (linear layer + activation). 
- For multiclass problems, use **softmax regression**.
- Evaluation uses confusion matrices and metrics such as precision, recall, F1, MCC.
- Cross-validation provides more reliable performance estimates.
- Binary Cross-Entropy penalizes incorrect probability estimates.
- MLE provides the statistical foundation of logistic regression.
- Softmax Regression handles multiclass problems using normalized probability distributions.
- Classification metrics describe different types of errors and evaluation priorities.
- Cross-validation offers robust performance assessment.

---

# 🐢 Definitions

- **Sigmoid Function:** A smooth function mapping real values to $(0,1)$.
- **Binary Cross-Entropy:** Loss function measuring mismatch between probabilities and binary labels.
- **Maximum Likelihood Estimation:** Statistical method to find parameters that best explain observed data.
- **Softmax Function:** Multiclass generalization of the sigmoid, producing normalized probabilities.
- **Decision Threshold:** Probability cutoff used to assign class labels.
- **Confusion Matrix:** Table summarizing classification outcomes.
- **K-Fold Cross-Validation:** Method to evaluate model stability across different data splits.

---

# 💭 Questions

- Why does the sigmoid function ensure stability during optimization?
- How does the decision threshold influence precision–recall trade-offs?
- Why is cross-entropy the natural loss function for probabilistic models?
- In what scenarios would logistic regression underperform compared to tree-based models?
- How does softmax regression generalize logistic regression?
- How does cross-entropy differ from squared error in terms of penalty?
- In which scenarios should the decision threshold be adjusted?
- Why does the sigmoid function naturally arise from the Bernoulli likelihood?
- How does softmax ensure a normalized probability distribution?
- Which classification metric is most suitable for heavily imbalanced datasets?

---

# 📅 Homework

- Implement binary logistic regression using `scikit-learn` and analyze the learned coefficients.
- Evaluate the model using a confusion matrix, precision, recall, and MCC.
- Try different thresholds (e.g., 0.3, 0.7) and observe how precision and recall change.
- Implement softmax regression for a multiclass dataset and inspect class probabilities.
- Compare performance between holdout and k-fold cross-validation.


