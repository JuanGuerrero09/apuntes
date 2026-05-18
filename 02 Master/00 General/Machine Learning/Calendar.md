
# Machine Learning Refined

![[Pasted image 20260428141243.png]]

# Understanding Deep Learning

https://udlbook.github.io/udlbook/



---

## The Integrated Learning Path

### Phase 1: Optimization & Linear Foundations

**Goal:** Master "from scratch" implementation of the training loop using simple hydraulic data.

- **Readings:**
    
    - **MLR:** Chapters 2 (Optimization), 3 (Linear Regression), and 4 (Classification).
        
    - **UDL:** Chapter 2 (Supervised Learning) and 5 (Loss Functions).
        
- **Hydrology Project (Regression):** Predict **Streamflow** based on Rainfall and Temperature.
    
    - _Exercise:_ Implement Gradient Descent from scratch to find the weights of a linear model.
        
    - _Dataset:_ **CAMELS** (Catchment Attributes for Large-Sample Studies).
        
- **Hydraulics Project (Classification):** Classify **Pipe Failure Risk** (Low/High) based on age, material, and pressure.
    
    - _Exercise:_ Implement Logistic Regression from scratch.
        
    - _Dataset:_ **UCI Hydraulic Test Rig** dataset.
        

### Phase 2: Automatic Feature Design (Neural Networks)

**Goal:** Transition from manual formulas to "learned" features for complex watersheds.

- **Readings:**
    
    - **MLR:** Chapter 5 (Automatic Feature Design) — This is the bridge to Neural Networks.
        
    - **UDL:** Chapters 3 (Shallow Networks), 4 (Deep Networks), and 6 (Fitting Models/SGD).
        
- **Hydrology Project:** **Non-linear Rainfall-Runoff Modeling**.
    
    - Traditional hydrology uses "Tank Models." Here, you will build a Multi-Layer Perceptron (MLP) to learn the non-linear transformation between precipitation and runoff.
        
    - _Exercise:_ Use UDL's approach to implement backpropagation for a 3-layer network.
        
- **Hydraulics Project:** **Pump Performance Prediction**.
    
    - Predict pump efficiency curves based on flow rate and RPM data.
        

### Phase 3: Specialized Architectures (Time & Space)

**Goal:** Use "Structure-Aware" ML for flood forecasting and spatial water distribution.

- **Readings:**
    
    - **UDL:** Chapter 10 (Sequence Modeling/RNNs) and Chapter 11 (Attention/Transformers).
        
    - _Optional:_ Research **Physics-Informed Neural Networks (PINNs)** — the ultimate union for engineers.
        
- **Hydrology Project:** **Flood Forecasting (Time-Series)**.
    
    - Use an LSTM or Transformer to predict water levels 24 hours in advance.
        
    - _Why:_ Water movement is a sequence; current streamflow depends on rainfall from days ago.
        
- **Hydraulics Project:** **Physics-Informed Pipe Networks**.
    
    - _Concept:_ Train a neural network where the loss function includes the **Energy Equation** (Head Loss). This ensures your ML model doesn't violate the laws of physics.
        

---
# Operational Roadmap: Mastering Machine Learning for Hydraulic Engineering

This roadmap provides a structured path from first principles in optimization to advanced physics-informed architectures. It integrates the theoretical rigor of _Machine Learning Refined_ (MLR) and _Understanding Deep Learning_ (UDL) with practical, data-driven applications in hydrology and flood risk.

---

### **Phase 1: Optimization and Mathematical Foundations**

**Week 1: Zero-Order Search and Environmental Parameterization**

Before deep learning, models must find optimal parameters. Zero-order methods are essential when gradient information is missing, such as when calibrating discrete land-surface parameters in a hydraulic solver.

- **Resources:** _MLR_ Chapter 2 (Zero-Order Optimization).
    
- **Exercises:**
    
    1. **MLR Exercise 2.2**: Write a Python script to implement the Random Search algorithm from scratch to minimize a simple quadratic function.
        
    2. **Logic Exercise**: Derive the "zero-order optimality condition" to understand why random search eventually converges on simple surfaces.
        
- **Practical Implementation:** Establish your Python stack (`pytorch`, `xarray`, `pandas`). Use the **Rijkswaterstaat (RWS) Waterinfo API** to fetch historical water levels for a Dutch gauge (e.g., Lobith) and use Random Search to find a "best-fit" constant offset for a simple stage-discharge rating curve.
    

