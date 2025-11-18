---
Class: "[[06 Machine Learning]]"
Date: 2025-11-04
Last Modified: Tuesday 4th November 2025 22:39
---
# Wednesday 15th October 2025

# 📒 Class Summary

Introduction to **Machine Learning (ML)** fundamentals and the transition toward **classification** tasks.  
The lecture covered the taxonomy of learning paradigms — supervised, unsupervised, and representation learning — and introduced **Decision Trees** as a foundational algorithm for classification.  
Emphasis was placed on how **entropy**, **information gain**, and **Gini impurity** guide the construction of decision boundaries.

---
# 📝 Notes

## Introduction and Diving into Classification

$$
\text{Deep Learning} \in \text{Representation Learning} \in \text{Machine Learning} \in \text{AI} 
$$
Machine Learning (ML) is a subfield of Artificial Intelligence (AI) dedicated to designing systems capable of **learning from data** and making predictions or decisions without explicit programming.  
Within ML, **Representation Learning** focuses on finding compact and meaningful ways to express data, while **Deep Learning** uses multi-layered neural networks to automatically extract hierarchical representations from raw inputs.

---
## Four Pillars of ML

### Supervised Learning

Supervised learning deals with **labeled data**, where each input is associated with a known output.  
The goal is to learn a mapping function from input features to target values.

#### Classification

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

#### Regression

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

### Unsupervised Learning

Unsupervised learning operates on **unlabeled data**, seeking to uncover hidden patterns, relationships, or structures.

#### Cluster Analysis

- **Data:** Any numerical or categorical features.
- **Task:** Group similar data points within the same cluster based on distance or similarity measures.
- **Metrics:** Silhouette Score, Rand Index.
- **Examples:** Topic modeling, behavioral segmentation, hydrological pattern clustering.

**Methods:**

- K-Means
- Hierarchical Clustering

#### Dimensionality Reduction

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

# 💡 Key Takeaways

- Decision trees build hierarchical rules by maximizing **information gain** or minimizing **impurity**.
- **Entropy** and **Gini** both measure node impurity; Gini is faster, entropy is more interpretable.
- Overfitting occurs when the tree perfectly fits training data — use **depth limits** and **pruning**.
- Decision trees form the foundation for powerful ensemble methods such as **Random Forests** and **Gradient Boosted Trees**.

---

# 💭 Questions

- Why is entropy considered a measure of uncertainty?
- How does Gini impurity differ conceptually from entropy?
- What is the effect of maximum depth on model bias and variance?
- How can pruning improve generalization?
- How are decision trees used as base learners in ensemble models?

---

# 🐢 Definitions

- **Entropy:** Quantifies disorder or uncertainty in a dataset.
- **Information Gain:** Reduction in entropy after splitting the data.
- **Gini Impurity:** Measure of how often a randomly chosen element would be incorrectly labeled.
- **Pruning:** Process of removing branches that add little predictive value.
- **Pure Node:** A node containing samples of a single class.
- **Threshold:** Value that determines how data is split along a feature.
- **CART:** Classification and Regression Tree algorithm, foundation for Random Forests.

---

# 📅 Homework

- Implement a decision tree classifier using `scikit-learn` and visualize its structure.
- Compare results using **Gini** and **Entropy** as splitting criteria.
- Experiment with different `max_depth` values and record accuracy changes.
- Analyze the model’s overfitting behavior with training vs validation performance.

![[Pasted image 20251023233636.png]]
