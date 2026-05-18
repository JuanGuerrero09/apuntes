This roadmap is a 20-week technical guide designed to take a hydraulic engineer from fundamental optimization to physics-informed deep learning. It integrates the curriculum of _Machine Learning Refined_ (MLR) and _Understanding Deep Learning_ (UDL) with the requirements of the **2026 ECMWF HydroML-Verify challenge**.

---

### **Phase 1: Optimization and Linear Foundations**

**Week 1: Taxonomy and Zero-Order Optimization**

Every ML model is essentially a mathematical optimization problem. We begin with "Zero-Order" methods, which are critical when you cannot calculate a gradient—useful for calibrating complex, discrete parameters in hydraulic simulators like HEC-RAS or LISFLOOD.

- **Tags:** #Machine-Learning-Taxonomy #Global-Optimization #Local-Optimization #Random-Search #Coordinate-Search-and-Descent #Curse-of-Dimensionality
    
- **Resources:** MLR Chapter 1 (_Introduction to Machine Learning_) and Chapter 2 (_Zero-Order Optimization Techniques_).
    
- **Book Exercise:** **MLR 2.2**: Implement the Random Search algorithm from scratch in Python. Use it to minimize a quadratic function and visualize how performance degrades as you increase the number of input dimensions (The Curse of Dimensionality).
    
- **Practical Implementation:** Establish a Python environment with `pytorch`, `xarray`, and `pandas`. Use the **Rijkswaterstaat (RWS) Waterinfo API** to fetch historical water levels for a Dutch gauge (e.g., Lobith). Write a script that uses Random Search to find a "best-fit" constant offset for a simple stage-discharge rating curve ($Q = a(H-b)^c$), treating the parameters as a black-box search.
- **Practical Implementation:** Establish your Python environment (`pytorch`, `xarray`). Use the **Rijkswaterstaat (RWS) Waterinfo API** to fetch 10-minute water level data. Use your Random Search script to find the optimal constant "Manning’s n" for a simple reach.
    
- **📋 Checklist:**
    
    - [ ] Setup Conda environment and RWS API key.
        
    - [ ] Create atomic note for #Random-Search.
        
    - [ ] Implement scratch Random Search in `src/engine/random_search.py`.
        
    - [ ] Calculate the error (RMSE) for the RWS rating curve.
    

**Week 2: First-Order Optimality and Gradient Descent**

Gradient descent is the engine of nearly all deep learning. In hydrology, this mirrors the path of steepest drainage. This week focuses on the geometry of first-order Taylor series and efficient gradient computation.

- **Tags:** #Gradient-Descent #First-Order-Optimality #Taylor-Series #Automatic-Differentiation
    
- **Resources:** MLR Chapter 3 (_First-Order Optimization Techniques_) and UDL Chapter 6 (_Fitting Models_).
    
- **Book Exercise:** **UDL Problem 2.1**: Calculate the partial derivatives $\frac{\partial \mathcal{L}}{\partial \phi_0}$ and $\frac{\partial \mathcal{L}}{\partial \phi_1}$ for a linear loss function. This derivation provides the foundation for walking "downhill" on an error surface.
    
- **Practical Implementation:** Code a vanilla Gradient Descent algorithm using `numpy`. Use it to calibrate a 2-parameter linear reservoir model ($S = kQ$). Apply it to RWS discharge data to find the optimal $k$ value by minimizing the Mean Squared Error (MSE) between your model and observations.

- **Practical Implementation:** Code a Gradient Descent loop in `src/engine/grad_descent.py`. Use it to calibrate a 2-parameter linear reservoir model ($S = kQ$) for a storm event in the Meuse river using RWS data.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Gradient-Descent.
        
    - [ ] Manually derive the MSE gradient in your Obsidian note.
        
    - [ ] Successfully minimize loss for the reservoir constant $k$.
    

**Week 3: High-Order Methods and Adaptive Optimizers**

Standard gradient descent often "zigzags" in narrow valleys. High-order methods like Newton’s use curvature (the Hessian) to speed up convergence, while adaptive optimizers like Adam are essential for handling the non-stationary noise found in precipitation-frequency data.