**Week 2: First-Order Optimality and the Gradient Descent "Flow"**

As a hydraulic engineer, you can view gradient descent as the path of steepest drainage. This week focuses on the calculus of walk-downhill optimization.

- **Resources:** _MLR_ Chapter 3 (First-Order Techniques) and _UDL_ Chapter 6 (Fitting Models).
    
- **Exercises:**
    
    1. **UDL Problem 2.1**: Calculate the partial derivatives $\frac{\partial \mathcal{L}}{\partial \phi_0}$ and $\frac{\partial \mathcal{L}}{\partial \phi_1}$ for a linear regression loss function to derive the update rules for gradient descent .
        
    2. **Gradient Math**: Manually compute the gradient of a multi-variable function using the chain rule as a precursor to automatic differentiation.
        
- **Practical Implementation:** Implement a vanilla Gradient Descent algorithm from scratch. Use it to calibrate a 2-parameter linear reservoir model where you predict discharge $Q$ based on storage $S$, comparing your results to numerical solutions.
    

**Week 3: Advanced Optimizers (Adam, Momentum) and Curvature**

Learning in deep networks is often hindered by "zigzagging" in narrow loss valleys. Modern optimizers like Adam use momentum and adaptive step sizes to navigate these complex surfaces efficiently.

- **Resources:** _UDL_ Chapter 6 and _MLR_ Appendix A (Advanced Optimization).
    
- **Exercises:**
    
    1. **MLR Exercise 4.1**: Compare the convergence of Newton’s Method (second-order) versus Gradient Descent on a non-convex surface to see where first-order methods fail.
        
    2. **Logic Exercise**: Mathematically explain how Adam’s "moving average of gradients" acts as a low-pass filter on noisy precipitation data.
        
- **Practical Implementation:** Build a script comparing **Adam vs. SGD** for a regression task. Use a synthetic dataset with high "noise" (simulating sensor errors in rain gauges) to observe Adam’s superior convergence stability.
    

**Week 4: Robust Regression and Extreme Value Handling**

Flood risk management deals with outliers—the extreme peaks. Standard Least Squares can be biased by these events; robust regression techniques are often more appropriate for hydrology.

- **Resources:** _MLR_ Chapter 5 (Linear Regression) and _UDL_ Chapter 2 (Supervised Learning) .
    
- **Exercises:**
    
    1. **MLR Exercise 5.3**: Implement **Least Absolute Deviations (LAD)** regression and compare its performance against standard Least Squares when the data contains extreme flood peaks.
        
    2. **Metric Calculation**: Write a function to compute the **Kling-Gupta Efficiency (KGE)** and **Nash-Sutcliffe Efficiency (NSE)**—the industry standards for hydrological model verification.
        
- **Practical Implementation:** Apply your LAD regression to a decade of RWS discharge data. Identify and "flag" sensor malfunctions (outliers) that standard Least Squares would have wrongly incorporated into the model.
    

---

### **Phase 2: Deep Learning Architectures and Feature Engineering**

**Week 5: Classification for Flood Alerting Systems**

Turning continuous water levels into discrete risk categories (Code Yellow/Red) is a classification problem. This week introduces the Softmax function and cross-entropy loss.

- **Resources:** _MLR_ Chapters 6–7 (Classification) and _UDL_ Chapter 5 (Loss Functions).
    
- **Exercises:**
    
    1. **MLR Exercise 7.5**: Implement the **Categorical Cross Entropy** cost function from scratch to handle multi-class flood risk categorization.
        
    2. **Logic Exercise**: Explain the difference between a discriminative classifier (predicting risk directly) and a generative one (modeling the flood distribution) .
        
- **Practical Implementation:** Build a multi-class classifier using PyTorch. Input features: current stage, 24-hour rainfall, and soil moisture index. Output: predict three flood risk levels for a specific catchment using historical alert data.
    

**Week 6: High-Dimensional Feature Engineering (PCA & Standard Normalization)**

Hydrological datasets like **CAMELS** include dozens of attributes. Understanding how to scale and compress these features is critical for model stability.

- **Resources:** _MLR_ Chapter 9 (Feature Engineering) .
    
- **Exercises:**
    
    1. **MLR Exercise 9.5**: Implement **PCA-Sphering** to rotate and scale a feature set into a set of uncorrelated components.
        
    2. **Feature Logic**: Derive why standard normalization (mean=0, variance=1) is necessary for the activation functions used in neural networks.
        
