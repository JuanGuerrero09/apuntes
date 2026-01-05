---
Class: "[[Hydrology]]"
Date: 2025-11-03
Last Modified: Monday 3rd November 2025 12:25
---
# Monday 3rd November 2025

# 📒Class Summary

This lecture introduced the **principles of hydrological modelling**, its **scales**, **types**, and **calibration methods**.  
It emphasized that models are **simplified representations of reality** — useful when designed with a clear purpose.  
Topics included **model structures**, **uncertainty**, **Good Modelling Practice (GMP)**, and an overview of **empirical, conceptual, physically based, stochastic,** and **machine learning** models.

---
# 📝 Notes

## Hydrological Modelling

Hydrological modelling aims to describe how **precipitation (P)** is transformed into **runoff (R)** through a system of interacting processes such as infiltration, evapotranspiration, and storage. These models are key tools to **analyze**, **simulate**, and **forecast** hydrological behavior at multiple spatial and temporal scales.

Runoff generation involves three main stages:

- **Runoff formation** – precipitation reaching the surface and producing excess water.
- **Runoff concentration** – the routing of that water through the catchment.
- **Flood propagation** – movement through river channels toward the outlet.
---
### Model Scales

Models range from local field plots to continental basins, following the rule:

They follow the principle:

> “As simple as possible, as complex as necessary.”

|Scale|Typical Size|Focus / Examples|
|---|---|---|
|**Microscale**|1 m² – 1 ha|Field or lysimeter experiments; local infiltration; preferential flow.|
|**Mesoscale**|1 ha – 10² km²|Catchments and aquifers; spatial heterogeneity and hydrological connectivity.|
|**Macroscale**|10² km² – 10⁶ km²|River basins, large watersheds, continental hydrology; links with GCMs.|

> **Watershed vs River Basin:**  
> A _watershed_ drains into a local outlet (stream or wetland), while a _river basin_ aggregates multiple watersheds draining into a major river or sea.

Models at different scales must capture scale-dependent relationships and account for sub-scale effects.
#### Examples

- **Flood forecasting:** basin or catchment scale.
- **Self-cleaning mechanisms in rivers:** river reach scale.
- **Crop productivity and irrigation:** field or soil column scale.

---
### Modelling concepts

Hydrological models are abstractions — they focus on the dominant processes relevant to the research question.

> “All models are wrong, but some are useful.” – G. Box (1978)

![[Pasted image 20251103124616.png]]
They quantify **specific parts of the water cycle**, particularly rainfall–runoff relationships, by linking **inputs** (precipitation, ET, radiation, temperature) to **outputs** (runoff, infiltration, storage).

![[Pasted image 20251103174605.png]]

---
#### General structure of (hydrological) models

Hydrological models describe how **inputs** (precipitation, evapotranspiration, temperature, etc.) are transformed into **outputs** (runoff, infiltration, storage, etc.) through a system of **governing equations**:

$$\frac{\partial \theta}{\partial t} = \frac{\partial}{\partial z} \left(K \left(\frac{\partial h}{\partial z} + 1\right)\right) - S$$

Where:
- $\theta$ = soil water content
- $K$ = hydraulic conductivity
- $h$ = hydraulic head
- $S$ = sink term (e.g., root water uptake)

System description includes:
- Parameters and parameter models
- Submodules or process representations
- Spatial discretization (model grid)
- Equation solvers (analytical or numerical)
Models can be **analytical** or **numerical**, **lumped** or **distributed**, and always subject to simplification.

---
#### ⚙️ Model Inputs and Outputs

- **Inputs:** precipitation ($P$), potential evapotranspiration (ETP), temperature ($T$), radiation, soil data.
- **Outputs:** runoff, infiltration, evapotranspiration, storage, travel times.

Hydrological models transform these inputs using **physical laws** (mass and energy conservation) and **empirical relationships**.

---

#### Model Errors and Uncertainty

Uncertainties arise from:

- Data quality and measurement errors
- Spatial/temporal resolution limits
- Structural simplifications
- Parameter calibration error