- **Tags:** #Newtons-Method #Hessian #Adam #Momentum #Second-Order-Optimality
    
- **Resources:** MLR Chapter 4 (_Second-Order Optimization Techniques_) and UDL Chapter 6.
    
- **Book Exercise:** **MLR 4.1**: Compare the convergence of Newton’s Method versus Gradient Descent on a non-convex function. Identify the "natural weaknesses" of second-order methods, such as high computational cost for large networks. Sketch the "zigzag" path of SGD in a narrow valley using Excalidraw.
    
- **Practical Implementation:** Build a calibration script comparing **Adam vs. SGD**. Use a synthetic dataset where you add high-frequency "noise" to a hydrograph (simulating rain gauge errors). Observe how Adam’s adaptive step sizes allow it to converge more smoothly through the noise than standard SGD.

- **Practical Implementation:** Implement **Adam** and **Momentum** in `src/engine/optimizers.py`. Calibrate a model where rainfall data has simulated sensor noise. Observe how Adam converges through the noise better than vanilla SGD.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #Adam and #Momentum.
        
    - [ ] Compare convergence plots for SGD vs. Adam in a notebook.
        
    - [ ] Identify one "natural weakness" of Newton's Method.
    

**Week 4: Robust Linear Regression and Multi-Output Dynamics**

Flood risk management focuses on extreme events—outliers. This week, you learn "Robust" regression techniques like Least Absolute Deviations (LAD), which prevent extreme flood peaks from biasing your baseline model, and multi-output regression for predicting multiple river gauges simultaneously.

- **Tags:** #Least-Squares-Linear-Regression #Least-Absolute-Deviations #Multi-Output-Regression #Weighted-Regression #Regression-Quality-Metrics
    
- **Resources:** MLR Chapter 5 (_Linear Regression_) and UDL Chapter 2 (_Supervised Learning_).
    
- **Book Exercise:** **MLR 5.3**: Implement **Least Absolute Deviations (LAD)** and compare its robustness against outliers versus standard Least Squares. Test its robustness by adding extreme "spikes" to a linear dataset and comparing the fit to Least Squares.
    
- **Practical Implementation:** Perform **Multi-Output Regression** on a river reach using RWS data. Build a model that takes upstream discharge as input and simultaneously predicts water levels at three different downstream stations. Calculate the **Nash-Sutcliffe Efficiency (NSE)** and **Kling-Gupta Efficiency (KGE)** for each output.
- **Practical Implementation:** Perform **Multi-Output Regression** on an RWS river reach. Predict stage heights at three different downstream gauges simultaneously. Calculate the **Nash-Sutcliffe Efficiency (NSE)** for each.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Least-Absolute-Deviations.
        
    - [ ] Code NSE and KGE metric functions in `src/utils/metrics.py`.
        
    - [ ] Identify sensor drift in RWS sensors using LAD regression.

---

### **Phase 2: Classification and Unsupervised Patterns**

**Week 5: Binary Classification and Support Vector Machines (SVMs)**

Turning continuous measurements into alert triggers is a classification task. This week covers the transition from the simple Perceptron to Support Vector Machines (SVMs) and the use of Softmax cost functions for risk probability.

- **Tags:** #Logistic-Regression #Cross-Entropy/Softmax-Cost #The-Perceptron #SVMs #Categorical-Cross-Entropy #Weighted-Two-Class-Classification
    
- **Resources:** MLR Chapter 6 (_Linear Two-Class Classification_).
    
- **Book Exercise:** **MLR 7.5**: Implement the **Categorical Cross Entropy** cost function from scratch. Derive how it differs from the Softmax cost for a simple two-class case.
    
