---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-15
Last Modified: Wednesday 15th October 2025 09:09
Professor: Prof- Dr. -Ing Bernhard Vowinckel
email: bernhard.vowinckel@tu-dresden.de
tags:
  - numericalmethods
  - hydroscience
  - coding
---
# 👨🏽‍🏫Professor


# 📖Summary


# 🕸️Resources and Relevant Links
*Credits*: 5 ECTS
### Examination
#### Problems
- _Homework 1_: hand-in: 23.11.25 | handout: 
- _Homework 2_: hand-in: 23.11.25 | handout: 
- _Homework 3_: hand-in: 23.11.25 | handout: 

# 📚Notes
## Introduction

### 🌊 Transport Processes in the Environment

> “Everything flows.” — Heraclitus

Transport processes describe the **movement of mass, energy, or momentum** within a system.  
They are **multiphysics problems**, often involving interactions between:

- **Fluid dynamics** (e.g., flow of water or air)
- **Thermodynamics** (heat exchange)
- **Solid mechanics** (deformation and stress)
- **Chemistry** (reactions and solute transport)
- **Biology** (biochemical reactions, microbial transport)
---
#### 💧 Porous Media Flow

Water flows through **porous media** (e.g., soil, sand, aquifers) due to a **pressure gradient**.  
This process is described by **Darcy’s law**, a fundamental PDE in hydrology.

---
#### 🪨 Sediment Transport

The **movement of sediments** is governed by hydraulic forces and the properties of the particles.  
Modes of sediment transport include:

- **Bed load transport** – particles roll or slide along the bed.
- **Suspension** – particles are carried within the flow.
- **Pyroclastic flow** – high-temperature, high-density mixtures of particles and gases.
- **Mudslides and debris flows** – non-Newtonian, gravity-driven flows.

---

### 📈 Derivatives and Differential Equations
A **derivative** expresses a **rate of change** — how a quantity varies in time or space.

A **differential equation (DE)** relates one or more **unknown functions** and their **derivatives**.  
These equations express **physical laws** such as conservation of mass, momentum, and energy.

---
#### 🔹 Ordinary Differential Equations (ODEs)

An **ODE** involves derivatives with respect to a **single variable**, typically **time ($t$)**.

General form:
$$\frac{dy}{dt}​=f(y,t)$$
Examples:
- Population growth
- Motion of a particle under a force
- Radioactive decay

**Categories of ODEs:**
- **Homogeneous / Inhomogeneous**
- **Explicit / Implicit**
- **Linear / Nonlinear**

---
#### 🔹 Partial Differential Equations (PDEs)
A **PDE** involves partial derivatives with respect to **multiple variables**, usually **space ($x, y, z$)** and **time ($t$)**.

Examples include:
- **Darcy’s law** (groundwater flow)
- **Heat equation** (thermal conduction)
- **Wave equation** (vibration and sound)
- **Advection–diffusion equation** (solute transport)

Short-hand notations are often used:

- **Vectorial form**
- **Einstein summation notation**

---
### ⚖️ Conservation of Matter (2D Example)

Consider a **control volume** through which matter flows.

The flux $J_\phi$ of a quantity $\phi$ across an area element $dA$ is:
$$J_\phi = \phi_u \, dA$$
The **rate of change of $\phi$** within the control volume is related to the **net flux** entering or leaving the boundaries.

---
### 🌊 The Wave Equation

Describes the **propagation of waves** (acoustic, elastic, surface) in a medium.
$$\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}$$
where:

- $u(x,t)$ is the displacement,
- $c$ is the wave speed.

It is a **hyperbolic PDE**, meaning information travels at a **finite speed** in both directions.

> This will be the first exercise in the course.

---

### 💨 Transport by Diffusion

#### Fick’s First Law

Describes the **flux of particles** moving from regions of high to low concentration:
$$J = -D \frac{\partial C}{\partial x}$$
where:

- $J$ = flux [mol·m⁻²·s⁻¹],
- $D$ = diffusion coefficient [m²·s⁻¹],
- $\frac{\partial C}{\partial x}$ = concentration gradient.

