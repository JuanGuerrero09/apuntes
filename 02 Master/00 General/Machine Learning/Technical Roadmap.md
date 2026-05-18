## Protocol: How to Study and Take Notes

To break the "introduction loop," you must follow this strict **Mastery Protocol** for every week's content. Do not move to the "Practical Implementation" until you have finished the "Math" and "Scratch" phases.

### **The Order of Operations (Weekly)**

1. **Intuition (Reading):** Read the chapter sections related to each **Tag**. Your goal is to be able to draw a "cocktail napkin" sketch of the concept (e.g., how a decision boundary shifts or how a forget gate blocks a signal).
    
2. **Math (Derivation):** Manually derive the loss function or update rule in your Obsidian note. If the book provides a proof, rewrite it in your own words. Use LaTeX strictly ($...$) for formulas.
    
3. **Implementation (Manual Workflow):** Open a script in `src/engine/` and code the algorithm using only `numpy`. This is the "Manual" part—no high-level libraries allowed until Week 14. This forces you to understand the "engine" of the model.
    
4. **Application (Modular Workflow):** Use the logic you just built to solve a hydrological problem (RWS/CAMELS) in a Jupyter Notebook. Import your functions from `src/engine/` to keep the notebook clean.
    

### **Obsidian Note-Taking Methodology**

- **The Cornell Method:** Use two columns. Left column for **Cues/Questions** (e.g., "Why does Adam use a moving average of the squared gradient?"). Right column for **Notes/Answers**.
    
- **Visual Integration:** Use the **Excalidraw extension** to sketch the intuition diagrams. Link these drawings directly into your weekly notes.
    
- **Atomic Notes:** Create a separate note for each **Tag** (e.g., `#PCA`). When you study a chapter that mentions PCA, link back to that atomic note. This builds a knowledge graph where hydraulics and ML intersect.
## The 20-Week Technical Roadmap

![[Technical Roadmap 2026-04-30 11.35.18.excalidraw]]

### Phase 1: Optimization and Mathematical Foundations (Weeks 1-4)

**Week 1: Taxonomy and Zero-Order Optimization**

- **Tags:** #Machine-Learning-Taxonomy #Global/Local-Optimization #Random-Search #Coordinate-Search-and-Descent #Curse-of-Dimensionality
    
- **Resources:** MLR Chapter 1 (_Introduction to Machine Learning_) and Chapter 2 (_Zero-Order Optimization Techniques_).   
    
- **Book Exercise:** **MLR 2.2**: Implement Random Search to minimize a quadratic function. Measure how "The Curse of Dimensionality" affects search time.
    
- **Practical Implementation:** Establish your Python environment (`pytorch`, `xarray`). Use the **RWS Waterinfo API** to fetch 10-minute water levels for the Lobith gauge. Use your Random Search script to find the optimal "best-fit" offset for a rating curve (Q=a(H−b)c).
    
- **Checklist:**
    
    - [ ] Read Section 2.5 on Random Search
        
    - [ ] Create `src/engine/random_search.py`
        
    - [ ] Successfully plot RWS water level time-series
        

**Week 2: First-Order Optimality and Gradient Descent**

- **Tags:** #Gradient-Descent #First-Order-Optimality #Taylor-Series #Computing-Gradients-Efficiently #Automatic-Differentiation
    
- **Resources:** MLR Chapter 3 (_First-Order Optimization Techniques_) and UDL Chapter 6 (_Fitting Models_).   
    
- **Book Exercise:** **UDL 2.1**: Calculate expressions for slopes ∂ϕ0​∂L​ and ∂ϕ1​∂L​ to derive update rules for walking "downhill" on a loss surface.   
    
- **Practical Implementation:** Code a Gradient Descent loop in `src/engine/grad_descent.py`. Use it to calibrate the scaling parameters of a simple Unit Hydrograph for a storm event in the Meuse river using RWS data.
    