- **Practical Implementation:** Create a 2-class SVM classifier to identify Dutch polders "At Risk" of breaching. Use historical dike breach records and elevation data as features. Implement a **Weighted Classification** approach to penalize "False Negatives" (missing a flood) more heavily than "False Positives."
- **Practical Implementation:** Create a 2-class SVM in `src/engine/svm.py` to classify Dutch polders as "Flood Risk" or "Safe" based on elevation. Use **Weighted Classification** to penalize missing a flood more heavily.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #SVMs.
        
    - [ ] Derive the gradient for the Softmax cost.
        
    - [ ] Build a "False Negative" penalty into your loss function.
    

**Week 6: Multi-Class Logic and Online Learning**

Hydraulic alert systems often have multiple levels (e.g., Code Green, Yellow, Red). You will learn how to scale classification to multiple classes and how "Online Learning" allows models to update continuously as new sensor data arrives.

- **Tags:** #One-versus-All #Multi-Class-Logistic-Regression #Weighted-Multi-Class-Classification #Online-Learning #Classification-Quality-Metrics
    
- **Resources:** MLR Chapter 7 (_Linear Multi-Class Classification_).
    
- **Book Exercise:** Implement a **One-versus-All** multi-class classifier. Mathematically explain why this approach can lead to "unclassified" regions compared to a true multi-class Softmax.
    
- **Practical Implementation:** Build a multi-class alert model for the Meuse river using RWS sensors. Use **Online Learning** logic to update your model's classification weights every time a new 10-minute water level observation is received via the API.
**📋 Checklist:**

- [ ] Create atomic notes for #One-versus-All and #Online-Learning.
    
- [ ] Code a data-streaming wrapper in `src/hydrology/rws_client.py`.
    
- [ ] Validate alert levels against historical RWS peak events.
    

**Week 7: Unsupervised Learning: PCA and K-Means Clustering**

Discovering hidden patterns in vast environmental datasets. You will use Principal Component Analysis (PCA) to compress high-dimensional meteorological fields and K-means to group catchments with similar hydrological behaviors.

- **Tags:** #PCA #K-means #Recommender-Systems #Matrix-Factorization #Linear-Autoencoder
    
- **Resources:** MLR Chapter 8 (_Linear Unsupervised Learning_).
    
- **Book Exercise:** Implement **K-means clustering** from scratch. Test it on a synthetic dataset to see how the choice of $k$ affects the "cluster inertia."
    
- **Practical Implementation:** Download the **CAMELS US dataset**. Use **Principal Component Analysis (PCA)** on the 27 static catchment attributes (slope, sand fraction, vegetation) to identify the top 5 "descriptors" that explain the most variance. Then, use K-means to group the 531 basins into clusters representing different hydrological regimes (e.g., Snow-dominated vs. Arid).
**📋 Checklist:**

- [ ] Create atomic notes for #PCA and #K-means.
    
- [ ] Code the PCA transform using Eigen-decomposition.
    
- [ ] Interpret the physical meaning of your clusters (e.g., "Arid" cluster).

---

### **Phase 3: Feature Engineering and Nonlinear Learning**

**Week 8: Preprocessing, Feature Selection, and Regularization**

Raw data is rarely ready for ML. This week focuses on scaling techniques like PCA-Sphering and using **Boosting** or **Regularization** ($L_1$/$L_2$) to select only the most relevant predictors, preventing the model from over-fitting to noise.

- **Tags:** #Feature-Engineering #Feature-Selection #Boosting #Regularization #PCA-Sphering #Standard-Normalization
    
- **Resources:** MLR Chapter 9 (_Feature Engineering and Selection_).
    
- **Book Exercise:** **MLR 9.5**: Implement **PCA-Sphering** to normalize a multi-feature dataset. Explain why this is superior to standard normalization for models with sensitive activation functions.
    
- **Practical Implementation:** Apply **Recursive Feature Selection** to the CAMELS attributes. Identify which features (e.g., "mean precipitation" vs. "catchment area") are most critical for predicting streamflow "flashiness" (the ratio of peak flow to mean flow).
**📋 Checklist:**

- [ ] Create atomic notes for #Regularization and #PCA-Sphering.
    
- [ ] Implement $L_1$ and $L_2$ terms in your loss function.
    
- [ ] Impute missing discharge values in an RWS time-series snippet.

