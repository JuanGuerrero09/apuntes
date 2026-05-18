
# Introduction to Decision Making and Decision Support Systems

## 1. Core Concepts of Decision Support Systems (DSS)

A Decision Support System is a collection of elements (components) with a certain function designed to support decision-making. It involves three key pillars:

- **Decision:** Choice, decision-maker (DM), and action.
- **Support:** Structuring complex problems, identifying objectives, designing possible options, and understanding consequences in an uncertain future.
- **System:** Components such as databases (e.g., GIS), models, and decision analysis tools.

### 1.1 Types of Decision Studies

Analysis of decision-making is categorized into three types:

1. **Normative Studies:** Focus on how decisions _should_ be made, often using mathematical theories like rational choice or game theory.
2. **Descriptive Studies:** Focus on how decisions _are_ made, predominantly studied by psychologists to understand behavioral patterns.
3. **Prescriptive Studies:** Informed by both normative and descriptive studies, focusing on how decisions can be made _better_ in real life. This is the primary focus of DSS development.

## 2. Formulation of Decision Making Problems

Structuring a problem requires answering three fundamental questions:

1. **What do we want?** (Objectives/Performance Criteria).
2. **How can we achieve it?** (Alternatives/Decision Variables).
3. **What is the available information?** (Links between alternatives and objectives).

### 2.1 Objectives and Criteria

Objectives quantify what is valued by the DM (e.g., economic, environmental, or social). They are usually expressed as minimizing or maximizing certain indicator values (attributes).

### 2.2 Alternatives and Decision Space

- **Alternatives:** The actual choices available to the DM.
- **Decision Space:** The set of all possible alternatives.
- **Decision Variables:** Used to define alternatives mathematically (e.g., volume of water $V_1$ for irrigation vs. $V_2$ for industry).

## 3. Information and Uncertainty

DSS must handle uncertainty in data, representation of alternatives, and future conditions.

### 3.1 Use of Scenarios

Scenarios represent sets of external conditions influencing the choice. The goal is to choose a **robust** alternative that performs consistently well across different scenarios.

### 3.2 Advanced Approaches

- **Decision Scaling:** A 'bottom-up' approach starting with identifying vulnerabilities rather than traditional 'top-down' model projections.
- **Adaptive Pathways:** Designing management actions with "adaptation turning points" to minimize future regret in uncertain long-term planning.    

## 4. Decision Support Methods

### 4.1 Modelling (Simulation)

Used when there are few alternatives. The process involves testing alternatives one-by-one using "what-if" simulations to find the best outcome.

### 4.2 Optimization

Used when there are many or infinite alternatives. It uses an **Objective Function** $F(x_1, x_2, ..., x_n)$ which we aim to maximize or minimize.

- **Feasible Region:** The portion of the decision space where all constraints (e.g., pumping capacity $Q_{min} \le Q \le Q_{max}$) are satisfied.

### 4.3 Multi-Objective Optimization

When multiple competing objectives exist, a single "best" solution often does not exist. Instead, we look for:

- **Pareto Frontier (Efficiency Frontier):** A set of non-dominated solutions where one objective cannot be improved without worsening another.

## 5. Multi-Attribute Decision Methods (MADM)

Used when the number of alternatives is finite and discrete, and objectives are defined by diverse attributes.

### 5.1 Decision Matrix

A formal representation where rows are alternatives $(A_i)$ and columns are attributes $(X_j)$. Each entry $y_{ij}$ represents performance.

### 5.2 Value Functions (MAVT)

Multiple Attribute Value Theory (MAVT) converts different units (e.g., hectares, meters) into a common value scale [0, 1].

- **Equation:** $v = f(\text{attribute value})$.

### 5.3 Normalization Methods

If value functions aren't used, the decision matrix must be normalized to a common scale:

|**Method**|**Maximization**|**Minimization**|
|---|---|---|
|**Proportional Linear**|$y_{ij}^* = \frac{y_{ij}}{y_j^{max}}$|$y_{ij}^* = 1 - \frac{y_{ij}}{y_j^{max}}$|
|**Score-Range**|$y_{ij}^* = \frac{y_{ij} - y_j^{min}}{y_j^{max} - y_j^{min}}$|$y_{ij}^* = \frac{y_j^{max} - y_{ij}}{y_j^{max} - y_j^{min}}$|
|**Vector**|$y_{ij}^* = \frac{y_{ij}}{\sqrt{\sum_{i=1}^n (y_{ij})^2}}$|(Same formula, criteria type unchanged)|