- **Checklist:**
    
    - [ ] Derive the gradient for Mean Squared Error (MSE)
        
    - [ ] Code the Gradient Descent update rule w=w−α∇L
        
    - [ ] Test convergence on a 2-parameter reservoir model
        

**Week 3: High-Order Methods and Adaptive Optimizers**

- **Tags:** #Newton's-Method #Hessian #Adam #Momentum #Second-Order-Optimality #Newton-Weaknesses
    
- **Resources:** MLR Chapter 4 (_Second-Order Optimization Techniques_) and UDL Chapter 6.
    
- **Book Exercise:** **MLR 4.1**: Compare Newton’s Method vs. Gradient Descent. Sketch why first-order methods "zigzag" in narrow valleys.
    
- **Practical Implementation:** Implement the **Adam** and **Momentum** update rules in `src/engine/optimizers.py`. Use them to calibrate a conceptual model where the rainfall data is "noisy" (simulated sensor error). Observe how Adam handles non-stationary noise better than vanilla SGD.
    
- **Checklist:**
    
    - [ ] Implement a moving average for gradients (Momentum)
        
    - [ ] Code the Adam optimizer from scratch
        
    - [ ] Compare convergence plots for SGD vs Adam
        

**Week 4: Robust Linear Regression and Multi-Output Dynamics**

- **Tags:** #Least-Squares-Linear-Regression #Least-Absolute-Deviations #Multi-Output-Regression #Weighted-Regression #Regression-Quality-Metrics
    
- **Resources:** MLR Chapter 5 (_Linear Regression_) and UDL Chapter 2 (_Supervised Learning_).   
    
- **Book Exercise:** **MLR 5.3**: Implement **Least Absolute Deviations (LAD)**. Test its robustness by adding extreme "spikes" to a linear dataset and comparing the fit to Least Squares.
    
- **Practical Implementation:** Perform **Multi-Output Regression** on a river reach. Build a model in `src/hydrology/multi_output.py` that takes upstream discharge as input and simultaneously predicts water levels at three downstream gauges. Calculate **NSE** and **KGE** for each.
    
- **Checklist:**
    
    - [ ] Write functions for NSE and KGE in `src/utils/metrics.py`
        
    - [ ] Use LAD regression to identify sensor drift in RWS stage sensors
        

---

### Phase 2: Classification and Unsupervised Patterns (Weeks 5-7)

**Week 5: Binary Classification and SVMs**

- **Tags:** #Logistic-Regression #Cross-Entropy/Softmax-Cost #The-Perceptron #SVMs #Categorical-Cross-Entropy #Weighted-Two-Class-Classification
    
- **Resources:** MLR Chapter 6 (_Linear Two-Class Classification_).
    
- **Book Exercise:** **MLR 7.5**: Implement the Categorical Cross Entropy cost function from scratch. Derive how the Softmax function turns arbitrary values into probabilities.   
    
- **Practical Implementation:** Create a 2-class SVM in `src/engine/svm.py` to classify Dutch polders as "Flood Risk" or "Safe" based on elevation and historical records. Use **Weighted Classification** to penalize missing a flood event (False Negative) more heavily.
    
- **Checklist:**
    
    - [ ] Derive the gradient for the Softmax cost
        
    - [ ] Build a 2-class classifier for a polder area
        
    - [ ] Verify the "Hinge Loss" concept used in SVMs
        

**Week 6: Multi-Class Logic and Online Learning**

- **Tags:** #One-versus-All #Multi-Class-Logistic-Regression #Weighted-Multi-Class-Classification #Online-Learning #Classification-Quality-Metrics
    
- **Resources:** MLR Chapter 7 (_Linear Multi-Class Classification_).   
    
- **Book Exercise:** Implement a **One-versus-All** classifier. Explain why this approach can lead to "dead zones" where a data point belongs to no class.   
    
- **Practical Implementation:** Build a multi-class alert model (Code Green, Yellow, Orange, Red) for the Meuse river. Use **Online Learning** logic to update your model weights as each new 10-minute water level observation is received via the RWS API.
    
