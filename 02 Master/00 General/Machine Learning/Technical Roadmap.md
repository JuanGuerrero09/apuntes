
### **The Order of Operations (Weekly)**

1. **Intuition (Reading):** Read the chapter sections related to each **Tag**. Your goal is to be able to draw a "cocktail napkin" sketch of the concept (e.g., how a decision boundary shifts or how a forget gate blocks a signal).

2. **Math (Derivation):** Manually derive the loss function or update rule in your Obsidian note. If the book provides a proof, rewrite it in your own words. Use LaTeX strictly ($...$) for formulas.

3. **Implementation (Manual Workflow):** Open a script in `src/engine/` and code the algorithm using only `numpy`. This is the "Manual" part—no high-level libraries allowed until Week 14. This forces you to understand the "engine" of the model.

4. **Application (Modular Workflow):** Use the logic you just built to solve a hydrological problem (RWS/CAMELS) in a Jupyter Notebook. Import your functions from `src/engine/` to keep the notebook clean.


### **Obsidian Note-Taking Methodology**

- **Visual Integration:** Use the **Excalidraw extension** to sketch the intuition diagrams. Link these drawings directly into your weekly notes.
- **Atomic Notes:** Create a separate note for each **Tag** (e.g., `#PCA`). When you study a chapter that mentions PCA, link back to that atomic note. This builds a knowledge graph where hydraulics and ML intersect.

# Operational Study Guide: Deep Learning for Global Flood Forecasting

This study guide details a 20-week program designed to build the mathematical, software, and hydrological skills required to master Google's global flood-forecasting codebase (**OpenHydroNet**).

The program utilizes **three core texts**:

1. **MLR:** _Machine Learning Refined_ (First-principles mathematical derivations)
2. **UDL:** _Understanding Deep Learning_ (Deep architectural theory)
3. **HOML:** _Hands-On Machine Learning with Scikit-Learn and PyTorch_ (Production-grade implementation)

## 1. Vault Architecture & Workflow

### File Naming and Creation Protocol

1. To start a new week, create an empty note in Obsidian and name it exactly `ML-W01` (or `ML-W02`, etc.).

2. Open the note, press `Alt+E` (or your shortcut to insert a Templater template), and select `Weekly_Template`.

3. The template will automatically run and fetch the week's title, dates, and create the directory links for your code.

4. In the `🏷️ Tags & Concepts` section, write down the week's tags as internal links: e.g., `]`.

5. Click on any red link to create the atomic note, then apply your `Atomic_Template` to write your summaries.


### The "Manual-to-Modular" Repository Structure

Your repository should be organized as a Python package. Your low-level math goes into conceptual scripts inside `src/engine/`, which are imported and exposed in `src/engine/__init__.py`. This allows you to import your own custom work directly into your notebooks.

flood-forecasting-journey/
├── data/               # Caravan NetCDF files, meteorological forcings
├── notebooks/          # Exploratory work (e.g., Week01_Optimization.ipynb)
├── src/                # THE PACKAGE
│   ├── engine/         # Scratch mathematical blocks
│   │   ├── init.py # Exposed API map (e.g., from.opt import random_search)
│   │   ├── opt.py      # Weeks 1-3: Optimizers
│   │   ├── linear.py   # Weeks 4-6: Regression & SVMs
│   │   └── nn.py       # Weeks 12-14: Scratch MLPs & LSTMs
│   └── hydrology/      # Custom hydrological data pipelines & metrics
└── configs/            #.yaml configuration files for PyTorch training


## 3. The 20-Week OpenHydroNet Roadmap

### **Phase 1: Optimization and Linear Models**

#### **Week 1: Taxonomy and Zero-Order Optimization**

Learn how to define different machine learning archetypes and calibrate parameters using black-box optimization when gradients are unavailable (like adjusting friction coefficients in 2D hydraulic models).