- **Practical Implementation:** Download the **CAMELS US dataset**. Perform PCA on the 27 static catchment attributes (slope, sand fraction, mean precip) to identify the top 5 "catchment descriptors" that explain the most variance in regional hydrology.
    

**Week 7: The Shallow Neural Network and Universal Approximation**

A neural network is essentially a complex "stage-discharge" curve. We now move from linear models to networks that can approximate any hydrological function.

- **Resources:** _UDL_ Chapter 3 (Shallow Neural Networks) and _MLR_ Chapter 10 (Nonlinear Learning) .
    
- **Exercises:**
    
    1. **UDL Problem 3.1**: Prove that a network with a linear activation function ($a[z] = \psi_0 + \psi_1 z$) is mathematically identical to a single linear layer and cannot learn non-linear physics.
        
    2. **Approximation Exercise**: Sketch how a set of ReLU functions can be summed to approximate a non-linear hydrograph recession curve.
        
- **Practical Implementation:** Train a shallow Multi-Layer Perceptron (MLP) to approximate the relationship between root-zone soil moisture and surface runoff using data from **ECMWF GloFAS** .
    

**Week 8: Deep Networks and Backpropagation Mechanics**

Going "deep" allows the model to learn a hierarchy of features—from raw rainfall pulses to complex catchment-wide responses.

- **Resources:** _UDL_ Chapter 4 (Deep Neural Networks) and _MLR_ Chapter 11 (Feature Learning) .
    
- **Exercises:**
    
    1. **MLR Exercise 11.2**: Manually perform a forward pass for a 3-layer network on a single data point to understand how weights interact across layers.
        
    2. **Backprop derivation**: Follow the chain rule through two hidden layers to calculate the gradient of the loss with respect to the first-layer weights.
        
- **Practical Implementation:** Build a "Dirty Hands" MLP using only `numpy` (no PyTorch/TensorFlow). Use it to predict river stage at a 6-hour lead time, ensuring you manually implement the backpropagation step to update your weights.
    

---

### **Phase 3: Time Series and Sequential Learning (LSTMs)**

**Week 9: Recurrent Neural Networks (RNNs) and the Vanishing Gradient**

Hydrology is sequential—today's flow depends on yesterday's rain. Standard RNNs struggle with long-term memory (like snowmelt months later), which we study this week.

- **Resources:** _UDL_ Chapter 12 (Sequential Processing) and _MLR_ Chapter 13.
    
- **Exercises:**
    
    1. **UDL Problem 12.1**: Derive the gradient for an RNN over three time steps to visualize why gradients "vanish" as sequences get longer.
        
    2. **Logic Exercise**: Explain why a standard RNN might "forget" an antecedent soil moisture condition from 30 days prior.
        
- **Practical Implementation:** Train a simple RNN on daily discharge data. Intentionally use a long sequence (365 days) and visualize the gradient magnitude to see it approaching zero.
    

**Week 10: Long Short-Term Memory (LSTM) Architecture**

LSTMs use "gates" to manage memory, making them the current gold standard for rainfall-runoff modeling.

- **Resources:** _MLR_ Chapter 13 and _UDL_ Chapter 12 (LSTM section).
    
- **Exercises:**
    
    1. **MLR Exercise 13.4**: Write out the gate equations (Forget, Input, Output) and explain the physical analogy of the "cell state" as a water storage tank.
        
    2. **Gate Logic**: Predict what happens to the cell state if the "Forget Gate" is consistently 1 and the "Input Gate" is 0.
        
- **Practical Implementation:** Scratch-build an LSTM cell in Python. Manually feed it a sequence of "Rain/No Rain" data and visualize the cell state $c[t]$ as it accumulates moisture .
    

**Week 11: Applied Hydrology with `NeuralHydrology`**

Mastering the industry-standard library for machine learning in water science.

- **Resources:** `NeuralHydrology` Documentation and Tutorials .
    
- **Exercises:**
    
    1. **NH Tutorial**: "Introduction to NeuralHydrology." Successfully train a model on a single basin from the CAMELS dataset using the provided configuration files .
        
    2. **Benchmark Task**: Compare a "Local" model (trained on one basin) vs. a "Global" model (trained on 10 basins) using the **NSE** metric.
        
- **Practical Implementation:** Deploy a Global LSTM. Feed it meteorological forcing data from the **GloFAS reanalysis** and evaluate its performance across diverse topographic regimes (mountainous vs. flatland).
    