- **Checklist:**
    
    - [ ] Code a One-versus-All wrapper for your Week 5 classifier
        
    - [ ] Implement a Stochastic Gradient Descent (SGD) update for Online Learning
        
    - [ ] Validate alert levels against historical RWS peaks
        

**Week 7: Unsupervised Learning: PCA and K-Means**

- **Tags:** #PCA #K-means #Recommender-Systems #Matrix-Factorization #Linear-Autoencoder #Fixed-Spanning-Sets
    
- **Resources:** MLR Chapter 8 (_Linear Unsupervised Learning_).   
    
- **Book Exercise:** Implement **K-means clustering** from scratch in `src/engine/clustering.py`. Visualize the "elbow plot" to find the optimal number of clusters for a synthetic dataset.
    
- **Practical Implementation:** Use **Principal Component Analysis (PCA)** on the **CAMELS US dataset**. Reduce 27 static catchment attributes (soil type, mean slope, vegetation) to 5 "Principal Descriptors." Then, cluster the basins using K-means to identify different hydrological regions (e.g., Snowmelt vs. Rain-fed).
    
- **Checklist:**
    
    - [ ] Code the PCA transform using Eigen-decomposition
        
    - [ ] Download the CAMELS US attributes dataset
        
    - [ ] Cluster 531 basins and interpret the physical meaning of the clusters
        

---

### Phase 3: Engineering and Feature Validation (Weeks 8-11)

**Week 8: Preprocessing, Feature Selection, and Regularization**

- **Tags:** #Feature-Engineering #Feature-Selection #Boosting #Regularization #PCA-Sphering #Standard-Normalization #Imputing-Missing-Values
    
- **Resources:** MLR Chapter 9 (_Feature Engineering and Selection_).   
    
- **Book Exercise:** **MLR 9.5**: Implement **PCA-Sphering** to normalize a dataset. Explain why this is more robust for neural network activations than standard Z-score normalization.   
    
- **Practical Implementation:** Apply **Recursive Feature Selection** to the CAMELS dataset. Identify the top 5 physical attributes that best predict "flashiness" (peak flow variability). Implement a script to impute missing discharge values using neighboring gauge data.
    
- **Checklist:**
    
    - [ ] Implement L1​ and L2​ regularization terms in a linear loss
        
    - [ ] Code the PCA-Sphering transform
        
    - [ ] Handle missing values in an RWS time-series snippet
        

**Week 9: Principles of Nonlinear Feature Engineering**

- **Tags:** #Nonlinear-Supervised-Learning #Nonlinear-Unsupervised-Learning #Nonlinear-Regression #Nonlinear-Classification #Sinusoidal-Bases #Hysteresis
    
- **Resources:** MLR Chapter 10 (_Principles of Nonlinear Feature Engineering_).   
    
- **Book Exercise:** Build a Nonlinear Supervised model using sinusoidal bases to fit a seasonal groundwater cycle. Show how the model behaves when the basis frequency is slightly off.
    
- **Practical Implementation:** Approximate the stage-discharge **Rating Curve hysteresis** for a tidal river gauge. Use a neural basis function in `src/engine/nonlinear.py` to capture how the stage differs during the rising vs. falling limb of a flood.
    
- **Checklist:**
    
    - [ ] Map 1D inputs to a higher-dimensional polynomial space
        
    - [ ] Derive the Normal Equation weights for a nonlinear model
        
    - [ ] Plot the "Hysteresis loop" for a tidal gauge prediction
        

**Week 10: Validation, Bagging, and Ensembling**

- **Tags:** #Universal-Approximation #Cross-Validation #Regularization #Ensembling #Bagging #K-Fold-Cross-Validation #Testing-Data
    
- **Resources:** MLR Chapter 11 (_Principles of Feature Learning_).   
    
- **Book Exercise:** **MLR 11.2**: Implement a universal approximator and use **Naive Cross-Validation** to find the optimal number of hidden units for a synthetic dataset.   
    