- **Tags:** #Machine-Learning-Taxonomy #Global-Optimization #Local-Optimization #Random-Search #Curse-of-Dimensionality
- **Resources:**
    - MLR Chapter 1 (_Introduction_) & Chapter 2 (_Zero-Order Optimization_).
    - HOML Chapter 1 (_The Machine Learning Landscape_).

- **Book Exercises:** **MLR 2.2**: Write a Python function implementing Random Search. Minimize a non-convex function and plot how search convergence degrades as you scale inputs from 2 to 10 dimensions.
    
- **Practical Implementation:** Use the Rijkswaterstaat (RWS) Waterinfo API to fetch stage-discharge data. Write a custom Random Search algorithm in `src/engine/opt.py` to identify the optimal parameters of a power-law rating curve ($Q = a(H-b)^c$), treating the function as a black box. Export the function in `src/engine/__init__.py`.


#### **Week 2: First-Order Optimality and Gradient Descent**

Derive the geometry of steepest descent. In river hydraulics, this corresponds mathematically to the path of maximum gravitational potential drop along a river profile.

- **Tags:** #Gradient-Descent #First-Order-Optimality #Taylor-Series #Automatic-Differentiation
    
- **Resources:**
    
    - MLR Chapter 3 (_First-Order Optimization Techniques_).
        
    - UDL Chapter 6 (_Fitting Models_).
        
    - HOML Chapter 4 (_Training Models_ - Gradient Descent sections).
        
- **Book Exercises:** **UDL Problem 2.1**: Calculate expressions for the partial derivatives of a linear regression loss function to derive the update rules for walking downhill.
    
- **Practical Implementation:** Code a custom Gradient Descent loop in `src/engine/opt.py`. Use it to calibrate a simple 2-parameter linear reservoir ($S = kQ$). Use historical hourly rainfall and runoff data to minimize the Mean Squared Error (MSE) of the discharge predictions.
    

#### **Week 3: Curvature-Aware Search and Adaptive Optimizers**

Explore how momentum and adaptive step sizes prevent gradient descent from stalling or zigzagging in narrow valleys, which is critical when handling noisy environmental inputs.

- **Tags:** #Newton's-Method #Hessian #Adam #Momentum #Second-Order-Optimality
    
- **Resources:**
    
    - MLR Chapter 4 (_Second-Order Optimization Techniques_).
        
    - UDL Chapter 6 (_Fitting Models_).
        
    - HOML Chapter 11 (_Training Deep Neural Networks_ - Optimizers section).
        
- **Book Exercises:** **MLR 4.1**: Manually calculate the Hessian matrix for a 2D quadratic function and explain why Newton's Method can find the global minimum in a single step compared to Gradient Descent.
    
- **Practical Implementation:** Implement **Momentum** and **Adam** from scratch in `src/engine/opt.py`. Write a Jupyter Notebook to compare their calibration efficiency when fitting parameters to hydrographs contaminated with artificial sensor noise.
    

#### **Week 4: Robust Linear Regression and Evaluation Metrics**

Standard regression is highly sensitive to extreme events. Learn how robust cost functions protect models from being biased by extreme flood peaks, and master standard hydrological validation metrics.

- **Tags:** #Least-Squares-Linear-Regression #Least-Absolute-Deviations #Weighted-Regression #NSE-and-KGE-Metrics
    
- **Resources:**
    
    - MLR Chapter 5 (_Linear Regression_).
        
    - UDL Chapter 2 (_Supervised Learning_).
        
    - HOML Chapter 2 (_End-to-End Machine Learning Project_ - evaluation metrics).
        
- **Book Exercises:** **MLR 5.3**: Implement **Least Absolute Deviations (LAD)** and mathematically prove why it is less sensitive to extreme outliers than Ordinary Least Squares.
    
- **Practical Implementation:** In `src/utils/metrics.py`, write custom functions to compute the **Nash-Sutcliffe Efficiency (NSE)** and **Kling-Gupta Efficiency (KGE)**. Use RWS sensor data with artificial outliers (simulating sensor failure) to compare how OLS vs. LAD regression line fits behave.
    