### 5.4 Simple Additive Weighting (SAW)

The most common MADM method. The total outcome $\Phi_i$ for alternative $i$ is:

$$\Phi_i = \sum_{j=1}^n w_j y_{ij}^* $$

### 5.5 TOPSIS

Technique for Order Preference by Similarity to Ideal Solution. It identifies the alternative closest to the **Positive Ideal Solution** ($A^+$) and furthest from the **Negative Ideal Solution** ($A^-$).

- **Separation Measure (Euclidean distance):**
$$S_i^+ = \sqrt{\sum_{j=1}^m (v_{ij} - v_j^+)^2} \text{ and } S_i^- = \sqrt{\sum_{j=1}^m (v_{ij} - v_j^-)^2} \text{ [cite: 2260]}$$

- **Relative Closeness:**
$$D_i = \frac{S_i^-}{S_i^+ + S_i^-} \text{ [cite: 2260]}$$

    (An alternative with $D_i$ closer to 1 is better) .


## 6. Group Decision Making and Conflict

In group contexts, 'fairness' is the key issue.

### 6.1 Voting Rules

- **Borda Rule:** A ranking procedure where points are assigned to alternatives based on their rank by different DMs.

### 6.2 Game Theory

Used to understand conflicts between rational agents.

- **Prisoner's Dilemma:** A model showing that individual rational behavior (defection) can lead to an outcome inferior to mutual cooperation.

## 7. DSS Architecture

DSS for water and environment are developed for different levels:

1. **Operational Level:** Specialized users (operators), focus on real-time data and fast response models.

2. **Management Level:** Broader expertise, requires stakeholder involvement and detailed physical/socio-economic models.

3. **Planning / Policy Level:** Crucial stakeholder involvement, distilled data for long-term evaluation and negotiations.



### Analytical 

Read article and try to describe in a couple of pages 

. No matter which system is targeted by a given project the
analytical description should identify the key system
components:
- System boundaries
- System elements and structure (state variables and
parameters)
- Inputs, Outputs
- Actions / decisions (control / decision variables)
- Objective / value functions

Assignment:

Identify a case study from literature water-related project and do the analystical description of system components


# Optimization and Simulation

Screening: Large number of alternatives, eliminate a large number of bad alternatives

Optimization methods:
- Known alanytical function - calculus based
- Known linear function - linear programming
- Dynamic programming
- Flobal optimization (Genetic algorithms)
- Model-based optimization







# Systems Analysis in Water Resources

This topic explores the application of systems analysis methodologies to water resources management, focusing on the central role of mathematical modelling and the shift from simple simulation to advanced decision support and optimization.

## 1. Introduction to Systems Analysis

Systems analysis is a general methodology for analyzing complex systems. It uses mathematical models to study individual components and their interactions to achieve specific system goals.

- **Water Resources:** In this context, the subject addresses total available water resources in a given system (e.g., river basin, aquifer, coastal zone, or city), accounting for all individual components and their properties.
    
- **Hydroinformatics:** Systems analysis is closely related to hydroinformatics, which applies modelling, information technology (ICT), and computer sciences to aquatic environment problems for proper management.
    
- **Modelling Centrality:** Modelling is the core element of both hydroinformatics and systems analysis.
    

---

## 2. Defining Models and Systems

### 2.1 What is a Model?

There are several ways to define a model depending on the professional context:

- **General Definition:** A simplified representation of reality.
    
- **Natural Systems View:** A simplified representation of a natural system.
    
- **Engineering View:** A system that converts a specific input (geometry, boundary conditions, force, etc.) into an output (flow rates, levels, pressures, etc.) to be used in design and operation.
    
- **Mathematical View:** A goal-oriented, simplified mathematical description of a system—specifically a time-varying entity of interest separated from its environment.
    

### 2.2 What is a System?

A system is defined as a collection of interconnected elements that has a certain purpose or goal.

- **Key Characteristics:**
    
    - It contains multiple elements, objects, or components.
        
    - The elements must be interconnected in a specific way.
        
    - It must have a clear purpose or goal.
        