---

#### Fick’s Second Law

Describes the **temporal evolution** of concentration due to diffusion:
$$\frac{\partial C}{\partial t} = D \frac{\partial^2 C}{\partial x^2}$$
This is a **parabolic PDE** representing **mass conservation** for diffusive transport.

---

### 🌬️ Advection–Diffusion–Transport Equation

Combines **advection** (bulk motion) and **diffusion** (molecular spreading):
$$\frac{\partial C}{\partial t} + \vec{v} \cdot \nabla C = D \nabla^2 C$$
- The term $\vec{v} \cdot \nabla C$ represents **advective transport**.
- The term $D \nabla^2 C$ represents **diffusive spreading**.
- Together, they describe **solute transport in flowing water**, **heat transfer**, or **pollutant dispersion**.

---

### 🧩 Types of PDEs

|Type|Information Propagation|Example|Typical Process|
|---|---|---|---|
|**Hyperbolic**|Finite speed in two directions|Wave equation|Vibrations, sound waves|
|**Parabolic**|One-directional in time|Heat or diffusion equation|Diffusion, unsteady flow|
|**Elliptic**|No specific direction (steady state)|Laplace equation|Potential flow, equilibrium|

Selecting the **appropriate numerical method** depends strongly on the PDE type.

---

### ✅ Well-Posed Problems

A **well-posed problem** satisfies three conditions:

1. A **solution exists**.
2. The **solution is unique**.
3. The **solution changes continuously** with the initial or boundary conditions.

If any of these are not fulfilled, the problem is **ill-posed**, making it unstable or non-physical for numerical simulation.

## Basics of Discretization – Part 1: Space Discretization

### Learning Objective

After this lecture, you should understand how to:

- Translate a **physical problem** into a **mathematical model** (PDE).
- Choose appropriate **discretization methods** and **boundary conditions**.
- Recognize how discretization introduces **numerical errors** (e.g. diffusion).

---

### Problem Statement

Before solving a PDE, always define the **physical nature of the problem**:

- **Assumptions:** rarefied or continuum, steady or unsteady, viscous or inviscid, compressible or incompressible, 1D–3D.
- **Relevant physics:** Is the process dominated by **diffusion**, **advection**, or **gravity**?

---

### Typical Example: Advection–Diffusion–Transport Equation

A common form is the **unsteady heat transfer equation**, describing temperature $T = f(x, y, z, t, u, v, w)$ as it varies with space and time:

$$\frac{\partial T}{\partial t} + \frac{\partial (T u_i)}{\partial x_i} = D_s \frac{\partial^2 T}{\partial x_i^2}$$

Here:
- $T$: temperature field
- $u_i$: velocity components ($u, v, w$)
- $D_s$: diffusion coefficient

> The goal is to determine $T(x, y, z, t)$ given known boundary and initial conditions.

We often assume:

- Isotropic and constant diffusion ($D_s =$ const)
- Two-dimensional flow ($i = 1, 2$)

Since continuous derivatives cannot be computed numerically, we need **algebraic approximations** — derived using **Taylor series expansion**.

---
### Taylor Series Expansion and Finite Differences

![[Pasted image 20251104121528.png]]

The **Taylor series expansion** approximates a smooth function $f(x)$ near a point as an infinite sum of derivatives at that point:

$$
f(x+\Delta x) = f(x) + \frac{1}{1!} \frac{df(x)}{dx}(\Delta x) + \frac{1}{2!}\frac{d^2f(x)}{dx^2}(\Delta x)^2 + \frac{1}{3!}\frac{d^3f(x)}{dx^3}(\Delta x)^3 + \; ...
$$

In compact form:

$$
f(x+Δx) = \sum_{n=0}^{\infty}\frac{f^{(n)}(x)}{n!}(\Delta x)^n
$$
> In practice, we truncate this expansion after a few terms to derive **finite difference approximations**.

---
### Finite Difference Schemes

Let’s approximate the differential equation:

$$
a\frac{df}{dx} + b\frac{d^2f}{dx^2} = cf
$$
We replace derivatives with **algebraic expressions** obtained from Taylor expansions.

---

### 🔹 Forward Difference (Euler Forward)

We approximate the derivative at $x$ using the function value one step forward at $x + \Delta x$.

From Taylor’s expansion:
$$
f(x+\Delta x) = f(x) + f'(x)\Delta x + \frac{f''(x)}{2}(\Delta x)^2 + \frac{f^{(3)}(x)}{6}(\Delta x)^3 + \mathcal{O}((\Delta x)^4) + \; ...
$$
Rearranging to isolate $f'(x)$:

$$f'(x) = \frac{f(x+\Delta x) - f(x)}{\Delta x} - \frac{f''(x)}{2}\Delta x - \frac{f^{(3)}(x)}{6}(\Delta x)^2 + \mathcal{O}((\Delta x)^3)$$

The first term gives the **forward difference approximation**:
$$\frac{df}{dx} \approx \frac{f(x+\Delta x) - f(x)}{\Delta x}$$
This method has a **local truncation error** of $O(\Delta x)$ → it is **first-order accurate**.

In discrete notation ($x_i = i\Delta x$):

$$\frac{df}{dx}|_{x_i} \approx \frac{f_{i+1} - f_i}{\Delta x}$$

---
#### 🔹 Higher-order forward scheme

For greater accuracy (using more nodes):
$$\frac{df}{dx}|_{x_i} \approx \frac{-3f_i + 4f_{i+1} - f_{i+2}}{2\Delta x}$$
This is **second-order accurate** and derived by combining multiple Taylor expansions to cancel first-order terms.

---
#### 🔹 Time derivative – Forward Euler

For a temporal derivative:
$$\frac{\partial u}{\partial t} \approx \frac{u^{n+1} - u^n}{\Delta t}$$
It is the **temporal analog** of the forward difference, with an error of $O(\Delta t)$.

---

### 🔹 Backward Difference (Euler Backward)

Expanding around $x - \Delta x$:
$$f(x-\Delta x) = f(x) - f'(x)\Delta x + \frac{f''(x)}{2}(\Delta x)^2 - \frac{f^{(3)}(x)}{6}(\Delta x)^3 + ...$$
Rearranging:
$$f'(x) = \frac{f(x) - f(x - \Delta x)}{\Delta x} + \mathcal{O}(\Delta x)$$
In discrete notation:
$$\frac{df}{dx}|_{x_i} \approx \frac{f_i - f_{i-1}}{\Delta x}$$
This is also **first-order accurate**, often used in **implicit schemes** (numerically stable for stiff problems).

---

### 🔹 Central Difference (Second Order)

Combining forward and backward expansions to cancel first-order errors:
$$\frac{df}{dx} \approx \frac{f(x+\Delta x) - f(x-\Delta x)}{2\Delta x}+ O(\Delta x)^2$$
Error term: $O(\Delta x^2)$ → **second-order accuracy**.  
If $\Delta x$ is halved, the error decreases by a factor of four.

---
### 🔹 Second Derivative (Central Difference)

Adding forward and backward expansions gives:
$$

f(x+ \Delta x) - f(x- \Delta x) = 2f(x)+\frac{d^2f(x)}{dx^2}(\Delta x)^2+....

$$
$$\frac{d^2f}{dx^2} \approx \frac{f(x+\Delta x) - 2f(x) + f(x-\Delta x)}{\Delta x^2}$$
This is the most common formula for **diffusion and Poisson equations**.

### 🔹 Numerical Diffusion

Finite discretization smoothens steep gradients — this is known as **numerical diffusion**.  
The truncation error $O(\Delta x^q)$ behaves like an artificial diffusion term, especially in advection problems.

![[Pasted image 20251029102358.png]]

---
### 🔹 Comparison of Finite Difference Schemes