- **Practical Implementation:** Create a **Bagged ensemble** of three different nonlinear regressors in `src/hydrology/ensembles.py`. Predict daily discharge for a Dutch basin and demonstrate that the ensemble variance is lower than that of any individual model.
    
- **Checklist:**
    
    - [ ] Write a robust K-Fold splitter in `src/utils/validation.py`
        
    - [ ] Build an ensemble averaging wrapper
        
    - [ ] Verify the "Universal Approximation" of your real-world data fit
        

**Week 11: Kernel Methods and the "Kernel Trick"**

- **Tags:** #Kernel-Methods #The-Kernel-Trick #Kernelized-Learners #Similarity-Measures #Fixed-Shape-Universal-Approximators
    
- **Resources:** MLR Chapter 12 (_Kernel Methods_).
    
- **Book Exercise:** Implement a **Kernelized SVM**. Visualize the decision boundary using a Linear Kernel vs. an RBF (Gaussian) Kernel on "nested" data.   
    
- **Practical Implementation:** Use the Kernel Trick to perform **outlier/anomaly detection** in a multi-sensor RWS network. Identify periods where a sensor "jumps" relative to its spatial neighbors in a non-linear way.   
    
- **Checklist:**
    
    - [ ] Code the RBF similarity function
        
    - [ ] Derive the dual optimization problem for kernelized models
        
    - [ ] Map RWS sensors into a high-dimensional space for drift detection
        

---

### Phase 4: Modern Deep Learning Architectures (Weeks 12-16)

**Week 12: Fully Connected Networks and Backpropagation**

- **Tags:** #Fully-Connected-Networks #Backpropagation #Activation-Functions #Batch-Normalization #Early-Stopping
    
- **Resources:** MLR Chapter 13 (_Fully Connected Neural Networks_) and UDL Chapter 4 (_Deep Neural Networks_).   
    
- **Book Exercise:** **UDL 3.1**: Mathematically prove that a network with only linear activation functions is identical to a single linear layer. This confirms the need for non-linear activations like ReLU.
    
- **Practical Implementation:** Build a **4-layer MLP** from scratch in `src/engine/mlp.py` (Numpy only). Train it to map 5-day antecedent rainfall to today's discharge. Manually implement the **Forward** and **Backward** passes.
    
- **Checklist:**
    
    - [ ] Derive backprop gradients for weights and biases across 3 layers
        
    - [ ] Code the ReLU and Sigmoid activation functions
        
    - [ ] Train your scratch MLP on a small CAMELS basin sample
        

**Week 13: Tree-Based Learners: Random Forests and Gradient Boosting**

- **Tags:** #Regression/Classification-Trees #Gradient-Boosting #Random-Forests #XGBoost #Recursive-Trees #Stumps-to-Deep-Trees
    
- **Resources:** MLR Chapter 14 (_Tree-Based Learners_).   
    
- **Book Exercise:** Compare the performance of **Random Forests** vs. **Gradient Boosting** on a dataset with significant missing values. Identify which method is more sensitive to hyperparameters.
    
- **Practical Implementation:** Train an **XGBoost** model on the CAMELS attributes to predict the **Baseflow Index (BFI)** for ungauged basins. Use "Feature Importance" plots to identify if soil conductivity or mean slope is the dominant physical control on baseflow.
    
- **Checklist:**
    
    - [ ] Code a single Regression Tree "stump"
        
    - [ ] Perform hyperparameter tuning (max depth, learning rate) for XGBoost
        
    - [ ] Compare Tree results against your Week 12 MLP results
        

**Week 14: Sequential Modeling: RNNs and LSTMs in Hydrology**

- **Tags:** #RNNs #LSTMs #Sequential-Processing #Vanishing-Gradients #Gating-Mechanisms #Backpropagation-through-time
    
- **Resources:** UDL Chapter 12 (_Sequential Processing_) and _Kratzert et al. (2018)_.
    
- **Book Exercise:** **UDL 12.1**: Derive the gradient for a recurrent network over three time steps to visualize why gradients "vanish" in long sequences.
    