**Week 9: Principles of Nonlinear Feature Engineering**

Natural systems are rarely linear. This week introduces nonlinear supervised and unsupervised learning, allowing you to model threshold-driven processes like the relationship between soil moisture and runoff.

- **Tags:** #Nonlinear-Supervised-Learning #Nonlinear-Unsupervised-Learning #Nonlinear-Regression #Nonlinear-Multi-Output-Regression #Nonlinear-Classification
    
- **Resources:** MLR Chapter 10 (_Principles of Nonlinear Feature Engineering_).
    
- **Book Exercise:** Build a **Nonlinear Regression** model using a sinusoidal basis to fit a seasonal groundwater cycle. Show how the model fails if the basis frequency does not match the data frequency.
    
- **Practical Implementation:** Train a nonlinear model to approximate the stage-discharge relationship (Rating Curve) for a tidal river gauge. Use a polynomial or neural basis to capture the "hysteresis" effect (where stage differs during the rising vs. falling limb of a flood).
**📋 Checklist:**

- [ ] Create atomic note for #Nonlinear-Learning.
    
- [ ] Map 1D inputs into a higher-dimensional polynomial space.
    
- [ ] Plot the "Hysteresis loop" for a tidal gauge prediction.

**Week 10: Validation, Bagging, and Ensembling**

Mastering the validation techniques required for the ECMWF challenge. You will study **Universal Approximation** and use robust methods like **K-Fold Cross-Validation** and **Bagging** to ensure your flood forecasts generalize to unseen years.

- **Tags:** #Universal-Approximation #Cross-Validation #Regularization #Ensembling #Bagging #K-Fold-Cross-Validation #Testing-Data
    
- **Resources:** MLR Chapter 11 (_Principles of Feature Learning_).
    
- **Book Exercise:** **MLR 11.2**: Implement a universal approximator and use **Naive Cross-Validation** to select the optimal model complexity (number of units).
    
- **Practical Implementation:** Create a **Bagged ensemble** of three different nonlinear regressors to predict daily streamflow. Demonstrate that the ensemble Mean Squared Error (MSE) is lower than the error of any individual model due to the reduction in variance.

- **Practical Implementation:** Create a **Bagged ensemble** of three different nonlinear regressors in `src/hydrology/ensembles.py`. Predict daily discharge and show that ensemble variance is lower than individual models.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Cross-Validation.
        
    - [ ] Write a robust K-Fold splitter in `src/utils/validation.py`.
        
    - [ ] Verify the "Universal Approximation" theorem for a real hydrograph.
    

**Week 11: Kernel Methods and the "Kernel Trick"**

Exploring how to separate data that is not linearly separable by mapping it to a higher-dimensional space. This is a powerful tool for detecting anomalies or "jumps" in sensor data.

- **Tags:** #Kernel-Methods #The-Kernel-Trick #Kernelized-Learners #Similarity-Measures
    
- **Resources:** MLR Chapter 12 (_Kernel Methods_).
    
- **Book Exercise:** Implement a **Kernelized SVM** and visualize the decision boundary. Compare the results when using a linear kernel versus a Radial Basis Function (RBF) kernel on "intertwined" data.
    
- **Practical Implementation:** Use the **Kernel Trick** to perform outlier detection in a multi-sensor RWS dataset. Identify periods where one sensor deviates from its neighbors in a way that suggests physical damage to the gauge.

- **Practical Implementation:** Use the Kernel Trick to perform **anomaly detection** in an RWS sensor network. Identify periods where one sensor "jumps" relative to its spatial neighbors.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #Kernel-Trick and #Similarity-Measures.
        
    - [ ] Code the RBF similarity function from scratch.
        
    - [ ] Map RWS sensors into a high-dimensional space for drift detection.
    

---

### **Phase 4: Modern Deep Learning Architectures**

**Week 12: Fully Connected Networks and Backpropagation**

This is the core of modern deep learning. You will study how to compose layers, select activation functions (ReLU, Sigmoid), and implement the **Backpropagation** algorithm that allows the network to learn from its errors.

