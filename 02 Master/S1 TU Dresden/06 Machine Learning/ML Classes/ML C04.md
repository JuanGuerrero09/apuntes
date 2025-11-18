---
Class: "[[06 Machine Learning]]"
Date: 2025-10-29
Last Modified: Wednesday 29th October 2025 15:40
---
# Wednesday 29th October 2025

# 📒Class Summary

Artificial Neural Networks (ANNs) extend linear models by introducing hidden layers, non-linear activation functions, and trainable parameters (weights and biases). A Multilayer Perceptron (MLP) is the simplest feed-forward architecture, composed of an input layer, one or more hidden layers, and an output layer.  
Learning in ANNs consists of a **forward pass** (prediction), a **loss function** (measuring error), and **backpropagation** (computing gradients for weight updates).  
Parameter updates are performed using **Gradient Descent** or **Stochastic Gradient Descent (SGD)** with mini-batches.  

Gradient-based learning proceeds by:
1. a **forward pass** to produce predictions $\hat{y}$,
2. computing a **loss** $L(y,\hat{y})$,
3. **backpropagation** to obtain exact gradients via the chain rule, and
4. parameter updates with **(mini-batch) Stochastic Gradient Descent (SGD)**.
5. Non-linear activations such as ReLU or GeLU are essential; without them, the entire network behaves as a linear model regardless of depth.

---
# 📝 Notes

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

---

# 💡 Key Takeaways

- Non-linear activations are indispensable; without them, deep stacks remain linear.
- Bias terms allow neurons to shift activation thresholds and model offsets.
- MLPs are fully connected and feed-forward; with sufficient width, they approximate a wide class of functions.
- The loss function defines success; its gradient guides how parameters change.
- Mini-batch SGD balances noise and efficiency and is the default for deep learning.
- Backpropagation applies the chain rule to compute exact gradients layer by layer.

---

# 💭 Questions

- How does the choice between ReLU, tanh, sigmoid, or GeLU affect gradient flow and convergence speed?
- Under what conditions do large batch sizes hurt generalization, and how can learning-rate scaling or warmup mitigate this?
- Which loss functions pair best with typical output activations (identity, sigmoid, softmax), and why?
- How do bias terms influence decision boundaries compared to using weights alone?
- What failure modes arise from poor learning-rate choices (divergence, oscillation, plateaus)?

---

# 🐢 Definitions

- _Artificial Neural Network (ANN)_: A layered computational model where each neuron applies a linear transform plus a non-linear activation, enabling complex function approximation.
- _Neuron_: A unit computing $z=Wx+b$ and an activation $h=\sigma(z)$; fundamental building block of ANNs.
- _Weight_: A trainable scalar or matrix that scales/mixes inputs; determines direction and strength of influence.
- _Bias_: A trainable offset that shifts pre-activation $z$; enables activation at $x=\vec{0}$ and improves representational flexibility.
- _Activation Function_: A non-linear map (e.g., ReLU, tanh, sigmoid, GeLU) that prevents layers from collapsing into a single linear transformation.
- _Hidden Layer_: An internal layer transforming representations; outputs feed subsequent layers to build hierarchy.
- _Multilayer Perceptron (MLP)_: A fully connected, feed-forward neural network with one or more hidden layers; uses linear transforms plus non-linear activations and a task-appropriate output activation.
- _Forward Pass_: The computation of $\hat{y}=f(x\mid\vartheta)$ by propagating inputs through layers to obtain predictions and the loss.
- _Loss Function_: A scalar objective (e.g., MSE, Cross-Entropy) quantifying the discrepancy between targets $y$ and predictions $\hat{y}$.
- _Gradient_: The vector/matrix of partial derivatives $\nabla_{\vartheta}L$ indicating how a small parameter change affects the loss.
- _Backpropagation_: The algorithm that applies the chain rule backward through layers to compute $\nabla_{\vartheta}L$ efficiently.
- _Learning Rate (η)_: The step size used in parameter updates; governs stability and speed of convergence.
- _Mini-Batch_: A subset of samples used to form one approximate gradient, trading variance for speed.
- _Epoch_: One complete pass through the training dataset during optimization.
- _Generalization_: The model’s ability to maintain performance on unseen data, not only on the training set.

---

# 📅 Homework

- Derive the backpropagation gradients for a single hidden layer MLP with ReLU: compute $\partial L/\partial W^{(1)}$, $\partial L/\partial b^{(1)}$, $\partial L/\partial W^{(2)}$, $\partial L/\partial b^{(2)}$ for both MSE and Cross-Entropy losses.
- Perform a mini-batch size sweep ($b\in{16,32,64,128,256}$) and learning-rate sweep ($\eta\in{10^{-4},10^{-3},10^{-2},10^{-1}}$); plot loss vs. steps and discuss stability vs. speed.
- Compare sigmoid, tanh, ReLU, and GeLU on the same task; report training curves and final accuracy, and relate behavior to gradient saturation or sparsity.
- Implement a simple learning-rate warmup for larger batches and observe its effect on convergence.




