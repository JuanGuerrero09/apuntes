---
Class: "[[06 Machine Learning]]"
Date: 2025-11-21
Last Modified: Friday 21st November 2025 22:51
---
# Wednesday 12th November 2025

# 📒Class Summary

Introduction to activation functions and their mathematical foundations, focusing on how they introduce non-linearity into neural networks.  
Detailed explanation of the **sigmoid** and **ReLU** functions, their gradients, and their effects on deep learning (vanishing and exploding gradients).  
Discussion of **regularization** techniques (explicit and implicit) to prevent overfitting, the **bias–variance tradeoff**, and **multilayer perceptrons (MLPs)** for classification, including one-hot encoding, softmax activation, and categorical cross-entropy loss.

---

# 📝 Notes

## Activation Functions, Regularization, and MLPs for Classification

---

### Activation Functions and Their Gradients

![[Pasted image 20251121232219.png]]

Activation functions introduce **non-linearity** into neural networks, allowing them to model **complex, non-linear relationships** between inputs and outputs.  
Without activation functions, a neural network would behave as a purely linear transformation — regardless of its depth.

Two classical activation functions are:

---

#### 1. Sigmoid Function

The **sigmoid**, or **logistic function**, maps any input to a value between 0 and 1:

$$\sigma(x) = \frac{1}{1 + e^{-x}}  $$
- When $x \to +\infty$, $\sigma(x) \to 1$
- When $x \to -\infty$, $\sigma(x) \to 0$
- $\sigma(0) = 0.5$

This “S-shaped” curve compresses values, making it useful for modeling **probabilities** or **binary decisions**.

**Derivative:**
$$\sigma'(x) = \sigma(x) (1 - \sigma(x))  $$
The derivative is always between 0 and 0.25, meaning gradients are **small**.  
This property, while smooth and differentiable, causes problems in deep networks.

---

#### Vanishing Gradient Problem

When applying **backpropagation**, the gradient for a weight $w_0$ in the first layer becomes a **product** of partial derivatives through all layers:

$$\frac{\partial L}{\partial w_0} =  
\frac{\partial L}{\partial y}  
\frac{\partial y}{\partial h}  
\frac{\partial h}{\partial g}  
\frac{\partial g}{\partial f}  
\cdots  
\frac{\partial d}{\partial w_0}  $$