| Scheme            | Formula                                        | Order | Accuracy              | Typical Use                    |
| ----------------- | ---------------------------------------------- | ----- | --------------------- | ------------------------------ |
| Forward           | $\frac{f_{i+1}-f_i}{\Delta x}$                 | 1     | Simple, less accurate | Time stepping, boundaries      |
| Backward          | $\frac{f_i-f_{i-1}}{\Delta x}$                 | 1     | Stable (implicit)     | Stiff PDEs                     |
| Central           | $\frac{f_{i+1}-f_{i-1}}{2\Delta x}$            | 2     | More accurate         | Interior nodes                 |
| 2nd-Order Forward | $\frac{-3f_i + 4f_{i+1} - f_{i+2}}{2\Delta x}$ | 2     | One-sided, accurate   | Boundaries with missing points |

---
#### Boundary Conditions
When a PDE is discretized, a **continuous physical domain** is converted into a **finite numerical grid** composed of discrete nodes.  
To make the resulting algebraic system solvable, **boundary conditions (BCs)** must be specified. These conditions define how the variable of interest behaves at the domain limits and determine the interaction between the model and its surroundings.

Without boundary conditions, the system is **underdetermined**, meaning there are more unknowns than equations.  
Physically, BCs represent external influences such as fixed temperatures, impermeable walls, or periodic repetitions of the system.

#### Importance of Boundary Conditions

Discretization replaces derivatives with finite differences involving neighboring nodes.  
At the boundaries, some neighboring nodes lie outside the computational domain, creating undefined terms.  
Boundary conditions provide the necessary relationships to close the system, ensuring both **numerical solvability** and **physical **consistency**.

---

#### 🔹 Dirichlet Boundary Condition (Fixed Value)

A **Dirichlet boundary condition** prescribes a **constant value** of the dependent variable at the boundary:
$$y(x) = f(x), \quad \forall x \in \partial \Omega$$
where $\partial \Omega$ denotes the domain boundary.

**Examples:**

- Fluid flow: no-slip wall → $u = 0$
- Heat transfer: wall with constant temperature → $T = T_0$
- Groundwater flow: fixed hydraulic head → $h = h_0$

![[Pasted image 20251029103201.png]]

**Numerical implementation:**  
The variable is directly set at the boundary node, e.g. $y_0 = f(x_0)$ or $y_N = f(x_N)$, and remains constant during the simulation.

**Physical meaning:**  
The Dirichlet condition imposes a **known state** on the system, representing perfect control or equilibrium with a fixed external environment.

---
#### 🔹 Neumann Boundary Condition (Fixed Gradient)
A **Neumann boundary condition** prescribes the **derivative** (flux or gradient) of the variable normal to the boundary:
$$\frac{\partial y}{\partial n}(x) = \frac{y_{i+1} - y_{i-1}}{2\Delta x} = f(x), \quad \forall x \in \partial \Omega$$
where $\frac{\partial y}{\partial n}$ is the derivative in the direction normal to the boundary.

**Examples:**
- Heat transfer: insulated wall → $\frac{\partial T}{\partial n} = 0$
- Fluid mechanics: free-shear surface → $\frac{\partial u}{\partial n} = 0$
- Groundwater: impermeable boundary → $\frac{\partial h}{\partial n} = 0$

![[Pasted image 20251029102731.png]]

**Numerical implementation:**  
The gradient is approximated using **ghost nodes** located just outside the physical domain.  
For a zero-gradient (no-flux) condition at the left boundary:
$$\frac{y_1 - y_{-1}}{2\Delta x} = 0 \quad \Rightarrow \quad y_{-1} = y_1$$
The ghost node reproduces the interior value, maintaining a constant gradient.

**Physical meaning:**  
The Neumann condition controls the **flux** rather than the state of the variable, representing insulated or impermeable boundaries.

---
#### 🔹 Periodic Boundary Condition

A **periodic boundary condition** connects the opposite boundaries of the computational domain, implying that the system repeats spatially:
$$y(0) = y(L), \quad \text{and} \quad \frac{\partial y}{\partial x}(0) = \frac{\partial y}{\partial x}(L)$$
**Examples:**
- Channel or pipe flow with repeating geometry
- Atmospheric or oceanic models with cyclic domains
- Turbulent flow simulations using a representative unit cell