### **Phase 2: Classification, Trees, and Clustering**

#### **Week 5: Support Vector Machines & Softmax Costs**

Translate continuous river stages into discrete warning zones (e.g., Minor, Major, Extreme). Study the geometric concept of "margin classification".

- **Tags:** #Logistic-Regression #Cross-Entropy/Softmax-Cost #The-Perceptron #SVMs #Soft-Margin-Classification
    
- **Resources:**
    
    - MLR Chapter 6 (_Linear Two-Class Classification_).
        
    - HOML Chapter 5 (_Support Vector Machines_).
        
- **Book Exercises:** **HOML Chapter 5 Exercise 3**: Prove that the dual representation of an SVM classification problem is simpler to solve than the primal when the number of features is smaller than the training instances.
    
- **Practical Implementation:** Code a binary Soft-Margin SVM in `src/engine/linear.py`. Use it to classify whether a floodplain cell is "Safe" or "At Risk" based on ground elevation and distance to the river channel. Implement a **Weighted Loss** to heavily penalize missing a flood event (False Negatives).
    

#### **Week 6: Multi-Class Logic and Online Learning**

Develop the logic to manage multiple warning stages and learn how models can adapt in real-time as physical sensor streams continuously update.

- **Tags:** #One-versus-All #Multi-Class-Logistic-Regression #Online-Learning #Classification-Metrics
    
- **Resources:**
    
    - MLR Chapter 7 (_Linear Multi-Class Classification_).
        
    - HOML Chapter 3 (_Classification_).
        
- **Book Exercises:** **MLR 7.5**: Implement the Categorical Cross Entropy cost function and derive how its gradient updates weights when classifying multi-class targets.
    
- **Practical Implementation:** Build a Multi-Class Logistic Regression engine in `src/engine/linear.py`. Write a simulation where your model processes a stream of water level inputs, updating its weights in real-time as new 10-minute sensor readings are received.
    

#### **Week 7: Unsupervised Dimensionality Reduction & Clustering**

Group river basins with similar characteristics (useful for regionalization studies) and learn to compress massive meteorological fields using spatial decompositions.

- **Tags:** #PCA #K-means #Matrix-Factorization #Linear-Autoencoder #Anomaly-Detection
    
- **Resources:**
    
    - MLR Chapter 8 (_Linear Unsupervised Learning_).
        
    - HOML Chapter 8 (_Dimensionality Reduction_) & Chapter 9 (_Unsupervised Learning_).
        
- **Book Exercises:** **HOML Chapter 8 Exercise 2**: Explain why PCA is generally preferred over standard autoencoders for linear dimensionality reduction, and list its limitations.
    
- **Practical Implementation:** Download a sample of the **Caravan dataset**. Write a K-means clustering algorithm from scratch in `src/engine/clustering.py` to group 50 catchments based on their static attributes (climatology, soil composition, mean slope). Use PCA to project and visualize the clusters in 2D space.
    

#### **Week 8: Tree-Based Classifiers & Ensembles**

Master decision trees and ensemble methods. These algorithms are highly effective for tabular catchment data and provide a baseline for deep models.

- **Tags:** #Decision-Trees #Random-Forests #Gradient-Boosting #XGBoost #Feature-Importance
    
- **Resources:**
    
    - MLR Chapter 14 (_Tree-Based Learners_).
        
    - HOML Chapter 6 (_Decision Trees_) & Chapter 7 (_Ensemble Learning and Random Forests_).
        
- **Book Exercises:** **HOML Chapter 6 Exercise 2**: Explain why reducing the `max_depth` hyperparameter of a decision tree reduces overfitting, and compute the Gini impurity for a split manually.
    
- **Practical Implementation:** Use Scikit-Learn to train a **Random Forest Regressor** and an **XGBoost** model to predict a catchment's Baseflow Index (BFI) using static soil features. Plot the resulting Gini **Feature Importances** to identify the primary physical controls on groundwater discharge.
    

### **Phase 3: Nonlinear Feature Engineering & PyTorch Foundations**

