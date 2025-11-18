---
Class: "[[06 Machine Learning]]"
Date: 2025-11-07
Last Modified: Friday 7th November 2025 12:57
---
# Friday 7th November 2025

# 📒Class Summary

PyTorch is a Python-based scientific computing library optimized for automatic differentiation and neural network training. It provides a **NumPy-like tensor API**, supports **GPU acceleration**, and enables building models in a **modular, lego-style fashion** using `torch.nn`.  
It is lower level than Keras or Lightning, which gives more flexibility but requires more explicit steps: defining models, computing losses, and writing training loops manually.  
Key concepts include **tensors**, **autograd**, **modules**, **optimizers**, and the **forward pass** defined through class methods.

---
# 📝 Notes

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

---

# 💡 Key Takeaways

- PyTorch is **NumPy with gradients and GPU acceleration**.
- Models are built manually for flexibility.
- Autograd computes gradients automatically.
- A PyTorch training loop consists of **forward → loss → backward → update**.
- `nn.Module` defines architecture; `optim` defines parameter updates.
- PyTorch is lower-level than Keras—more control, more responsibility.

---

# 💭 Questions

- What advantages does a dynamic computation graph offer compared to static frameworks?
- Why is it necessary to call `optimizer.zero_grad()` every iteration?
- How do `nn.Module` and `nn.Sequential` differ in flexibility?
- When would SGD be preferred over Adam?
- What problems arise if tensors are split across CPU and GPU?

---

# 🐢 Definitions

- **Tensor:** Multidimensional array used for all computations in PyTorch.
- **Autograd:** Automatic differentiation engine that computes gradients.
- **Module (`nn.Module`):** Base class for neural network layers and models.
- **Forward pass:** Computation of predictions from inputs.
- **Backward pass:** Computation of gradients via autograd.
- **Optimizer:** Algorithm that updates model parameters using gradients.
- **Loss function:** Scalar function measuring prediction error.

---

# 📅 Homework

- Build a simple MLP in PyTorch with one hidden layer and train it on synthetic data.
- Compare training with SGD vs Adam.
- Visualize the loss curve during training.
- Modify the activation function (ReLU → Tanh → GeLU) and observe changes.