![[Pasted image 20251029103247.png]]

**Numerical implementation:**  
The first and last grid nodes are linked so that $y_0 = y_N$, and their derivatives are computed cyclically.  
This configuration allows the numerical solution to “wrap around” seamlessly.

**Physical meaning:**  
Periodic boundaries represent **spatial repetition** and are used when the process is homogeneous and statistically stationary within the domain.

---
#### 🔹 Impact on Numerical Solutions

The type of boundary condition directly affects:

1. **Stability** – Dirichlet conditions tend to stabilize explicit schemes; Neumann conditions may require implicit integration.
2. **Physical realism** – For example, an insulated wall (Neumann) preserves heat, while a fixed-temperature wall (Dirichlet) allows heat exchange.
3. **Conservation** – Inconsistent boundary treatments may violate mass, energy, or momentum conservation.
4. **Symmetry and domain reduction** – Periodic conditions enable modeling of infinite or repetitive systems using small representative volumes.

---
#### Summary Boundary Conditions

|Boundary Type|Fixed Quantity|Common Applications|Physical Interpretation|
|:--|:--|:--|:--|
|**Dirichlet**|Variable value $y=f(x)$|Fixed temperature, head, velocity|Fixed state (controlled condition)|
|**Neumann**|Gradient $\partial y/\partial n$|Insulated or impermeable surfaces|Controlled flux|
|**Periodic**|Value and gradient continuity|Channel, cyclic flow, homogeneous domain|Repetition in space|

---
## Basics OF Discretization - Part II: Time Discretization

Time discretization transforms a **differential equation** into a **sequence of algebraic updates** by replacing the time derivative with a finite difference.  
This allows step-by-step computation of the variable’s evolution in time, often combined with spatial discretization.

### General time derivative

For a quantity $f(t)$, the time derivative can be approximated as:
$$f' = \frac{f(t^{k+1}) - f({t^k})}{\Delta t}$$
where:

- $f(t^{k})$ = value at time step $t^k$
- $\Delta t$ = time step size
- $f'$ = rate of change of $f$

Different **integration schemes** arise from evaluating the derivative at different time levels.

---
### Explicit Time Integration

**Explicit methods** estimate the new value using only known quantities from the current time step:
$$f(t^{k+1}) = f({t^k}) + \Delta t \, f'(t^k)$$
This corresponds to the **Euler forward method**, which is **first-order accurate** in time.

- Direct computation (no iteration needed).
- Easy to implement but conditionally stable — requires small $\Delta t$ for numerical stability.
- Stability often limited by the **CFL (Courant–Friedrichs–Lewy)** criterion.

**Example applications:**  
Transient heat conduction, simple advection–diffusion problems where computational efficiency is prioritized over accuracy.

---

### Implicit Time Integration

**Implicit methods** estimate the derivative using the unknown future value:

$$f(t^{k+1}) = f(t^k) + \Delta t \, f'(t^{k+1})$$

This corresponds to the **Euler backward method**, also **first-order accurate** but **unconditionally stable**.

- Requires solving an algebraic equation system at each time step.
- More computationally expensive but allows larger $\Delta t$.
- Particularly useful for stiff systems such as diffusion-dominated problems.
---
#### Forward Time – Centered Space (FTCS)

This corresponds to the **Euler backward method**, also **first-order accurate** but **unconditionally stable**.

- Requires solving an algebraic equation system at each time step.
- More computationally expensive but allows larger $\Delta t$.
- Particularly useful for stiff systems such as diffusion-dominated problems.

Example: one-dimensional diffusion equation
$$
\frac{\partial\phi}{\partial t}= D \frac{\partial^2\phi}{\partial x^2}
$$
Discretized form:

$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k}{\Delta x^2}
$$
Rearranged update formula:
$$
\phi_i^{k+1} = \phi_i^k+\frac{D \Delta t}{\Delta x^2}(\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k)
$$
The **term $\frac{D \Delta t}{\Delta x^2}$** controls the stability of the scheme; if it becomes too large, oscillations and divergence occur.  
For stability, this term must typically be **≤ 0.5**.
![[Pasted image 20251030170022.png]]
#### Backward Time – Centered Space (BTCS)

The BTCS scheme uses:

- **Backward Euler** in time (implicit), and
- **Central differences** in space.
$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}
$$
Rearranging terms gives:
$$
(1 + 2\frac{D\Delta t}{\Delta x^2})\phi_i^{k+1}-\frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i-1}- \frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i+1} = \phi^k_i
$$
This equation represents a **system of linear equations** in $\phi^{k+1}$, typically solved using matrix methods (e.g., Gauss–Seidel, LU decomposition).

**Properties:**
- Unconditionally stable.
- More computational effort per step.
- First-order accurate in time, second-order in space

![[Pasted image 20251030170650.png]]

---
### Crank–Nicolson Method (CTCS)

The Crank–Nicolson scheme is a **semi-implicit** (or **second-order accurate**) method that averages FTCS and BTCS.

$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{1}{2}( \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}+\frac{\phi_{i+1}^{k} - 2\phi_{i}^{k} + \phi_{i-1}^{k}}{\Delta x^2})
$$
The resulting algebraic form combines both present and future states, making it **unconditionally stable** and **second-order accurate** in both space and time.

This method is widely used for **heat diffusion**, **groundwater flow**, and **consolidation problems**.
![[Pasted image 20251104150314.png]]

![[Pasted image 20251030171151.png]]

---
### Higher-Order Time Integration Schemes

### Multipoint (Adams–Bashforth) Methods

Use information from multiple previous time steps to predict the next one:
$$f^{(k+1)} = f^{(k)} + \Delta t \sum_{j=0}^{m} a_j f'(t^{k-j})$$
These schemes increase accuracy but require **more memory** and **previous values**.  
Commonly used in long-term environmental simulations.

---

### Runge–Kutta Methods

Runge–Kutta (RK) methods estimate intermediate slopes to improve the accuracy of time integration.

Example: **Second-order RK (Heun’s method)**
$$\begin{aligned} k_1 &= f(t^k, y^k) \\ k_2 &= f(t^k + \Delta t, y^k + \Delta t \, k_1) \\ y^{k+1} &= y^k + \frac{\Delta t}{2}(k_1 + k_2) \end{aligned}$$
RK schemes are widely used for their **high accuracy** and **stability**, especially in nonlinear systems.

---
### Numerical Properties

#### Initial Conditions
Each time-dependent PDE requires an initial condition to start the integration.  
Physically, the initial condition defines the **state of the system at $t=0$**.

A well-posed model ensures that the influence of the initial condition decays over time, and the solution converges toward a physically meaningful state.

---
#### Consistency

A scheme is **consistent** if the truncation errors ($O(\Delta t)^q$ and $O(\Delta x)^q$) vanish as $\Delta t \to 0$ and $\Delta x \to 0$.  
Consistency determines how accurately the discrete equation approximates the continuous PDE.

---
#### Stability

A numerical scheme is **stable** if errors (from rounding or truncation) do not grow with time.  
The **Von Neumann stability analysis** is used to determine whether the error amplifies.  
For explicit schemes, stability is usually governed by the **CFL (Courant–Friedrichs–Lewy)** criterion:
$$\text{CFL} = \frac{u \Delta t}{\Delta x} \leq 1$$
---
#### Convergence

A scheme is **convergent** if, as $\Delta t$ and $\Delta x$ approach zero, the numerical solution approaches the exact analytical solution.  
According to the **Lax equivalence theorem**, a scheme that is both consistent and stable is also convergent.

---

#### Conservation and Boundedness

A physically meaningful scheme must satisfy:

- **Conservation:** mass, momentum, and energy are not artificially created or lost.
- **Boundedness:** the variable remains within realistic limits (e.g., no negative density or temperature).

---

### Algebraic Equation System