- **Tags:** #Fully-Connected-Networks #Backpropagation #Activation-Functions #Batch-Normalization #Early-Stopping
    
- **Resources:** MLR Chapter 13 (_Fully Connected Neural Networks_) and UDL Chapter 4 (_Deep Neural Networks_).
    
- **Book Exercise:** **UDL 3.1**: Mathematically prove that a network with linear activations ($a[z] = \phi_0 + \phi_1 z$) is equivalent to a single linear layer. This illustrates why non-linear activations (like ReLU) are essential.
    
- **Practical Implementation:** Build a **4-layer MLP** from scratch using only `numpy`. Train it to map 5-day antecedent rainfall to today's discharge. Manually write the backpropagation steps to update the weights based on the Mean Squared Error.
- **Practical Implementation:** Build a **4-layer MLP** from scratch in `src/engine/mlp.py` (Numpy only). Train it to map 5-day antecedent rainfall to today's discharge using RWS data.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Backpropagation.
        
    - [ ] Derive gradients for weights and biases across 3 layers manually.
        
    - [ ] Code ReLU and Sigmoid activation functions in your scratch engine.

**Week 13: Tree-Based Learners: Random Forests and Gradient Boosting**

While neural networks are powerful for time series, tree-based models often dominate for tabular data like catchment metadata. This week completes the MLR curriculum.

- **Tags:** #Regression/Classification-Trees #Gradient-Boosting #Random-Forests #XGBoost #Recursive-Trees
    
- **Resources:** MLR Chapter 14 (_Tree-Based Learners_).
    
- **Book Exercise:** Compare **Random Forests** (bagging) versus **Gradient Boosting** on a dataset with significant missing values. Identify which method is more sensitive to outliers.
    
- **Practical Implementation:** Train a **Random Forest Regressor** on the static attributes of the CAMELS dataset to predict the "Baseflow Index" (BFI) for catchments not used in training. Use **Feature Importance** plots to identify which physical attributes (soil depth vs. mean slope) drive the baseflow.
- **Practical Implementation:** Train an **XGBoost** model on CAMELS attributes to predict the regional **Baseflow Index (BFI)**. Use "Feature Importance" plots to identify dominant physical controls.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #Random-Forests and #Boosting.
        
    - [ ] Perform hyperparameter tuning (max depth, learning rate) for XGBoost.
        
    - [ ] Compare Tree results against your Week 12 MLP hydrograph fit.
    

**Week 14: Sequential Modeling: RNNs and LSTMs in Hydrology**

Hydrology is inherently sequential. Standard RNNs struggle with "long-term memory," but LSTMs use gates to store information like snowpack for months. This is the current state-of-the-art for streamflow prediction.

- **Tags:** #RNNs #LSTMs #Sequential-Processing #Vanishing-Gradients #Gating-Mechanisms #Backpropagation-through-time
    
- **Resources:** UDL Chapter 12 (_Sequential Processing_) and _Kratzert et al. (2018)_.
    
- **Book Exercise:** **UDL 12.1**: Derive the gradient for a recurrent network over three time steps to visualize why gradients "vanish" as the sequence length increases.
    
- **Practical Implementation:** Use the **`NeuralHydrology` Python library** to train an **Entity-Aware LSTM (EA-LSTM)** on 50 basins from the CAMELS dataset. Configure a `.yml` file that uses static catchment attributes as inputs to the LSTM's "input gate," allowing a single model to learn different behaviors for different catchments.
- **Practical Implementation:** Transition to the **`NeuralHydrology` library**. Train an **Entity-Aware LSTM (EA-LSTM)** on 50 CAMELS catchments using static attributes as input-gate modulators.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #LSTMs and #Vanishing-Gradients.
        
    - [ ] Setup the `NeuralHydrology` environment via a `.yml` config.
        
    - [ ] Link LSTM cell states to physical processes like snowpack accumulation.

**Week 15: The Transformer Revolution and Parallel Attention**

Transformers replace recurrence with "Attention," allowing the model to look across years of climate data simultaneously. You will study **PatchTST**, which is specifically designed for long-range time-series forecasting.