- **Note:** A collection of parts is not a system if they are not interconnected to serve a purpose. A pile of bicycle parts is not a system; a functioning bicycle is.
    

---

## 3. Identification of Natural Systems

Identifying a system within a natural environment is not immediate; it requires abstraction and conceptualization.

### 3.1 Abstraction and Conceptualization

- **Abstraction:** The process of establishing system boundaries and selecting only the elements relevant to the functioning of the system.
    
- **Conceptualization:** Representing the elements and their interconnections so that the purpose of the system is captured.
    
- **Catchment Example:** * **Abstraction:** Defining the physical boundaries of the catchment and identifying elements like surface runoff, sub-surface runoff, and river runoff.
    
    - **Conceptualization:** Modelling the catchment as a set of interconnected reservoirs that receive rainfall and transform it into runoff.
        

### 3.2 Subjectivity and Observer Knowledge

One entity can be viewed as different systems by different people depending on their identified goals and professional background.

- **Hydrologist:** Views a catchment as a system for transforming rainfall into runoff.
    
- **Ecologist:** Views the same catchment as a support system for terrestrial and aquatic ecosystems.
    
- **Social Geographer:** Views it as a system for enabling the development of settlements and socio-economic activities.
    

---

## 4. The Mathematical 'Making' of a System

The mathematical formulation of a system starts with observations of a subset of the real world.

### 4.1 State Variables and Equations

- **States ($\Omega$):** The observed subset can exist in different states: $\Omega = \{\omega_1, \omega_2, ...\}$.
    
- **Observables ($f$):** We describe these states using variables (categorical or numerical) called **state variables**.
    
- **Natural System ($N$):** Defined as an abstract state space together with its describing observables: $N = \{\Omega, f_1, f_2, ..., f_n\}$.
    
- **Equation of State:** Relationships between these observables are captured in the equation of state: $F_i(f_1, f_2, ..., f_n) = 0$ for $i = 1, 2, ..., m$.
    

### 4.2 Parameters, Inputs, and Outputs

- **Parameters ($\theta$):** Observables that are invariable and fixed for every state.
    
- **Inputs ($I$) and Outputs ($O$):** We assume one set of observables can be represented as a function of another set.
    
- **Transformation Function ($F$):** The equation of state is rewritten as a transformation function where the system structure $S$ (composed of internal variables $X$ and parameters $\theta$) transforms inputs into outputs:
    
    $$O = F(S, I)$$
    

---

## 5. Models as System Representations

### 5.1 Components of Representation

- **Structure ($S$):** Represents system elements and their interconnections. It consists of:
    
    - **State Variables ($X$):** A vector of variables describing the internal states of system elements.
        
    - **Parameters ($\theta$):** A vector of constants used in the equations for interconnections.
        
- **Transformation Function ($F$):** Represents the actual physical or chemical processes of transforming inputs into outputs through the system structure.
    

### 5.2 Example: River System Model

- **System:** The river channel including all hydraulic structures.
    
- **Inputs:** Boundary conditions such as upstream inflow hydrographs and downstream water levels.
    
- **Structure:** Geometry of the channel (cross-sections), position of structures, and hydraulic parameters like roughness coefficients.
    
- **Processes:** Open channel flow represented by governing equations, such as the Saint-Venant equations:
    
    $$\frac{\partial A}{\partial t} + \frac{\partial Q}{\partial x} = q_l$$
    
    $$\frac{\partial Q}{\partial t} + \frac{\partial}{\partial x}\left(\frac{Q^2}{A}\right) + gA\frac{\partial h}{\partial x} - gA(S_o - S_f) = 0$$
    

---

## 6. Truthfulness in Model Representation

Models are classified by the depth and explicitness of their structural representation.

|**Model Type**|**Description**|**Key Features**|
|---|---|---|
|**Physically-based ('White' box)**|Based on explicit physical processes and governing equations.|High representativeness; enables modelling structural changes; high complexity.|
|**Conceptual ('Grey' box)**|Limited representation, often using simplified "stocks and flows" (e.g., reservoirs).|Common for catchment/environmental models; limited ability to model structural changes.|
|**Data-driven ('Black' box)**|Based purely on statistics and data patterns; no internal structure represented.|Created entirely from data (e.g., $Y = aX$); can only model changes in inputs, not system properties.|

---

## 7. Modelling Purpose and Existing Systems