- **Practical Implementation:** Switch to the **`NeuralHydrology` Python library**. Train an **Entity-Aware LSTM (EA-LSTM)** on 50 catchments from the CAMELS dataset. Configure a `.yml` file that feeds static attributes (e.g., sand fraction) directly into the LSTM input gate.
    
- **Checklist:**
    
    - [ ] Setup the `NeuralHydrology` environment
        
    - [ ] Successfully run a "Global" LSTM training job
        
    - [ ] Link LSTM "cell states" to physical snowpack accumulation processes
        

**Week 15: The Transformer Revolution and Parallel Attention**

- **Tags:** #Self-Attention #Transformers #PatchTST #Positional-Encoding #Multi-head-Attention #Dot-Product-Attention
    
- **Resources:** UDL Chapter 12 and _Ahmed et al. (2026)_.
    
- **Book Exercise:** **UDL 12.5**: Mathematically derive the **Scaled Dot-Product Attention** mechanism. Explain the role of the dk​![](data:image/svg+xml;utf8,<svg%20xmlns="http://www.w3.org/2000/svg"%20width="400em"%20height="1.08em"%20viewBox="0%200%20400000%201080"%20preserveAspectRatio="xMinYMin%20slice"><path%20d="M95,702%0Ac-2.7,0,-7.17,-2.7,-13.5,-8c-5.8,-5.3,-9.5,-10,-9.5,-14%0Ac0,-2,0.3,-3.3,1,-4c1.3,-2.7,23.83,-20.7,67.5,-54%0Ac44.2,-33.3,65.8,-50.3,66.5,-51c1.3,-1.3,3,-2,5,-2c4.7,0,8.7,3.3,12,10%0As173,378,173,378c0.7,0,35.3,-71,104,-213c68.7,-142,137.5,-285,206.5,-429%0Ac69,-144,104.5,-217.7,106.5,-221%0Al0%20-0%0Ac5.3,-9.3,12,-14,20,-14%0AH400000v40H845.2724%0As-225.272,467,-225.272,467s-235,486,-235,486c-2.7,4.7,-9,7,-19,7%0Ac-6,0,-10,-1,-12,-3s-194,-422,-194,-422s-65,47,-65,47z%0AM834%2080h400000v40h-400000z"></path></svg>)​ divisor in numerical stability.
    
- **Practical Implementation:** Deploy a **PatchTST** or **FutureTST** model for 30-day ahead streamflow forecasting. Use **GloFAS reanalysis data** as the training set and benchmark the Transformer against your Week 14 LSTM using KGE.
    
- **Checklist:**
    
    - [ ] Implement a basic Self-Attention layer in PyTorch
        
    - [ ] Visualize "Attention Weights" to see which prior days influence a flood peak
        
    - [ ] Quantify Transformer vs. LSTM performance for long-range lead times
        

**Week 16: Spatial Relational Learning: Graph Neural Networks (GNNs)**

- **Tags:** #Graph-Neural-Networks #Message-Passing #HydroGraphNet #Unstructured-Meshes #Spatial-Connectivity #k-NN-Graphs
    
- **Resources:** UDL Chapter 13 (_Graph Neural Networks_) and _Bentivoglio et al. (2025)_.
    
- **Book Exercise:** **UDL 12.8**: Define the "Message Passing" function for a graph where nodes are mesh cells and edges are hydraulic path connectivity.
    
- **Practical Implementation:** Use the **mSWE-GNN** framework (PhysicsNeMo) to predict flood inundation on an irregular mesh of a Dutch dike breach scenario. Integrate "Ghost Cells" at the domain boundary to allow for time-varying inflows without a numerical solver.
    
- **Checklist:**
    
    - [ ] Build a k-NN graph from topographic mesh coordinates
        
    - [ ] Run an inference script using a pre-trained HydroGraphNet model
        
    - [ ] Generate an animation (GIF) of the predicted flood spread
        

---