- **Tags:** #Self-Attention #Transformers #PatchTST #Positional-Encoding #Multi-head-Attention
    
- **Resources:** UDL Chapter 12 and _Ahmed et al. (2026)_.
    
- **Book Exercise:** **UDL 12.5**: Mathematically derive the **Scaled Dot-Product Attention** mechanism. Explain why dividing by $\sqrt{d_k}$ is necessary for numerical stability in large models.
    
- **Practical Implementation:** Deploy a **PatchTST** model using the `WE-ACT` repository guidelines. Train it on **GloFAS reanalysis data** for a 30-day streamflow forecasting horizon. Compare its performance (KGE) against your Week 14 LSTM.

- **Practical Implementation:** Deploy a **PatchTST** model for 30-day ahead streamflow forecasting using **GloFAS reanalysis data**. Benchmark its KGE score against your Week 14 LSTM.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #Transformers and #Self-Attention.
        
    - [ ] Visualize "Attention Weights" for a major flood peak sequence.
        
    - [ ] Quantify Transformer vs. LSTM performance for long-range lead times.
    

**Week 16: Spatial Relational Learning: Graph Neural Networks (GNNs)**

Hydrology is spatial. GNNs allow us to model river networks as graphs and floodplains as irregular meshes, performing "Message Passing" to route water from node to node.

- **Tags:** #Graph-Neural-Networks #Message-Passing #HydroGraphNet #Unstructured-Meshes #Spatial-Connectivity
    
- **Resources:** UDL Chapter 13 (_Graph Neural Networks_) and _Bentivoglio et al. (2025)_.
    
- **Book Exercise:** **UDL 12.8**: Define the "Message Passing" function for a graph where nodes are mesh cells and edges are hydraulic path connectivity.
    
- **Practical Implementation:** Use the **mSWE-GNN** framework (from NVIDIA PhysicsNeMo) to predict flood inundation on an unstructured mesh. Integrate "Ghost Cells" at the domain boundaries to allow for time-varying inflows (like a dike breach) without needing a numerical solver.
- **Practical Implementation:** Use the **mSWE-GNN** framework (PhysicsNeMo) to predict flood inundation on an irregular mesh of a Dutch dike breach scenario. Integrate "Ghost Cells" at the domain boundary.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Graph-Neural-Networks.
        
    - [ ] Build a k-NN graph from topographic mesh coordinates in Python.
        
    - [ ] Generate an animation (GIF) of the predicted flood spread over the mesh.

---

### **Phase 5: Physics-Informed ML and ECMWF Challenge**

**Week 17: Physics-Informed Neural Networks (PINNs) – Theory**

Purely data-driven models can predict negative discharge—a physical impossibility. PINNs solve this by adding the governing equations (e.g., Saint-Venant) directly into the loss function.

- **Tags:** #PINNs #Physics-Informed-Loss #Residual-Minimization #Collocation-Points #Boundary-Conditions
    
- **Resources:** UDL Chapter 13 (_Physics-informed section_) and _Raissi et al. (2019)_.
    
- **Book Exercise:** Follow a PINN tutorial to solve the **1D wave equation**. Visualize how the "Physics Loss" forces the network to follow the PDE even in regions with sparse training data.
    
- **Practical Implementation:** Build a PINN in PyTorch to solve the **1D Laplace equation** for steady-state groundwater flow. Your loss function must include: (1) MSE for boundary conditions, and (2) the residual of the Laplace operator evaluated at 1,000 random points.

- **Practical Implementation:** Build a PINN in PyTorch to solve the **1D Laplace equation** for groundwater flow. Evaluate the model at 1,000 random **Collocation Points** within the domain.
    
- **📋 Checklist:**
    
    - [ ] Create atomic notes for #PINNs and #Saint-Venant-Equations.
        
    - [ ] Implement the Laplace operator using Automatic Differentiation.
        
    - [ ] Compare PINN groundwater head to a baseline numerical solution.
    