#### **Week 9: Principles of Nonlinear Feature Engineering**

Natural catchments are non-linear; soil saturation represents a strong threshold process. Learn how mapping inputs to higher-dimensional spaces allows models to capture these physical thresholds.

- **Tags:** #Nonlinear-Supervised-Learning #Nonlinear-Regression #Polynomial-Bases #Hysteresis
    
- **Resources:**
    
    - MLR Chapter 10 (_Principles of Nonlinear Feature Engineering_).
        
    - HOML Chapter 4 (_Training Models_ - Polynomial Regression section).
        
- **Book Exercises:** Prove that transforming a input vector $x$ into a second-degree polynomial basis $\phi(x)$ allows a linear classifier to solve the XOR classification problem.
    
- **Practical Implementation:** Train a non-linear regression model using polynomial and radial basis functions in `src/engine/linear.py` to approximate a stage-discharge Rating Curve. Show how your non-linear basis successfully captures the hydraulic **hysteresis** effect (rising vs. falling limbs) of a passing flood wave.
    

#### **Week 10: Validation, Bagging, and PyTorch ANNs**

Transition from Scikit-Learn to PyTorch. Study the concept of universal approximation and build your first deep learning models.

- **Tags:** #Universal-Approximation #K-Fold-Cross-Validation #PyTorch-ANN #Model-Serialization
    
- **Resources:**
    
    - MLR Chapter 11 (_Principles of Feature Learning_).
        
    - HOML Chapter 10 (_Introduction to Artificial Neural Networks with PyTorch_).
        
- **Book Exercises:** **UDL Problem 3.1**: Mathematically prove that a deep neural network with only linear activation functions is equivalent to a single linear layer.
    
- **Practical Implementation:** Write a PyTorch MLP class in `src/engine/nn.py` to map rainfall and temperature features to streamflow. Implement a custom training loop with a validation split, saving the model weights (`.pt` file) only when validation loss improves.
    

#### **Week 11: Kernel Methods and Custom PyTorch Architectures**

Learn how to map features implicitly using the kernel trick and understand how PyTorch builds dynamic computation graphs under the hood.

- **Tags:** #Kernel-Methods #The-Kernel-Trick #Custom-PyTorch-Modules #Autograd
    
- **Resources:**
    
    - MLR Chapter 12 (_Kernel Methods_).
        
    - HOML Chapter 12 (_Custom Models and Training with PyTorch_).
        
- **Book Exercises:** **MLR 12.3**: Show that a Gaussian Radial Basis Function (RBF) kernel implicitly represents an infinite-dimensional feature space.
    
- **Practical Implementation:** Write a custom PyTorch module in `src/engine/nn.py` that implements a neural network layer using a custom activation function (e.g., a parameterized ReLU). Manually trace the gradients of this layer using PyTorch's `autograd`.
    

#### **Week 12: High-Performance Data Pipelines with PyTorch**

Deep models require efficient data pipelines. Learn how to write custom PyTorch Datasets and DataLoaders to manage long sequences of environmental time series without running out of RAM.

- **Tags:** #PyTorch-Datasets #DataLoaders #Sequence-Padding #Generator-Functions
    
- **Resources:**
    
    - HOML Chapter 13 (_Loading and Preprocessing Data with PyTorch_).
        
- **Book Exercises:** Explain why loading an entire dataset into RAM can cause OOM errors during sequential modeling, and describe how PyTorch DataLoaders solve this using asynchronous multi-process loading.
    