**Week 12: Entity-Aware LSTMs (EA-LSTM) and Multi-Timescale Modeling**

Standard LSTMs treat all catchments the same; EA-LSTMs use "entity embeddings" to let the model know if it's predicting a desert catchment or a rainforest.

- **Resources:** _Kratzert et al. (2019)_ – "Towards Learning Universal Predictors" .
    
- **Exercises:**
    
    1. **NH Tutorial**: "Adding a New Dataset." Follow the steps to integrate **CAMELS-CL** (Chile) into your workflow .
        
    2. **Architectural Task**: Modify your LSTM to include a "static input gate" that takes catchment attributes (like soil depth) as a non-temporal input.
        
- **Practical Implementation:** Implement a **Multi-Timescale LSTM**. Train it to predict daily mean discharge and hourly peak flows simultaneously, verifying if the shared hidden state improves the sub-daily accuracy .
    

---

### **Phase 4: Advanced Architectures (Transformers & GNNs)**

**Week 13: Self-Attention and the Transformer Revolution**

Transformers replace recurrence with "attention," allowing the model to look at the entire rainfall history at once.

- **Resources:** _UDL_ Chapter 12 (Attention & Transformers).
    
- **Exercises:**
    
    1. **UDL Problem 12.5**: Mathematically derive the Scaled Dot-Product Attention mechanism: $Softmax(\frac{QK^T}{\sqrt{d_k}})V$.
        
    2. **Logic Exercise**: Explain how "positional encoding" replaces the time-order information that is lost when removing the RNN structure.
        
- **Practical Implementation:** Implement a simple self-attention layer. Input a 30-day sequence of precipitation and discharge. Visualize the "Attention Weights" to see which prior days the model deems most important for predicting today's flood peak.
    

**Week 14: PatchTST and Long-Range Forecasting**

For long-term horizons (30+ days), traditional LSTMs often fail. Transformers like PatchTST are the new state-of-the-art for this task.

- **Resources:** _Ahmed et al. (2026)_ – "Transformers for Streamflow Forecasting".
    
- **Exercises:**
    
    1. **Research Task**: Compare the **FutureTST** vs. LSTM results from the **NeurIPS 2024** paper. Why does the Transformer dominate at the 30-day lead time?
        
    2. **Logic Exercise**: Explain the concept of "patching" in time series and why it helps capture local temporal patterns better than point-wise attention.
        
- **Practical Implementation:** Deploy a **PatchTST** model using the `WE-ACT` repository guidelines. Train it on **GloFAS reanalysis data** for a 30-day forecasting horizon and compare its **KGE** score against your Week 11 LSTM .
    

**Week 15: Graph Neural Networks (GNNs) for Spatial Inundation**

Rivers are networks; floodplains are meshes. GNNs allow us to model the spatial connectivity of water moving from node to node.

- **Resources:** _UDL_ Chapter 13 (GNNs) and `HydroGraphNet` Documentation .
    
- **Exercises:**
    
    1. **UDL Problem 12.8**: Define the "Message Passing" function for a graph where nodes are mesh cells and edges represent hydraulic connectivity.
        
    2. **Logic Exercise**: Why are GNNs superior to CNNs (images) for modeling irregular urban layouts or river branches?
        
- **Practical Implementation:** Using the `MFGNN_Flood` repository, build a k-NN graph of a simple catchment. Perform one round of message passing to distribute water volume from an "inflow node" to its neighbors based on elevation gradients .
    

**Week 16: Multi-Scale Hydraulic Modeling (mSWE-GNN)**

Capturing both fast mountain torrents and slow floodplain drainage requires a multi-scale approach.

- **Resources:** _Bentivoglio et al. (2025)_ – "Multi-scale hydraulic graph neural networks" .
    
- **Exercises:**
    
    1. **Research Task**: Analyze the **U-shaped encoder-processor-decoder** architecture of the mSWE-GNN. How do the downsampling/upsampling layers work on a graph?
        
    2. **Logic Exercise**: Explain the role of "Ghost Cells" in integrating time-varying boundary conditions (like a dike breach).
        
- **Practical Implementation:** Run an inference script using the **NVIDIA PhysicsNeMo** framework. Use a pre-trained HydroGraphNet model to predict water depth over an irregular mesh and verify the **Critical Success Index (CSI)** .
    

---