Uncertainty is typically analyzed using **sensitivity analysis** or **Monte Carlo simulations** to quantify prediction reliability.

---
#### 🧭 The Modelling Process — Good Modelling Practice (GMP)

1. **Research question → Hypothesis**
2. **Conceptualization:** Identify key processes, spatial/temporal resolution, and required data.
3. **Model selection and development:** Choose model structure (conceptual, empirical, or physically based) according to data and objectives.
4. **Parameter estimation (calibration):** Define objective function, select optimization method (manual, local, global, or stochastic).
5. **Model evaluation (testing):** Validate using independent datasets.
6. **Uncertainty assessment:** Quantify the effect of parameter and input variability.
7. **Model application:** Use for forecasting, scenario analysis, or management.
---
#### Model types: Overview

#### 🟤 Black-box (Empirical) Models

Relate inputs and outputs statistically without describing internal processes.  
**Pros:** simple, fast, reproduces observed behavior.  
**Cons:** poor transferability, no process understanding.

---
#### 🟠 Grey-box (Conceptual) Models

Combine empirical and physical components.

**Example – Linear Storage Model:**  
Storage–outflow relationship:  
$q = \frac{1}{K} S$
Continuity equation:  
$p = q + \frac{\partial S}{\partial t}$

By substitution:  
$p = q + K\frac{\partial q}{\partial t}$

**Analytical solution:**  
For constant input $p(t)$, the outflow $q(t)$ follows an **exponential response**:  
$q(t) = q_0 e^{-t/K} + p(1 - e^{-t/K})$

where $K$ is the **storage constant**, representing the **time scale of catchment response** (larger $K$ → slower drainage).

![[Pasted image 20251103175619.png]]

**Pros:** efficient and interpretable, flexible for catchments.  
**Cons:** requires calibration; validity limited to data range.

---

#### White-box (Physically Based) Models

Derived from fundamental conservation laws for mass, energy, and momentum (e.g., Richards or Saint-Venant equations).

**Example:** PDE-based flow and transport models (e.g. Richards or Saint-Venant equations).

**Pros:** physically interpretable, transferable, spatially explicit.  
**Cons:** high data and computational demands, sensitive to sub-grid variability.

---

#### Stochastic Models

Incorporate randomness in inputs or parameters to estimate **probability distributions** of outcomes (e.g. *Monte Carlo* methods).

**Applications:**

- Reservoir design using stochastic rainfall series.
- Contaminant plume arrival time in random $K$-fields.

**Pros:** explicit uncertainty quantification.  
**Cons:** requires many simulations (high CPU time).

##### Monte Carlo Methods

Monte Carlo simulation is the most common stochastic technique. It runs the model many times with random input samples to produce a **distribution of outputs**.

1. Randomly sampling input variables (e.g. precipitation, hydraulic conductivity, or parameters).
2. Running the model repeatedly — often **thousands of times** — with these samples.
3. Analyzing the resulting distribution of outputs (e.g. runoff, water table depth).

This produces probabilistic estimates such as confidence intervals, exceedance probabilities, or risk levels.

---

#### Machine Learning Models

Modern data-driven models capable of capturing nonlinear relations between hydrological variables.  
They include **Random Forests (RF)**, **Multi-Layer Perceptrons (MLP)**, and **Long Short-Term Memory (LSTM)** networks.

- **RF:** ensemble of decision trees; robust and fast.
- **MLP:** feedforward neural network; captures nonlinear mappings.
- **LSTM:** recurrent model; retains temporal dependencies, ideal for streamflow or groundwater forecasting.

**Pros:** high predictive performance, scalable.  
**Cons:** require large datasets; limited interpretability.

![[Pasted image 20251103180326.png]]

---
#### Conceptual Models vs Physically based models

| Conceptual Models               | Physically Based Models                    |
| :------------------------------ | :----------------------------------------- |
| Rainfall–runoff                 | Groundwater–surface water interactions     |
| Catchment water balance         | Soil–plant–atmosphere systems              |
| Reservoir operations and design | Contaminant transport, saltwater intrusion |
| Estimation of design values     | Climate change and WRM studies             |
| Operational forecasting         | Mechanistic process simulation             |