### 7.1 Three Main Modelling Purposes

1. **System Identification:** Focuses on understanding the system structure and processes ($S=?$ and $F=?$).
    
2. **System Prediction:** Focuses on predicting future system outputs ($O=?$).
    
3. **System Detection:** Focuses on identifying or reconstructing system inputs ($I=?$).
    

### 7.2 Professional Modelling Software

Specialized software often has the abstraction and conceptualization pre-built:

- **Groundwater:** MODFLOW (layers, hydraulic conductivity).
    
- **River Systems:** MIKE11, SOBEK, HEC-RAS (cross-sections, gates, spillways).
    
- **Rainfall-Runoff:** HEC-HMS (reservoirs representing hydrological cycle components).
    
- **Water Supply:** EPANET (pipes, nodes, pumps).
    
- **Water Allocation:** RIBASIM, WEAP (links and nodes for water balance and priorities).
    

---

## 8. Decision Support and Optimization

### 8.1 Objective and Value Functions

When a model is used for decision support, we add an **objective function** or **value function** ($OF$) to evaluate performance.

- **General Form:** $OF = f(X, O, \lambda)$ where $\lambda$ are additional parameters.
    
- An **Action ($a$)** targets the system structure (changing $X$ or $\theta$) or inputs ($I$) to optimize this function.
    

### 8.2 Types of Decisions

- **Design Decisions:** Usually one-off (e.g., dam location, pipe diameter).
    
- **Operational Decisions:** Usually repeated (e.g., reservoir release schedules, pump scheduling).
    
- **Sequential Decisions:** Decisions made in sequences over space and time.
    

---

## 9. Water Resources Systems (WRS) Framework

A Water Resources System is defined by three interlinked systems:

1. **Natural System:** The physical environment providing the resources (rivers, aquifers).
    
2. **Socio-economic System:** Defines the functions and uses (water supply, industry, irrigation).
    
3. **Administrative-Institutional System:** Manages the resource and handles decision-making.
    

### 9.1 Uncertainty

Uncertainty affects every part of the analysis:

- **Environment:** Uncertain rainfall or inflows.
    
- **Model:** Incorrect structure or parameter measurement errors.
    
- **Objective Function:** Incorrect cost-benefit coefficients or targets.
    
- **Decision:** Implementation errors or misunderstandings.
    

---

## 10. Advanced Optimization for Decision Support

Optimization is an automated procedure used to discover the best alternative when the number of choices is too high for manual simulation.

### 10.1 Optimization vs. Simulation

- **Simulation:** Tests alternatives one by one. This is computationally expensive; testing 20 binary decision variables with 5-minute runs would take 10 years ($2^{20}$ runs).
    
- **Optimization:** Uses mathematical algorithms to search the **Decision Space** efficiently.
    
- **Combined Approach:** Use optimization first for "screening" many alternatives, then use complex simulation for final detailed testing of the best ones.
    

### 10.2 Basic Optimization Concepts

- **Feasible Region:** The part of the decision space where all constraints (e.g., pumping limits $Q_{min} \le Q \le Q_{max}$) are satisfied.
    
- **Objective Function:** The mathematical expression $F(x_1, x_2, ..., x_n)$ that the user wants to maximize or minimize.
    

### 10.3 Optimization Methods

- **Calculus-based:** Finds extreme points (minima/maxima) using derivatives. Works only for continuous and differentiable analytical functions.
    
- **Linear Programming (LP):** Used when the objective and all constraints are linear.
    
    - **Corner Point Feasible (CPF):** The optimal solution is always at a "corner" of the feasible region, allowing the search to be much faster.
        
- **Dynamic Programming:** Solves problems by breaking them into stages, states, and decisions (optimal path through a network).
    
- **Multi-objective Optimization:** Finds the **Pareto Frontier**—a set of efficient solutions where one objective cannot be improved without making another worse.


Tasks:

Lingo model with:
- No limit for available water
- Available water limited to 6, 10 and 15

Dynamic programming

Stages - users
States - available water
Decisions - actual alocations

Q = 6
X1 less 2
X2 less 2
X3 between 3 and 5

NB1 = 6X-X^2
NB2 = 7X^2 -1.5X^2
NB3 = 8Z - 0.5Z^2

PROGRAMAR ESTA MONDÁ

en cada paso saca 3 nodos