Implicit schemes lead to **algebraic systems** of the form:
$$\mathbf{A}\phi^{k+1} = \mathbf{b}$$
where:

- $\mathbf{A}$ = coefficient matrix (depends on discretization)
- $\phi^{k+1}$ = unknown vector at the next time step
- $\mathbf{b}$ = known vector from the current time step

Solving this system is the computational core of implicit time integration.

---
#### Discretization into Algebraic Form

When applying finite difference or finite volume methods, each computational cell exchanges information with its neighboring cells (N, S, E, W).  
This yields, for each node $p$:
$$A_P \, \phi_P + \sum_L A_L \, \phi_L = Q_P$$
$A_P​$: coefficient associated with the current cell (local change)
$A_L$: coefficients associated with neighboring cells (exchange)  
$Q_P$: known term (sources, previous time step, or boundary conditions)

Each grid node generates one algebraic equation, forming a **sparse linear system**:

$$\mathbf{A}\phi = \mathbf{Q}$$
This structure is the basis of most **implicit schemes** and can be solved by direct or iterative solvers.

---

##### 1D Example (BTCS Scheme)

For a 1D diffusion equation:
$$\frac{\partial \phi}{\partial t} = D \frac{\partial^2 \phi}{\partial x^2}$$
Applying BTCS with central differences gives:

$$\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t} = D \frac{\phi_{i+1}^{k+1} - 2\phi_i^{k+1} + \phi_{i-1}^{k+1}}{\Delta x^2}$$

Coefficients:

$A_P = 1 + 2 \frac{D \Delta t}{\Delta x^2}$
$A_W = A_E = - \frac{D \Delta t}{\Delta x^2}$
$Q_i = \phi_i^k$

Resulting matrix (tridiagonal form):

$$\begin{bmatrix} A_P & A_E & 0 & \cdots \\ A_W & A_P & A_E & \cdots \\ 0 & A_W & A_P & \cdots \\ \vdots & \vdots & \vdots & \ddots \end{bmatrix} \begin{bmatrix} \phi_1^{k+1} \\[3pt] \phi_2^{k+1} \\[3pt] \phi_3^{k+1} \\[3pt] \vdots \end{bmatrix} = \begin{bmatrix} Q_1 \\[3pt] Q_2 \\[3pt] Q_3 \\[3pt] \vdots \end{bmatrix}​$$

---

#### Implementing Boundary Conditions

#### Dirichlet (fixed value)

At a boundary where $\phi_0 = \text{const.}$:

- $A_P = 1 + \frac{D \Delta t}{\Delta x^2}$
- $A_E = -\frac{D \Delta t}{\Delta x^2}$
- $A_W = 0$ 
- $Q_1 = \phi_1^k + \frac{D \Delta t}{\Delta x^2} \phi_0^k$

#### Neumann (fixed flux)

For a constant flux $\frac{\phi_2 - \phi_1}{\Delta x} = \text{const.}$:

- $A_P = 1 + 2 \frac{D \Delta t}{\Delta x^2}$
- $A_E = -2 \frac{D \Delta t}{\Delta x^2}$
- $A_W = 0$
- $Q_1 = \phi_1^k - 2 \frac{D \Delta t}{\Delta x} (\text{const.})$

#### Periodic

Links both ends of the domain: $\phi_0 = \phi_n$

- $A_P = 1 + 2 \frac{D \Delta t}{\Delta x^2}$
- $A_E = A_W = -\frac{D \Delta t}{\Delta x^2}$
- $Q_1 = \phi_i^k$

---

#### Matrix Solution Methods

#### Direct Solvers

- **Gaussian elimination:** transforms $A\phi = Q $into upper-triangular form via elimination.
- **LU decomposition:** factorizes $A = L \cdot U$, where $L$ is lower and $U$ upper triangular.  
    Efficient for systems with the same $A$ (e.g., stationary problems).
---
#### Iterative Solvers

Used for large sparse systems:

- **Jacobi**, **Gauss–Seidel**, **Successive Over-Relaxation (SOR)**
- **Conjugate Gradient (CG):** for symmetric matrices
- **BiCG**, **GMRES:** for nonsymmetric matrices

Convergence requires:
$$A \phi^n = Q - \delta^n, \qquad \phi^{n+1} = \phi^n + \varepsilon^n$$
where the residual $\delta^n$ tends to zero as $n \to \infty$.

---
#### Solving in Python
The algebraic system $A\phi = Q$ can be solved with **SciPy**:

```python
import numpy as np
from scipy.sparse.linalg import spsolve, cg, bicg

# Example matrix and vector
A = np.array([[3, 1], [1, 2]])
Q = np.array([9, 8])

# Direct solver
phi_direct = spsolve(A, Q)

# Iterative solvers
phi_cg, info_cg = cg(A, Q)
phi_bicg, info_bicg = bicg(A, Q)

```

---

#### Staggered Grids and Finite Volume Method

**Staggered grids:** velocities $(u, v, w)$ are stored between scalar points (pressure, temperature) to improve stability and avoid velocity–pressure decoupling.  
Example: $u_{i+1/2}$, $v_{j+1/2}$

---

### Finite Volume Method (FVM)

Integrating the conservation equation over each control volume:

$$\int_V \frac{\partial \phi}{\partial t} \, dV + \int_V \nabla \cdot \mathbf{f}(\phi) \, dV = 0$$
Using the divergence theorem:
$$\int_V \nabla \cdot \mathbf{F} \, dV = \oint_S \mathbf{F} \cdot \mathbf{n} \, dS$$
The surface integrals are approximated as a sum over the cell faces:

$$\oint_S f \, dS = S_N f_N + S_E f_E + S_S f_S + S_W f_W$$

Replacing into the conservation law:
$$\int_{V_i} \frac{\partial u}{\partial t} \, dV + \sum_k \int_{S_k} \mathbf{f}(u) \cdot \mathbf{n} \, dS = 0$$
This leads to the discrete flux balance:
$$\frac{\partial \phi_P}{\partial t} + \sum_f F_f = 0$$
where $F_f$ represents the fluxes (advective or diffusive) through each face $N, S, E, W$.  
This ensures **local conservation** (within each control volume) and **global conservation** (across the entire domain).

---
### Comparative Table of Numerical Methods

|**Method**|**Time scheme**|**Spatial scheme**|**Accuracy**|**Stability**|**Best for**|
|---|---|---|---|---|---|
|**FTCS** (Forward Time, Centered Space)|Explicit|Central difference|1st order (time), 2nd (space)|Conditionally stable|Simple diffusion/advection tests with small time steps|
|**BTCS** (Backward Time, Centered Space)|Implicit|Central difference|1st order|Unconditionally stable|Diffusion-dominated processes|
|**Crank–Nicolson**|Semi-implicit|Central difference|2nd order|Unconditionally stable|Transient heat transfer, groundwater flow|
|**Upwind**|Explicit|First-order upwind|1st order|Conditionally stable|Advection-dominated flows (avoids oscillations)|
|**Runge–Kutta (RK2, RK4)**|Explicit|Varies|2nd–4th order|Conditionally stable|Nonlinear ODE/PDE systems, high accuracy|
|**Finite Volume Method (FVM)**|Any (explicit/implicit)|Integral conservation|Depends on discretization|Conservative, stable|Complex geometries, CFD, hydraulics|
|**Finite Difference Method (FDM)**|Any|Differential approximation|High for uniform grids|May lose conservation|Regular grids, fast computation|
|**Finite Element Method (FEM)**|Usually implicit|Weighted residuals|High (depends on order)|Stable|Complex shapes, elasticity, porous flow|

---

### Summary

- **PDEs** require **initial** and **boundary conditions** to be solvable.
- A **well-posed problem** satisfies: consistency, stability, and convergence.
- The **grid resolution** must capture gradients adequately to avoid numerical diffusion.
- Complex solvers can be replaced with pre-built implementations (e.g., PETSc, Hypre, SciPy).

---