---
### Model Calibration

Calibration adjusts model parameters to match observed data. It is part of steps 2–5 in GMP.
#### Parameter Types

- **Empirical:** statistical or fitting parameters with no physical meaning.
- **Physical:** measurable parameters (e.g. $K_s$, porosity), may be transferred across sites.
- **Hyperparameters:** govern the calibration process itself (e.g. learning rate, step size).

Parameters may be **lumped** (catchment-average) or **distributed** (spatially variable).
#### Classical parameter estimation in hydrosystem modelling
![[Pasted image 20251103180914.png]]

Model calibration is formulated as an **optimization problem**:  
$p_{opt} = \min f(p)$
where $f(p)$ is an **objective function** measuring model performance.

A common criterion is the **Nash–Sutcliffe Efficiency (NSE):**  
$NSE = 1 - \frac{\sum (Q_{obs} - Q_{sim})^2}{\sum (Q_{obs} - \bar{Q}_{obs})^2}$
- $NSE = 1$: Perfect fit.
- $NSE = 0$: The model is only as good as using the mean of the observed data.
- $NSE < 0$: The model is worse than just using the mean.

![[Pasted image 20251103181021.png]]

#### Optimization Methods

- **Manual calibration** – iterative visual adjustment.
- **Automatic methods:**
	- _Gradient-based:_
	    - **Gauss–Newton** – fast near optimum.
	    - **Levenberg–Marquardt** – stable hybrid approach.
	    - **Steepest Descent** – moves along the negative gradient, robust but slow.
	- _Global search:_ Genetic Algorithms, Monte Carlo, Simulated Annealing.
There is a **trade-off** between **robustness** (finding the global optimum) and **efficiency** (computational cost).
---
#### Model Complexity

- **Too simple:** oversimplifies processes → poor realism.
- **Too complex:** overfits → poor predictive performance.

Hence, models should always be “**as simple as possible but as complex as necessary**.”

---
# 💡 Key Takeaways

- Models simplify hydrological reality to predict system behavior.
- Model selection and complexity depend on scale, purpose, and data.
- Calibration links model theory with observed reality.
- Uncertainty quantification (e.g., Monte Carlo) is essential for reliability.
- Machine Learning offers new predictive power but limited interpretability.
- Good Modelling Practice ensures scientific rigor and reproducibility.

---
# 💭 Questions

- Which are the three main stages of runoff generation?
The three stages are **Runoff Formation**, **Runoff Concentration**, and **Flood Propagation**.

- Why are models simplified representations and not exact replications of reality?
Because of the complexity of the representation, by the many parameters and difficult to run the models.

- How does the storage constant $K$ influence hydrograph shape?
$K$ represents the **time scale** of the catchment response. A **small $K$** means a "flashy" response (water drains quickly, steep hydrograph). A **large $K$** means a "buffered" response (water drains slowly, flat/extended hydrograph).

- Why is the Monte Carlo method important in hydrological modelling?
Because allows the randomness of the many input parameters that generate confidence intervals

- What are the main differences between conceptual and physically based models?
Conceptual models use simplified "storage buckets" and empirical relations (grey-box). Physically based models use **Partial Differential Equations (PDEs)** like Richards or Saint-Venant equations to represent fundamental physics (white-box).

---
# 🐢 Definitions

- **Hydrological Model:** Mathematical tool simulating water flow and storage.
- **Storage Constant ($K$):** Time constant determining how quickly a system drains.
- **Monte Carlo Simulation:** Randomized method to assess model uncertainty.
- **Good Modelling Practice (GMP):** Structured approach ensuring model quality.
- **Gradient Method:** Optimization based on the direction of steepest descent of an objective function.
- **Nash–Sutcliffe Efficiency (NSE):** Statistical measure of model performance (1 = perfect fit).
- **Random Forest (RF):** Ensemble machine learning model combining many decision trees.
- **LSTM Network:** Neural network capable of learning temporal dependencies.
---
# 📅 Homework