If each derivative term (like $\sigma'(x)$) is small, then the product approaches **zero exponentially** with the number of layers $n$.

$$(0.25)^n \to 0  $$

→ **Gradients vanish**, weights in early layers receive almost no update, and the network **stops learning** beyond a few layers.

This phenomenon is the **vanishing gradient problem**.  
It prevents deep sigmoid-based architectures from learning effectively.

---

#### 2. ReLU (Rectified Linear Unit)

Discovered around 2011, the **Rectified Linear Unit (ReLU)** solved this limitation.

![[Pasted image 20251121233700.png]]

Definition:

$$f(x) = \max(0, x)  $$

- If $x > 0$, the neuron is **active** and passes the signal unchanged.
- If $x \le 0$, the neuron **does not activate** (output = 0).

**Derivative:**
$$ 
f'(x) =  
\begin{cases}  
1, & x > 0 \\
0, & x \le 0  
\end{cases}  
$$
**Advantages:**

- Gradient is **large (1)** for active neurons → no vanishing gradient.
- Computationally cheap (no exponentials).
- Allows training of **very deep networks**.

**Drawbacks:**

- “Dead ReLU problem”: neurons stuck at 0 if they receive only negative inputs.
- Can cause **exploding gradients** if not normalized.

The ReLU mimics the **biological “action potential”** of neurons: a neuron either fires or stays silent.

---

### Regularization

Regularization limits a model’s **complexity** to improve **generalization** and prevent **overfitting**.

![[Pasted image 20251121233801.png]]

Two types:

- **Explicit regularization:** adds mathematical penalties or constraints to the loss.
- **Implicit regularization:** modifies training dynamics or data to reduce overfitting indirectly.

---

#### Explicit Regularization — L2 Regularization

Goal: minimize the loss function while also **penalizing large weights**.

$$\hat{\theta} = \arg \min_\theta \sum_{i=1}^I l_i(y_i, \hat{y}_i) + \lambda ||\theta||_2^2$$

**Interpretation:**

- The first term minimizes prediction error.
- The second term ($\lambda ||\theta||_2^2$) penalizes large weights.

**$\lambda$ (lambda)** controls the tradeoff between fitting and simplicity:

- $\lambda = 0$: no penalty → risk of overfitting.
- High $\lambda$: stronger constraint → simpler model, possibly underfitting.

![[Pasted image 20251121234030.png]]  
![[Pasted image 20251121234134.png]]

Alternative names:

- **Ridge regression**
- **Tikhonov regularization**
- **Frobenius norm regularization**

---

#### Implicit Regularization — Dropout

![[Pasted image 20251121234301.png]]

During training, **randomly deactivate** a fraction of neurons (set to 0).

This prevents over-reliance on specific paths and improves robustness.  
It acts like training many smaller networks and averaging their effect.

**Key hyperparameter:** dropout rate (commonly 0.2–0.5).

---

#### Implicit Regularization — Early Stopping

![[Pasted image 20251121234337.png]]

Monitors **validation loss**.  
If it stops improving for a number of epochs (patience $k$), training is stopped early to avoid overfitting.

---

#### Regularization Summary

![[Pasted image 20251121234458.png]]

**Explicit (mathematical):**

- L2 Regularization
- Add noise to inputs/weights

**Implicit (behavioral):**

- Dropout
- Early stopping
- Ensembling
- Data augmentation
- Transfer or multitask learning

Purpose: make the loss surface smoother and find **wider minima**, leading to better generalization.

---

### Bias–Variance Tradeoff

![[Pasted image 20251121234954.png]]

Bias and variance describe two complementary sources of prediction error.

#### Bias
$$\text{Bias}[\hat{\theta}] = E[\hat{\theta}] - \theta $$
Measures how far model predictions are, on average, from the true value (systematic error).

#### Variance

Measures how much predictions vary between training datasets (instability).

$$Var[\hat{\theta}] = E [(E[\hat{\theta}] - \theta)^2]$$
$$Var[\hat{\theta}] = E[\hat{\theta}^2] - (E[\hat{\theta}])^2$$

#### Combined Error

Regression: optimize a squared error $S = (y - \hat{y})^2$

$$E[S]=E[(y - \hat{y})^2] = \text{Bias}^2 + \text{Var}  $$
- **High bias:** underfitting → model too simple.
- **High variance:** overfitting → model too sensitive.
- **Ideal:** balanced tradeoff → robust generalization.

---

### MLPs for Classification

#### Classification as Level-Set Learning

![[Pasted image 20251122000748.png]]

An **MLP (Multilayer Perceptron)** for classification learns **decision boundaries** that separate data points belonging to different classes.

These boundaries are called **level sets**: surfaces in input space where the output of the network equals a constant (e.g., probability threshold = 0.5).

The network learns a **mapping** $f(\vec{x}) \to y$ such that samples on one side of the boundary are classified as one label, and those on the other as another label.

---

#### One-Hot Encoding

**Definition:** represents each class as a binary vector.

Example with 3 classes:

|Label|One-hot vector|
|---|---|
|0|[1, 0, 0]|
|1|[0, 1, 0]|
|2|[0, 0, 1]|

Originally from **electrical engineering** — one “hot” signal (1), others “cold” (0).  
Used because it provides **orthogonal representation** of classes, avoiding unintended ordinal relationships.

---

#### Softmax Activation

Neural networks output real-valued numbers (“logits”), which can be any value from $(-\infty, +\infty)$.  
**Softmax** converts them into a **probability distribution**.

$$\sigma(a_i) = \frac{e^{a_i}}{\sum_{j=1}^n e^{a_j}}  $$

- $\sigma(a_i) \in [0, 1]$
- $\sum_i \sigma(a_i) = 1$

This allows direct comparison of predicted and true **probability distributions (PDFs)** in the loss function.

---

#### What is a PDF?

A **Probability Density Function (PDF)** describes how probability is distributed over possible outcomes.  
For discrete classification:

- $p$: true class distribution (one-hot encoded target)
- $q$: predicted distribution (softmax output)

---

#### Loss Function: Categorical Cross-Entropy

Measures the dissimilarity between two probability distributions $p$ (true) and $q$ (predicted):
$$H(p, q) = -\sum_{x \in X} p(x) \log q(x)  $$
Equivalent to minimizing **Kullback–Leibler divergence** $D_{KL}(p||q)$.

For **binary classification**:

$$L(y, \hat{y}) = -[y \log(\hat{y}) + (1 - y)\log(1 - \hat{y})]  $$


---

# 💡 Key Takeaways

- Activation functions introduce **non-linearity**, enabling complex mappings.
- **Sigmoid** compresses inputs to (0,1) but causes **vanishing gradients**.
- **ReLU** solves this, allowing deep architectures to train effectively.
- Regularization prevents overfitting:
    - _Explicit:_ L2, weight decay.
    - _Implicit:_ dropout, early stopping, noise.
- **Bias–variance** explains tradeoffs between underfitting and overfitting.
- MLPs use **one-hot encoding** for categorical targets.
- **Softmax + Cross-Entropy** give a probabilistic framework for classification.
- Classification is a process of learning **level-set boundaries** that separate classes in feature space.

---

# 💭 Questions

- Why does sigmoid activation compress gradients and slow learning?
- How does $\lambda$ influence model simplicity in L2 regularization?
- What does dropout simulate in the network’s learning process?
- How does ReLU resemble a neuron’s biological activation?
- What is the role of level-set surfaces in classification boundaries?
- Why is categorical cross-entropy equivalent to minimizing KL divergence?

---

# 🐢 Definitions

- **Activation Function:** introduces non-linearity to neural outputs.
- **Sigmoid:** $1 / (1 + e^{-x})$, smooth and bounded between 0 and 1.
- **ReLU:** $\max(0, x)$, efficient and biologically inspired.
- **Vanishing Gradient:** near-zero gradients preventing learning in deep layers.
- **Regularization:** methods to improve model generalization.
- **$\lambda$:** penalty factor controlling regularization strength.
- **Dropout:** stochastic neuron deactivation to prevent co-adaptation.
- **Early Stopping:** stopping training when validation loss stops improving.
- **Bias–Variance Tradeoff:** balance between model complexity and stability.
- **One-Hot Encoding:** binary vector representation for categorical labels.
- **Softmax:** converts logits into probabilities.
- **PDF:** probability density function describing the likelihood of outcomes.
- **Categorical Cross-Entropy:** loss measuring divergence between true and predicted distributions.
- **Level Set:** surface separating decision regions in classification.

---

# 📅 Homework

- Implement a simple neural network with sigmoid vs ReLU activations and compare training performance.
- Visualize the softmax output for a 3-class dataset.
- Add L2 regularization with different $\lambda$ values and examine overfitting behavior.
- Apply dropout (0.3, 0.5) and observe effects on convergence.
- Compute categorical cross-entropy manually for one-hot encoded predictions.
- Plot bias–variance tradeoff by varying model complexity.

---