- **Practical Implementation:** Write a custom Python class `CaravanDataset(torch.utils.data.Dataset)` in `src/hydrology/dataset.py`. The dataset must read Caravan NetCDF files, normalize meteorological variables, and generate input-target sequences of sliding windows (e.g., 365-day sequences of precipitation and temperature to predict today's discharge).
    

### **Phase 4: Recurrent Models & Spatial Graph Routing**

#### **Week 13: Recurrent Neural Networks & Vanishing Gradients**

Time series models must maintain memory. Understand why standard RNNs fail over long temporal horizons (like snowpack melting months after snowfall) due to vanishing gradients.

- **Tags:** #RNNs #Backpropagation-Through-Time #Vanishing-Gradients #Hidden-States
    
- **Resources:**
    
    - MLR Chapter 13 (_Fully Connected Neural Networks_ - recurrent section).
        
    - UDL Chapter 12 (_Sequential Processing_).
        
    - HOML Chapter 15 (_Processing Sequences Using RNNs and CNNs_).
        
- **Book Exercises:** **UDL Problem 12.1**: Derive the gradient for a recurrent neural network over three time steps to mathematically show why gradients decay exponentially over time.
    
- **Practical Implementation:** Code a simple Recurrent Neural Network from scratch in `src/engine/nn.py` using only `numpy`. Train it on a synthetic rainfall-runoff sequence and visualize how the gradient of the loss with respect to the initial hidden state decays toward zero as sequence length increases.
    

#### **Week 14: Long Short-Term Memory (LSTM) Networks**

Study the gating mechanism that allows LSTMs to retain memory over long sequences, simulating physical water storage in soil and snowpack.

- **Tags:** #LSTMs #Gating-Mechanisms #Forget-Gates #Cell-State
    
- **Resources:**
    
    - MLR Chapter 13 (Recurrent / LSTM sections).
        
    - UDL Chapter 12.
        
    - HOML Chapter 15.
        
- **Book Exercises:** **MLR Exercise 13.4**: Write out the gate equations (Forget, Input, Output) and explain the physical analogy of the cell state $c_t$ as a water storage tank.
    
- **Practical Implementation:** Write a custom LSTM cell from scratch in `src/engine/nn.py`. Feed it a sequence of dry and wet periods, and plot the forget and input gate activations to observe how the network manages its internal moisture representation.
    

#### **Week 15: Entity-Aware LSTMs (EA-LSTM) and NeuralHydrology**

Deploy the Entity-Aware LSTM, which allows a single model to learn regional hydrological behaviors by using static attributes to modulate the network's gates.

- **Tags:** #EA-LSTM #NeuralHydrology-Framework #Static-Embeddings #Global-Modeling
    
- **Resources:**
    
    - _Kratzert et al. (2018/2019)_ - "Towards learning universal, regional, and local hydrological behaviors".
        
    - NeuralHydrology Documentation.
        
- **Book Exercises:** Explain why a standard LSTM can struggle when trained on multiple basins simultaneously, and describe how the EA-LSTM resolves this using a static input gate.
    
- **Practical Implementation:** Set up the `neuralhydrology` package. Write a `.yml` configuration file to train an EA-LSTM on a subset of CAMELS US basins. Extract and inspect the dynamic gate activations to verify if they align with physical catchment behaviors (e.g., changes in soil characteristics).
    

#### **Week 16: Spatial Routing and Graph Neural Networks**

River networks are topologically connected graphs. Learn how GNNs pass messages across unstructured meshes to perform spatial routing.

- **Tags:** #Graph-Neural-Networks #Message-Passing #Hydraulic-Routing #Unstructured-Meshes
    
- **Resources:**
    
    - UDL Chapter 13 (_Graph Neural Networks_).
        
    - HOML Appendix E (_State-Space Models_ - spatial representation sections).
        
- **Book Exercises:** **UDL Problem 12.8**: Define the Message Passing equation for a spatial graph where nodes are streamflow gauges and edges represent river channels.
    
- **Practical Implementation:** Build a simple message-passing GNN using PyTorch Geometric in `src/engine/routing.py`. Define a synthetic network where nodes are sub-basins with water levels and edges are flow channels. Run a message-passing step to route runoff downstream.
    

### **Phase 5: Google OpenHydroNet & Global Flood Forecasting**

#### **Week 17: Large-Sample Hydrology with Caravan & MultiMet**

Prepare your data stack using Caravan, a globally-standardized community dataset, and MultiMet weather forecasts (e.g., GraphCast inputs).

- **Tags:** #Caravan-Dataset #MultiMet-Forcings #Weather-Nowcasts #Meteorological-Forecasts
    
- **Resources:**
    
    - _Kratzert et al. (2023)_ - Caravan Dataset Paper.
        
    - _Shalev & Kratzert (2024)_ - Caravan MultiMet Extension.
        
- **Book Exercises:** Explain how forecast inputs (like GraphCast) differ from reanalysis data (like ERA5-Land) in terms of temporal uncertainty and drift, and why standardizing these is critical for real-time forecasting.
    
- **Practical Implementation:** Download the Caravan-nc dataset. Write a preprocessing script in `src/hydrology/caravan_loader.py` to extract meteorological forcings (ERA5-Land reanalysis data) and static landscape attributes for selected basins, formatting them for your deep networks.
    

#### **Week 18: Google’s Handoff Forecast LSTM Architecture**

Master the State Handoff Forecast LSTM, which transitions from a hindcast model to a forecast model using a non-linear handoff network.

- **Tags:** #HandoffForecastLSTM #Handoff-Network #Hindcast-to-Forecast-Transition #Forecast-Overlap
    
- **Resources:**
    
    - Google OpenHydroNet Repository: `googlehydrology/modelzoo/handoff_forecast_lstm.py`.
        
    - _Nearing et al. (2024)_ - Nature Global Flood Prediction.
        
- **Book Exercises:** Analyze the mathematical role of the `state_handoff_network` in the `handoff_forecast_lstm` class. How does it map the cell and hidden states from the hindcast LSTM to the forecast LSTM?
    
- **Practical Implementation:** Implement a simplified version of `HandoffForecastLSTM` in PyTorch. Build a hindcast LSTM that runs from $t_{-7}$ to $t_0$, pass its final hidden state through a multi-layer linear network, and use the output to initialize a forecast LSTM that runs from $t_0$ to $t_7$.
    

#### **Week 19: Google’s Mean Embedding Forecast LSTM Architecture**

Study Google's current operational FloodHub architecture, which uses separate embedding networks and masked means to handle missing input data.

- **Tags:** #Mean-Embedding-Forecast-LSTM #Masked-Means #Missing-Data-Imputation #Operational-FloodHub
    
- **Resources:**
    
    - Google OpenHydroNet docs.
        
    - _Gauch et al. (2025)_ - "How to deal with missing input data".
        
- **Book Exercises:** Read _Gauch et al. (2025)_. Explain how the Mean Embedding architecture prevents missing input values from destabilizing the LSTM's memory state.
    
- **Practical Implementation:** Code a Mean Embedding Layer in PyTorch. The layer must take an input sequence with random NaN values (representing sensor dropout), compute a masked mean across the valid time steps, and project the embedding vector into a hidden state space.
    

#### **Week 20: Deploying, Fine-Tuning, and Evaluating OpenHydroNet**

Your final capstone. Deploy Google's global flood models, run inference, evaluate hydrographs using NSE/KGE, and fine-tune static embeddings.

- **Tags:** #OpenHydroNet #Fine-Tuning #Static-Attribute-Fine-Tuning #Evaluation-Hydrographs
    
- **Resources:**
    
    - Google OpenHydroNet Repository & tutorial notebooks.
        
    - HOML Chapter 11 (Fine-Tuning section).
        
- **Book Exercises:** Explain how fine-tuning the weights of the `static_attributes_fc` layer improves streamflow predictions on "outlier" basins without altering the main network parameters.
    
- **Practical Implementation:**
    
    1. Install the `openhydronet` conda environment.
        
    2. Write a script to load a pre-trained `mean_embedding_forecast_lstm` model.
        
    3. Generate streamflow predictions for a test basin, evaluate the results using KGE and NSE, and plot the hydrographs.
        
    4. Freeze the LSTM weights, write a training loop to fine-tune only the static attributes layer on an outlier basin, and plot the improved hydrograph against the baseline.