**Week 18: PINN Surrogates for Hydraulic Solvers**

Replacing expensive solvers like HEC-RAS with real-time neural surrogates. This week focuses on the "Inverse Problem"—using ML to find unknown physical parameters like Manning’s $n$.

- **Tags:** #Hydraulic-Surrogates #DeepONet #Inverse-Problems #Manning's-Roughness #Saint-Venant-Surrogates
    
- **Resources:** `HydroNet` Repository and _PINN-HEC-RAS_ research.
    
- **Book Exercise:** Analyze the **Inverse Problem**: Given a set of observed water levels, describe how a PINN can be used to "learn" the unknown roughness coefficient $n$ as a trainable parameter.
    
- **Practical Implementation:** Use **`HydroNet`** to train a surrogate for the **2D Shallow Water Equations** (SWE) on a single river reach. Compare the PINN's predicted water surface profile against a traditional **HEC-RAS** output and measure the speed-up factor.

- **Practical Implementation:** Use **`HydroNet`** to train a surrogate for the **2D Shallow Water Equations (SWE)** on a specific river reach. Measure the speed-up factor compared to HEC-RAS.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Inverse-Problems.
        
    - [ ] Quantify the "Physics Consistency" (mass balance) of the surrogate.
        
    - [ ] Identify a Manning's $n$ value from synthetic RWS water levels.
    

**Week 19: ECMWF HydroML-Verify – Signatures and Consistency**

This week applies all your learning to the **ECMWF Challenge 22**. You will develop diagnostics to detect "implausible behavior" in ML models using the 15 hydrological signatures requested by ECMWF.

- **Tags:** #Hydrological-Signatures #Physical-Consistency #Non-negativity #Continuity #Baseflow-Index #Recession-Constant
    
- **Resources:** ECMWF Code for Earth Challenge Documentation and Issue #5.
    
- **Book Exercise:** Write Python functions to compute 5 key **Hydrological Signatures**: Baseflow Index, Recession Constant, Flow Variability (standard deviation), and High/Low Flow Percentiles.
    
- **Practical Implementation:** Create a "Physical Constraint Checker" module. This script must scan a discharge time series (from GloFAS) and flag: (a) negative values, (b) unrealistic "spikes" (violations of mass continuity), and (c) timing inconsistencies compared to the precipitation forcing.

- **Practical Implementation:** Create a **"Physical Constraint Checker"** module. Script must scan a GloFAS discharge series and flag: (a) negative values, (b) unrealistic continuity spikes, and (c) timing inconsistencies.
    
- **📋 Checklist:**
    
    - [ ] Create atomic note for #Hydrological-Signatures.
        
    - [ ] Implement the 15 signatures requested by ECMWF in `src/hydrology/signatures.py`.
        
    - [ ] Generate summary tables at the station and catchment levels for a GloFAS sample.
    

**Week 20: Final Integration and Challenge Submission**

Assembling your final contribution: a modular, open-source verification toolkit that complements traditional skill scores like KGE with diagnostics for physical realism.

- **Tags:** #Modular-Python-Packages #Diagnostic-Dashboards #Jupyter-Notebooks #Feasibility #Transferability
    
- **Resources:** ECMWF Challenge submission guidelines and Code for Earth roadmap.
    
- **Milestone:** Complete the **HydroML-Verify Diagnostic Dashboard**. This must be a modular Python package with a clear API for computing signatures and constraints.
    
- **Final Task:** Generate a **Jupyter Notebook** demonstrating your toolkit. It should take an **ensemble forecast from GloFAS** and visualize which ensemble members violate physical consistency at RWS gauging stations.

- **Final Task:** Generate a **Jupyter Notebook** demonstrating your toolkit on a **GloFAS ensemble forecast**. Visualize which ensemble members violate physical consistency at RWS gauging stations.
    
- **📋 Checklist:**
    
    - [ ] Assemble the full package with documentation in `README.md`.
        
    - [ ] Create a summary visualization (GIF) showing water depth and error evolution.
        
    - [ ] Submit the repository to the ECMWF Code for Earth roadmap.