### **Phase 3: Physics-Informed ML and ECMWF Challenge**

**Week 17: Physics-Informed Neural Networks (PINNs) and Residual Loss**

Standard ML can predict negative water levels—a physical impossibility. PINNs solve this by adding the governing equations (like the Saint-Venant equations) to the loss function.

- **Resources:** _UDL_ Chapter 13 (Physics-informed section) and _Raissi et al. (2019)_ .
    
- **Exercises:**
    
    1. **Tutorial Task**: Follow the **PINNs tutorial** to solve a 1D growth function. Visualize how the "Physics Loss" forces the network to follow the differential equation .
        
    2. **Logic Exercise**: Derive a simple "continuity loss" term that penalizes the model if the change in storage does not equal Inflow minus Outflow .
        
- **Practical Implementation:** Build a vanilla PINN in PyTorch to solve the **1D Laplace equation** for steady-state groundwater flow. Ensure your loss function includes both the boundary conditions and the PDE residual .
    

**Week 18: PINN Surrogates for Hydraulic Engineering**

Replacing expensive solvers like HEC-RAS with real-time neural surrogates.

- **Resources:** `HydroNet` Repository and _PINN-HEC-RAS_ Research .
    
- **Exercises:**
    
    1. **Research Task**: Analyze how **HydroNet** implements the **2D Shallow Water Equations** (SWE) within a DeepONet framework .
        
    2. **Logic Exercise**: Describe an "inverse problem": how could a PINN be used to find an unknown Manning’s $n$ coefficient from observed water levels?
        
- **Practical Implementation:** Use the `HydroNet` examples to train a surrogate model for a single river reach. Compare the PINN's predicted water surface profile against a traditional **HEC-RAS** output .
    

**Week 19: ECMWF HydroML-Verify – Hydrological Signatures**

The challenge isn't just about accuracy; it's about "hydrological realism." This week focuses on the diagnostic metrics requested by ECMWF.

- **Resources:** ECMWF Challenge 22 (HydroML-Verify) Documentation .
    
- **Exercises:**
    
    1. **Signature Coding**: Write Python functions to calculate the 15 key hydrological signatures, including **Baseflow Index**, **Recession Constant**, and **Flow Variability**.
        
    2. **Logic Exercise**: How can you detect "model drift" using a distribution shift analysis on ensemble forecasts?
        
- **Practical Implementation:** Create a "Physical Consistency" script. It must automatically scan a discharge time series and flag: (a) negative values, (b) continuity spikes, and (c) timing inconsistencies compared to meteorological forcings .
    

**Week 20: Final Integration and Toolkit Development**

Finalizing your modular open-source contribution for the Code for Earth program.

- **Milestone:** Complete the **HydroML-Verify Diagnostic Dashboard**.
    
- **Deliverable Requirements:**
    
    1. A modular Python package that computes physical checks and signature ranges.
        
    2. A **Jupyter Notebook** demonstrating the toolkit on **GloFAS ensemble forecasts** versus observational data from **Rijkswaterstaat**.
        
    3. A summary visualization (e.g., a four-panel GIF) showing predicted water depth, absolute error, and RMSE over a 31-day rollout .
        
- **Final Task:** Submit your project repository, ensuring it meets the **ECMWF feasibility and transferability** criteria .



---

## Suggested Resources & Datasets

|**Resource Type**|**Recommended Source**|**Why?**|
|---|---|---|
|**Main Dataset**|[CAMELS Dataset](https://ral.ucar.edu/solutions/products/camels)|The "MNIST" of hydrology. Perfect for regression.|
|**Hydraulic Data**|[UCI Hydraulic Systems](https://archive.ics.uci.edu/ml/datasets/Condition+monitoring+of+hydraulic+systems)|Multi-sensor data from a hydraulic rig. Great for classification.|
|**The "Bridge"**|[DeepXDE Library](https://deepxde.readthedocs.io/)|A Python library for Physics-Informed ML (PINNs).|

### How to unite them in your notes:

1. **Theory First:** Take notes from **MLR** on the math of the "Cost Function."
2. **Implementation:** Use the **UDL** notebooks to see the "Deep" version.
3. **Application:** Create a section called **"The Hydraulic Lens."** Ask yourself: _"If I were using the Manning Equation here instead of a Neural Network, what variables would be the weights ($w$)? Answer: The roughness coefficient ($n$)."_ This makes the ML feel like a natural extension of your engineering training rather than a separate field.