### Phase 5: Physics-Informed ML and ECMWF Challenge (Weeks 17-20)

**Week 17: Physics-Informed Neural Networks (PINNs) – Theory**

- **Tags:** #PINNs #Physics-Informed-Loss #Residual-Minimization #Collocation-Points #Boundary-Conditions #Saint-Venant-Equations
    
- **Resources:** UDL Chapter 13 (_Physics-informed section_) and _Raissi et al. (2019)_.
    
- **Book Exercise:** Follow a PINN tutorial to solve the **1D wave equation**. Observe how the "Physics Loss" constrains the model even when data is sparse.
    
- **Practical Implementation:** Build a PINN in PyTorch to solve the **1D Laplace equation** for steady-state groundwater flow. Your loss function must minimize the residual of the PDE evaluated at 1,000 random collocation points.   
    
- **Checklist:**
    
    - [ ] Implement the Laplace operator using Automatic Differentiation
        
    - [ ] Set Dirichlet and Neumann boundary conditions in the loss function
        
    - [ ] Compare PINN groundwater head to a baseline numerical solution
        

**Week 18: PINN Surrogates for Hydraulic Solvers**

- **Tags:** #Hydraulic-Surrogates #DeepONet #Inverse-Problems #Manning's-Roughness #Saint-Venant-Surrogates
    
- **Resources:** `HydroNet` Repository and _PINN-HEC-RAS_ research.
    
- **Book Exercise:** Analyze the **Inverse Problem**: Given observed water surface profiles, describe how a PINN can be used to "learn" the unknown roughness coefficient n as a trainable parameter.
    
- **Practical Implementation:** Use **HydroNet** to train a neural surrogate for the **2D Shallow Water Equations (SWE)** on a specific river reach. Measure the speed-up factor compared to a traditional **HEC-RAS** model.   
    
- **Checklist:**
    
    - [ ] Quantify the "Physics Consistency" (mass balance) of the surrogate output
        
    - [ ] Identify a Manning's n value from synthetic RWS water levels
        
    - [ ] Verify if the PINN surrogate resolves "Backwater effects"
        

**Week 19: ECMWF HydroML-Verify – Signatures and Consistency**

- **Tags:** #Hydrological-Signatures #Physical-Consistency #Non-negativity #Continuity #Baseflow-Index #Recession-Constant #Challenge-22
    
- **Resources:** ECMWF Challenge 22 Documentation and Addor et al. (2017).
    
- **Book Exercise:** Write Python functions to calculate 5 key **Hydrological Signatures**: Baseflow Index (BFI), Recession Constant (K), Flow Variability, and 5th/95th Percentiles.
    
- **Practical Implementation:** Create a **"Physical Constraint Checker"** module in `src/hydrology/signatures.py`. This script must scan a GloFAS discharge time series and flag: (a) negative values, (b) unrealistic continuity "spikes," and (c) timing inconsistencies compared to rain forcings.   
    
- **Checklist:**
    
    - [ ] Implement the 15 signatures requested by ECMWF
        
    - [ ] Detect "ensemble drift" using distribution shift analysis
        
    - [ ] Generate summary tables at the station and catchment levels
        

**Week 20: Final Integration and Challenge Submission**

- **Tags:** #Modular-Python-Packages #Diagnostic-Dashboards #Jupyter-Notebooks #Feasibility #Transferability #Sustainability
    
- **Resources:** ECMWF Challenge submission guidelines.
    
- **Milestone:** Complete the **HydroML-Verify Diagnostic Dashboard**. This must be an open-source modular package with a clear API.   
    
- **Final Task:** Generate a **Jupyter Notebook** demonstrating your toolkit on a **GloFAS ensemble forecast**. Visualize which ensemble members violate physical consistency at RWS gauging stations.   
    
- **Checklist:**
    
    - [ ] Assemble the full package with documentation
        
    - [ ] Create a summary four-panel GIF showing water depth and error evolution
        
    - [ ] Submit the repository to the ECMWF Code for Earth roadmap