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
## Basics of Discretization - Part II: Time Discretization Methods

Time discretization transforms a **differential equation** into a sequence of **algebraic updates** by replacing the time derivative ($\frac{\partial f}{\partial t}$) with a finite difference. This allows step-by-step computation of the variable’s evolution in time, often combined with spatial discretization.

### General Time Derivative

For a quantity $f(t)$, the time derivative ($f'$) is approximated as the difference between the future time step ($t^{k+1}$) and the current time step ($t^k$), divided by the time step size ($\Delta t$).

$$f' \approx \frac{f(t^{k+1}) - f({t^k})}{\Delta t}$$

Different **integration schemes** arise from how the derivative ($f'$) is evaluated (at $t^k$, $t^{k+1}$, or an average).

---

### Explicit Time Integration

**Explicit methods** (e.g., **Euler Forward**) estimate the new value using **only known quantities** from the current time step ($t^k$).

$$f(t^{k+1}) = f({t^k}) + \Delta t \, f'(t^k)$$

- **Accuracy:** **First-order accurate** in time ($O(\Delta t)$).
- **Stability:** **Conditionally stable**. Requires the time step ($\Delta t$) to be small, often limited by the **CFL (Courant–Friedrichs–Lewy) criterion**.
- **Implementation:** Easy and computationally efficient per step (direct computation, no iteration).
- **Application:** Transient heat conduction, simple advection–diffusion problems where speed is prioritized.

### Implicit Time Integration

**Implicit methods** (e.g., **Euler Backward**) estimate the derivative using the **unknown future value** ($t^{k+1}$):

$$f(t^{k+1}) = f(t^k) + \Delta t \, f'(t^{k+1})$$

- **Accuracy:** **First-order accurate** in time ($O(\Delta t)$).
- **Stability:** **Unconditionally stable**. Allows much larger $\Delta t$, useful for systems where processes occur on disparate time scales (stiff systems).
- **Implementation:** Requires solving an **algebraic equation system** ($\mathbf{A}\phi^{k+1} = \mathbf{b}$) at each step, making it more computationally expensive per step.
- **Application:** Diffusion-dominated problems (e.g., groundwater flow, viscous flow).

#### Forward Time – Centered Space (FTCS)

The FTCS scheme uses **Euler Forward** in time (explicit) and **Central differences** in space.

- Example: One-dimensional diffusion equation:
$$ \frac{\partial\phi}{\partial t}= D \frac{\partial^2\phi}{\partial x^2}$$
- Discretized Form:
$$ \frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k}{\Delta x^2}$$
- Update Formula:
$$ \phi_i^{k+1} = \phi_i^k+\frac{D \Delta t}{\Delta x^2}(\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k)$$
- **Stability Control:** The term $\frac{D \Delta t}{\Delta x^2}$ controls stability and must typically be **$\leq 0.5$** to prevent oscillations and divergence.

#### Backward Time – Centered Space (BTCS)

The BTCS scheme uses **Backward Euler** in time (implicit) and **Central differences** in space.

$$\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}$$

- **Rearranged Algebraic Form:**
$$ \left(1 + 2\frac{D\Delta t}{\Delta x^2}\right)\phi_i^{k+1}-\frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i-1}- \frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i+1} = \phi^k_i$$
- **Properties:** **Unconditionally stable**. Requires solving a system of linear equations in $\phi^{k+1}$ (usually matrix methods). First-order accurate in time, second-order in space.


### Crank–Nicolson Method (CTCS)

The Crank–Nicolson scheme is a **semi-implicit** method that averages the explicit (FTCS) and implicit (BTCS) approximations, evaluating the spatial derivative at the midpoint of the time interval.

$$\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{1}{2}\left( \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}+\frac{\phi_{i+1}^{k} - 2\phi_{i}^{k} + \phi_{i-1}^{k}}{\Delta x^2}\right)$$

- **Properties:** **Unconditionally stable** and **second-order accurate** in both space and time ($O(\Delta t^2)$, $O(\Delta x^2)$).
- **Application:** Widely used for transient heat diffusion and groundwater flow due to its optimal balance of stability and accuracy.

### Higher-Order Time Integration Schemes

#### Multipoint (Adams–Bashforth) Methods

Use information from **multiple previous time steps** ($t^{k-j}$) to predict the next one. These schemes increase accuracy but require **more memory** for storing previous values.

$$f^{(k+1)} = f^{(k)} + \Delta t \sum_{j=0}^{m} a_j f'(t^{k-j})$$

#### Runge–Kutta Methods (RK)

RK methods achieve high accuracy by estimating **intermediate slopes** within the time step to provide a more accurate average rate of change.

- Example: Second-order RK (Heun’s method)    $$\begin{aligned} k_1 &= f(t^k, y^k) \\ k_2 &= f(t^k + \Delta t, y^k + \Delta t \, k_1) \\ y^{k+1} &= y^k + \frac{\Delta t}{2}(k_1 + k_2) \end{aligned}$$
- **Properties:** Known for **high accuracy** (e.g., RK4 is fourth-order) and stability in nonlinear systems.

---

### Numerical Properties and Analysis

#### Initial Conditions

Each time-dependent PDE requires an **initial condition** ($\phi$ at $t=0$) to start the integration process. This defines the starting **state of the system**.

#### Consistency

A scheme is **consistent** if the **truncation errors** (the difference between the discrete equation and the continuous PDE, $O(\Delta t)^q$ and $O(\Delta x)^q$) vanish as the step sizes ($\Delta t$, $\Delta x$) approach zero. Consistency ensures the discrete equation is a faithful approximation of the continuous PDE.

#### Stability

A numerical scheme is **stable** if errors (from rounding or truncation) **do not grow** unbounded with time.

- **Von Neumann stability analysis** is the standard method used to determine error amplification.
- **CFL Criterion:** For **explicit schemes**, stability is often governed by this criterion, ensuring that information does not travel more than one grid cell ($\Delta x$) per time step ($\Delta t$) at the physical velocity ($u$):
$$ \text{CFL} = \frac{u \Delta t}{\Delta x} \leq 1$$

#### Convergence

A scheme is **convergent** if the numerical solution approaches the exact analytical solution as the discretization becomes finer ($\Delta t \to 0$ and $\Delta x \to 0$).

- **Lax Equivalence Theorem:** For linear initial value problems, a scheme is **convergent** if and only if it is both **consistent** and **stable**.

#### Conservation and Boundedness

These properties ensure the physical validity of the numerical solution:

- **Conservation:** Mass, momentum, and energy are preserved (not artificially created or lost) by the discrete scheme. The **Finite Volume Method (FVM)** inherently satisfies local and global conservation.
- **Boundedness:** The variables remain within physically realistic limits (e.g., concentration cannot be negative).

---

### Algebraic Equation System and Solution

#### Algebraic Equation System

Implicit schemes lead to a **sparse linear system** of algebraic equations solved at each time step:

$$\mathbf{A}\phi^{k+1} = \mathbf{b}$$

- $\mathbf{A}$: **Coefficient matrix** (sparse, depends on discretization and boundary conditions).
- $\phi^{k+1}$: **Unknown vector** containing the variable values at the next time step.
- $\mathbf{b}$: **Known vector** containing values from the current time step, sources, and boundary conditions.

#### Discretization into Algebraic Form

The general form for a node $P$ exchanging information with its neighbors $L$:

$$A_P \, \phi_P + \sum_L A_L \, \phi_L = Q_P$$

- $A_P$: Coefficient associated with the current cell (local change).
- $A_L$: Coefficients associated with neighboring cells (exchange).
- $Q_P$: Known term (source, previous time step).

#### 1D Example (BTCS Scheme)

Applying BTCS to the 1D diffusion equation results in a **tridiagonal matrix** (a sparse matrix where non-zero elements lie only on the main diagonal and the two adjacent diagonals):

$$\begin{bmatrix} A_P & A_E & 0 & \cdots \\ A_W & A_P & A_E & \cdots \\ 0 & A_W & A_P & \cdots \\ \vdots & \vdots & \vdots & \ddots \end{bmatrix} \begin{bmatrix} \phi_1^{k+1} \\[3pt] \phi_2^{k+1} \\[3pt] \phi_3^{k+1} \\[3pt] \vdots \end{bmatrix} = \begin{bmatrix} Q_1 \\[3pt] Q_2 \\[3pt] Q_3 \\[3pt] \vdots \end{bmatrix}$$

- Coefficients: $A_P = 1 + 2 \frac{D \Delta t}{\Delta x^2}$, $A_W = A_E = - \frac{D \Delta t}{\Delta x^2}$, $Q_i = \phi_i^k$.

#### Implementing Boundary Conditions

Boundary conditions modify the coefficients in the $\mathbf{A}$ matrix and the source vector $\mathbf{Q}$ at the boundary nodes. **Ghost cells** are often used to simplify the implementation of these conditions.

- **Dirichlet (fixed value):** Sets the variable value ($\phi_0 = \text{const.}$) directly at the boundary.
- **Neumann (fixed flux):** Sets the derivative ($\frac{\partial\phi}{\partial x} = \text{const.}$) or flux at the boundary.
- **Periodic:** Connects the final node to the initial node ($\phi_0 = \phi_n$), creating a cyclic domain.

#### Matrix Solution Methods

##### Direct Solvers

Methods that solve the system in a finite number of steps:

- **Gaussian elimination:** Transforms the system into an upper-triangular form.
- **LU decomposition:** Factorizes $\mathbf{A}$ into lower ($\mathbf{L}$) and upper ($\mathbf{U}$) triangular matrices ($\mathbf{A} = \mathbf{L}\mathbf{U}$), efficient when $\mathbf{A}$ is constant.

##### Iterative Solvers

Methods that start with an initial guess and converge to the solution by minimizing the residual ($\delta^n$) over successive iterations ($n$):

- **Standard:** Jacobi, Gauss–Seidel, Successive Over-Relaxation (SOR).
- **Advanced:** **Conjugate Gradient (CG)** (for symmetric matrices), **GMRES** (for nonsymmetric matrices).
- **Preference:** Preferred for **large sparse systems** where direct factorization is computationally prohibitive.

#### Finite Volume Method (FVM)

The FVM integrates the conservation equation over each discrete **control volume** ($V_i$):

$$\int_{V_i} \frac{\partial u}{\partial t} \, dV + \sum_f \int_{S_f} \mathbf{f}(u) \cdot \mathbf{n} \, dS = 0$$

- **Divergence Theorem:** Used to transform the volume integral of divergence into a sum of surface fluxes ($\sum_f F_f$).
- **Advantage:** **Guarantees local conservation** (within the cell) and thus **global conservation** (across the domain), making it highly suitable for CFD and transport problems.
- **Staggered Grids:** Velocities are stored _between_ scalar points to improve stability and avoid velocity–pressure decoupling in fluid dynamics.

---

### Comparative Table of Numerical Methods

|**Method**|**Time scheme**|**Accuracy**|**Stability**|**Best for**|
|---|---|---|---|---|
|**FTCS**|Explicit|1st order (time), 2nd (space)|Conditionally stable|Simple diffusion/advection tests with small time steps|
|**BTCS**|Implicit|1st order|Unconditionally stable|Diffusion-dominated processes (stiff systems)|
|**Crank–Nicolson**|Semi-implicit|2nd order (optimal)|Unconditionally stable|Transient heat transfer, high accuracy|
|**Runge–Kutta (RK)**|Explicit|2nd–4th order|Conditionally stable|Nonlinear ODE/PDE systems, high accuracy|
|**Finite Volume (FVM)**|Any|Depends on discretization|Conservative|Complex geometries, CFD, hydraulics|
|**Finite Difference (FDM)**|Any|High for uniform grids|May lose conservation|Regular grids, fast computation|

---


## The One-Dimensional Wave Equation

The one-dimensional wave equation is a second-order linear partial differential equation ($\text{PDE}$) that describes the propagation of waves (e.g., sound or strings) in a medium.

$$\frac{\partial^2u}{\partial t^2} = c^2 \frac{\partial^2u}{\partial x^2}$$

- $x$ is the **space component** (position).
- $t$ is **time**.
- $u = f(t,x)$ is the **displacement** (amplitude) at a given position and time.
- $c$ is the constant **speed of the wave** in the medium.

To solve this $\text{PDE}$ numerically, both the temporal and spatial second derivatives are replaced by their finite difference approximations. The domain size $L = x_{max} - x_{min} = 1 - 0 = 1$.

### Explicit Time Discretization (Central Difference Scheme)

The **Explicit Scheme** uses the **Central Difference Scheme ($\text{CDS}$)** for both the spatial and temporal derivatives. Both are evaluated entirely at the known time level $t$.

The second derivative approximation for any variable $\phi$ with respect to a component $s$ is:

$$\frac{\partial^2\phi}{\partial s^2} \approx \frac{\phi_{s+1} - 2\phi_{s} + \phi_{s-1}}{\Delta s^2}$$

Applying $\text{CDS}$ to the wave equation:

$$\frac{u_{i}^{t+1} - 2u_{i}^t+ u_{i}^{t-1}}{\Delta t^2} = c^2 \frac{u_{i+1}^{t} - 2u_{i}^t + u_{i-1}^t}{\Delta x^2}$$

where $i$ denotes the spatial index and $t$ denotes the time step.

Rearranging the terms to isolate the unknown future value $u_i^{t+1}$ yields the **Explicit Update Formula**:

$$u_i^{t+1}=\lambda^2(u^t_{i+1}-2\cdot u_i^t + u_{i-1}^t)+ 2\cdot u_i^t - u_i^{t-1}$$

where $\lambda^2 = c^2\frac{\Delta t^2}{\Delta x^2}$ is the dimensionless stability parameter.

- **Stability:** This explicit scheme is **conditionally stable**. Its time step $\Delta t$ must satisfy the **$\text{CFL}$ (Courant–Friedrichs–Lewy) criterion** to prevent numerical blow-up, specifically $\frac{c \Delta t}{\Delta x} \leq 1$.

### Implicit Time Discretization

The **Implicit Scheme** uses $\text{CDS}$ for the time derivative but evaluates the spatial derivative at the **unknown future time level $t+1$**.

Applying this discretization:

$$\frac{u_{i}^{t+1} - 2u_{i}^t+ u_{i}^{t-1}}{\Delta t^2} = c^2 \frac{u_{i + 1}^{t+1} - 2u_{i}^{t+1}+ u_{i - 1}^{t+1}}{\Delta x^2}$$

This results in a coupled system of equations where all future values ($u^{t+1}$) are mixed. This system must be solved using matrix methods (e.g., a tridiagonal solver) at every time step.

---

### Boundary Conditions (BCs)

The way the wave interacts with the edges of the simulation domain (at $x_{min}$ and $x_{max}$) is determined by the boundary condition imposed on the extreme nodes (index $i=0$ and $i=N-1$).

#### Dirichlet Boundary Condition ($\mathbf{u = \text{const}}$)

- **Definition:** Fixes the value of the displacement ($u$) at the boundary to a constant (e.g., zero). This physically represents a fixed end, like a string tied to a wall.
- **Implementation:** The boundary nodes are explicitly set: $u_{new}[0] = 0$ and $u_{new}[-1] = 0$.
- **Physical Effect:** The wave is **reflected and inverted** (its sign is flipped) when it hits the boundary.

#### Neumann Boundary Condition ($\mathbf{\partial u / \partial x = \text{const}}$)

- **Definition:** Fixes the **gradient** (slope or flux) of the displacement at the boundary to a constant (usually zero). This physically represents a free or open end, like a string tied to a frictionless ring.
- **Implementation:** The boundary node value is set equal to its adjacent internal node value, imposing a zero gradient: $u_{new}[0] = u_{new}[1]$ and $u_{new}[-1] = u_{new}[-2]$.
- **Physical Effect:** The wave is **reflected, but its sign is preserved** (no inversion) because the slope must remain zero at the edge.

#### Periodic Boundary Condition ($\mathbf{u(x_{min}) = u(x_{max})}$)

- **Definition:** Connects the ends of the domain, treating the domain as if it were **wrapped around** into a circle or loop.
- **Implementation:** The boundary node values are assigned from their 'neighbors' across the domain: $u_{new}[0] = u_{new}[-2]$ and $u_{new}[-1] = u_{new}[1]$.
- **Physical Effect:** The wave **does not reflect**. When it reaches one end, it **reappears at the opposite end** and continues propagating, maintaining continuity.

---
## Implicit Discretization of the 2D Diffusion Equation

The 2D diffusion equation (Heat Equation) models the transient distribution of a scalar quantity $\phi$ (like temperature or concentration) over a 2D domain.

The governing equation is:

$$\frac{\partial\phi}{\partial t} = D\left(\frac{\partial^2\phi}{\partial x^2} + \frac{\partial^2\phi}{\partial y^2}\right) = D \nabla^2\phi$$

where $D$ is the diffusion coefficient.

### Derivation of the BTCS Scheme

The BTCS (Backward Time, Central Space) scheme is **Implicit** because it evaluates the spatial derivatives (the Laplacian, $\nabla^2\phi$) at the **unknown future time level $k+1$**.

Using **Backward Difference (Implicit)** for the time derivative and **Central Differences** for the spatial derivatives, the equation becomes:

$$\frac{\phi_{i,j}^{k+1} - \phi_{i,j}^{k}}{\Delta t} = D \left( \frac{\phi_{i+1,j}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i-1,j}^{k+1}}{\Delta x^2} + \frac{\phi_{i,j+1}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i,j-1}^{k+1}}{\Delta y^2} \right)$$

- **Key Feature:** All terms on the right-hand side are at time level $k+1$, coupling the unknown value at $(i, j)$ with its unknown neighbors.

### Rearranging into the Algebraic System

The goal is to express the equation in the form $\mathbf{A}\boldsymbol{\Phi}^{k+1} = \mathbf{b}$ (or $\mathbf{A}\boldsymbol{\Phi}^{k+1} = \mathbf{B}\boldsymbol{\Phi}^{k}$) where $\mathbf{A}$ contains only terms from the future time step ($k+1$).

First, we multiply both sides by $\Delta t$ and define the diffusion coefficients:

$$\alpha = \frac{D\Delta t}{\Delta x^2}, \qquad \beta = \frac{D\Delta t}{\Delta y^2}$$

Rearranging the terms to group the unknown values ($\phi^{k+1}$) on the Left-Hand Side ($\text{LHS}$) and the known values ($\phi^k$) on the Right-Hand Side ($\text{RHS}$):

$$\phi_{i,j}^{k+1}( 1 + 2\alpha + 2\beta) - \alpha ( \phi_{i+1,j}^{k+1} + \phi_{i-1,j}^{k+1}) - \beta ( \phi_{i,j+1}^{k+1} + \phi_{i,j-1}^{k+1}) = \phi_{i,j}^{k}( 1 - 2\alpha - 2\beta + \alpha) ( \phi_{i+1,j}^{k} + \phi_{i-1,j}^{k}) + \beta ( \phi_{i,j+1}^{k} + \phi_{i,j-1}^{k} )$$

### Identifying the Coefficients

The coefficients $A_L$ define the structure of the **Coefficient Matrix ($\mathbf{A}$) **:

$$P=(i,j), \quad E=(i+1,j), \quad W=(i-1,j), \quad N=(i,j+1), \quad S=(i,j-1)$$

The coefficient of the **central node $P$** ($A_P$) and its **neighbors** on the $\text{LHS}$ are:

- $\mathbf{A_P}$ (Center): $\quad \mathbf{1+2\alpha+2\beta}$
- $\mathbf{A_E}$ (East): $\quad \mathbf{-\alpha}$
- $\mathbf{A_W}$ (West): $\quad \mathbf{-\alpha}$
- $\mathbf{A_N}$ (North): $\quad \mathbf{-\beta}$
- $\mathbf{A_S}$ (South): $\quad \mathbf{-\beta}$

The **Right-Hand Side ($\mathbf{b}$ vector)** is simply the value of the center node at the previous time step:

$$\mathbf{b}_{i,j} = \phi_{i,j}^{k}$$

### Nature of the Solution

- **Unconditional Stability:** The implicit method is **unconditionally stable** (for the diffusion equation), meaning the solution will not numerically blow up, regardless of the size of $\Delta t$. This is a major advantage over the explicit method where $\Delta t$ is severely limited ($\Delta t \leq \frac{1}{2D}(\Delta x)^2$).

- **Matrix Structure:** The final system $\mathbf{A}\boldsymbol{\Phi}^{k+1} = \mathbf{b}$ requires solving a system of linear equations for all interior nodes simultaneously. When the grid is unwrapped into a vector, the matrix $\mathbf{A}$ is a **large, sparse, block-tridiagonal matrix**.

- **Computational Cost:** The implicit method is **more computationally expensive per step** than the explicit method because it requires a matrix solve (which typically scales poorly with the number of nodes), but it allows for **much larger time steps**, often making it more efficient overall for stiff or diffusion-dominated problems.

---

## Navier-Stokes Equations and Fluid Dynamics

### Basic Principles of Transport

The physical transport of fluid and suspended sediment is mathematically described by three core sets of equations:

1. **Mass Conservation $\rightarrow$ Continuity Equation:** Ensures that fluid mass is conserved within a control volume.
2. **Momentum Conservation $\rightarrow$ Navier-Stokes Equations ($\text{NSE}$):** Represents Newton's second law ($\mathbf{F}=m\mathbf{a}$) applied to fluid motion, balancing inertial forces, pressure gradients, viscous stresses, and external forces.    
3. **Sediment Transport $\rightarrow$ Advection-Diffusion Equations / Particle Equation of Motion:** Describes how a scalar (like concentration) moves with the fluid (advection) and spreads out (diffusion).

#### Transport in 1D (Advection-Diffusion Equation)

This equation describes the conservation of a scalar quantity ($c$, e.g., sediment concentration) within a fluid. The scalar **flux** through a control volume is defined as $Q_c = c \mathbf{u} dA$.

The **Advection-Diffusion Equation** balances the local change in concentration with convection, diffusion, and any internal sources/sinks:

$$\underbrace{\frac{\partial c}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{\frac{\partial (c \cdot u)}{\partial x}}_{\text{convection}} = \underbrace{\frac{\partial}{\partial x} \left( D_s \frac{\partial c}{\partial x} \right)}_{\text{diffusion}} + \underbrace{Q/S}_{\substack{\text{source/} \\ \text{sink}}}$$

- **Local Change ($\frac{\partial c}{\partial t}$):** The rate of change of concentration at a fixed point.
- **Convection ($\frac{\partial (c \cdot u)}{\partial x}$):** Transport of the scalar due to the bulk movement (velocity $u$) of the fluid.
- **Diffusion ($\frac{\partial}{\partial x} \left( D_s \frac{\partial c}{\partial x} \right)$):** Spreading due to random motion, where $D_s$ is the **Diffusion coefficient of the scalar**.
- **Source/Sink ($Q/S$):** Terms representing generation or loss (e.g., sediment settling out).
- **Visual Representation:** The graph illustrates how **convection** shifts the entire distribution over time ($\text{t}_0 \to \text{t}_1$), while **diffusion** simultaneously ensanches (widens) it.

![[Pasted image 20251126092919.png]]
#### Conservation of Mass (Continuity Equation)

This equation is derived by considering the **mass flux** ($Q_m = \rho \mathbf{u} dA$) through a control volume.

The general form of the continuity equation (in 2D or 3D divergence form) is:

$$\underbrace{\frac{\partial \rho}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \frac{\partial (\rho \cdot u)}{\partial x} + \frac{\partial (\rho \cdot v)}{\partial y} + \frac{\partial (\rho \cdot w)}{\partial z} = 0$$

This states that the rate of mass change within the volume equals the net mass flux across its boundaries. Being:

### Incompressible Flow

In **incompressible flow**, the fluid density ($\rho$) is assumed to be **constant ($\rho = \text{const}$)**. This is a common and simplifying assumption for many water-based problems where pressure variations are small.

If $\rho$ is constant, the continuity equation simplifies to:

$$\rho \underbrace{\left( \frac{\partial u}{\partial x} + \frac{\partial v}{\partial y} + \frac{\partial w}{\partial z} \right)}_{\text{convective transport}} = \nabla \cdot \mathbf{u} = 0$$

The condition $\nabla \cdot \mathbf{u} = 0$ means the **velocity field is divergence-free**, confirming that no fluid volume is compressed or expanded.

### Conservation of Momentum (Navier-Stokes Equations)

The $\text{NSE}$ represents the balance of forces, where **Momentum flux** ($Q_J = \rho u \mathbf{u} dA$) is the core transport term. The equation accounts for internal **stresses** ($\sigma$, normal stress/pressure; $\tau$, shear stress) within the fluid.

#### Full 3D Navier-Stokes Equations (NSE)

The $\text{NSE}$ is a **vectorial** equation, meaning it has three scalar components ($i = 1, 2, 3$ or $x, y, z$) corresponding to the conservation of momentum in each direction.

We use the notation: $\vec{x} = (x_1, x_2, x_3)^T = (x, y, z)^T$ and $\vec{u} = (u_1, u_2, u_3)^T = (u, v, w)^T$.

The scalar equation for the **$x$-component ($i=1$)** of the velocity ($u$) is:

$$\underbrace{\frac{\partial u}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{u \frac{\partial u}{\partial x} + v \frac{\partial u}{\partial y} + w \frac{\partial u}{\partial z}}_{\text{convective transport}} = \underbrace{-\frac{1}{\rho} \frac{\partial p}{\partial x}}_{\text{pressure}} + \underbrace{\nu_f \left( \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} + \frac{\partial^2 u}{\partial z^2} \right)}_{\text{viscous stress}} + \underbrace{f_x}_{\substack{\text{external} \\ \text{forces}}}$$

- **Convective Transport:** Terms like $u \frac{\partial u}{\partial x}$ describe how the flow carries momentum with it. The term $v \frac{\partial v}{\partial y}$ (from the $y$-direction equation) is part of convective transport in the $y$-direction.
- $\nu_f$: **Kinematic viscosity** ($\text{shear stress } \tau_{ij} = \rho \nu_f (\dots)$).
- **Fluid Types:** The $\text{NSE}$ as written assumes constant viscosity, describing a **Newtonian fluid** (like clear water). **Sediment-laden flows** are often **non-Newtonian** (their viscosity changes with shear rate), requiring the study of **Rheology** (flow and deformation of matter).

#### Compact Notation (Einstein Summation)

Using the **Einstein summation convention** (where repeated indices imply summation), the $\text{NSE}$ can be written compactly:

$${\frac{\partial u_i}{\partial t}} + {u_j \frac{\partial u_i}{\partial x_j}} = {-\frac{1}{\rho} \frac{\partial p}{\partial x_i}} + {\nu_f \left( \frac{\partial^2 u_i}{\partial x_j^2} \right)} + {f_i}$$

With the vectorial form of:

$$
{\frac{\partial \vec{u}}{\partial t}} + \nabla \cdot (\vec{u} \; \vec{u}) = {-\frac{1}{\rho} \nabla p} + {\nu_f \left( \nabla^2\vec{u} \right)} + \vec{f}
$$

### Simplified Flow Regimes

The full $\text{NSE}$ is often simplified based on the **magnitude of the velocity ($|\vec{u}|$)** or the **Reynolds number ($\text{Re}$)**.

- **Stokes Equations** ($|\vec{u}| \ll 1$):** Used for very **slow (creeping)** flows where **inertial forces** (the convective terms) are negligible compared to viscous forces.

$$ 0 = -\frac{1}{\rho} \nabla p + \nu_f \nabla^2 \vec{u} + \vec{f}$$

	- **Hydroscience Context:** If this equation is integrated, under certain conditions, it leads to **Darcy's Law**, which describes flow through porous media (e.g., groundwater).
    
- **Euler Equations ($|\vec{u}| \gg 1$):** Used for very **fast** flows where **viscous forces** (the diffusion/stress term) are negligible compared to inertial forces.
$$ {\frac{\partial \vec{u}}{\partial t}} + \nabla \cdot (\vec{u} \; \vec{u}) = {-\frac{1}{\rho} \nabla p} + \vec{f}$$
    - **Hydroscience Context:** These equations are **not widely used** in hydroscience because flow speeds in water bodies are generally not large enough to ignore viscosity (unlike in aerodynamics, e.g., high plane speeds).


### Non-Dimensional Form and Reynolds Number

The goal of **non-dimensionalization** is to scale the $\text{NSE}$ by characteristic values ($u_{\text{char}}, L_{\text{char}}, \dots$) to make solutions universally applicable and to reveal the fundamental governing parameter: the **Reynolds Number ($\text{Re}$)**.

**Non-Dimensional NSE (without external forces $\vec{f}$):**

By scaling all variables (e.g., $\vec{u} = \tilde{\vec{u}} u_{\text{char}}$, $\nabla = \tilde{\nabla} / L_{\text{char}}$, $t = \tilde{t} L_{\text{char}} / u_{\text{char}}$, $p = \tilde{p} \rho u_{\text{char}}^2$) and dividing by the inertial scaling factor $\mathbf{u_{\text{char}}^2 / L_{\text{char}}}$, the $\text{NSE}$ simplifies to:

$$\underbrace{\frac{\partial \tilde{\vec{u}}}{\partial \tilde{t}}}_{\substack{\text{Local} \\ \text{Inertia}}} + \underbrace{\tilde{\vec{u}} \cdot \tilde{\nabla} \tilde{\vec{u}}}_{\substack{\text{Convective} \\ \text{Inertia}}} = \underbrace{-\tilde{\nabla} \tilde{p}}_{\text{Pressure}} + \underbrace{\frac{1}{\text{Re}} \tilde{\nabla}^2 \tilde{\vec{u}}}_{\text{Viscous Stress}}$$
(Note: $\tilde{\vec{u}}$ denotes the non-dimensional velocity, $\tilde{\nabla}$ the non-dimensional Nabla operator.)

| Quantity     | Variable | Characteristic Scale                                          | Non-Dimensional Variable                                                      |
| :----------- | :------- | :------------------------------------------------------------ | :---------------------------------------------------------------------------- |
| **Velocity** | $u_i$    | $u_{\text{char}}$ (e.g., free-stream velocity)                | $\tilde{u}_i = u_i / u_{\text{char}}$                                         |
| **Length**   | $x_i$    | $L_{\text{char}}$ (e.g., cylinder diameter)                   | $\tilde{x}_i = x_i / L_{\text{char}}$                                         |
| **Time**     | $t$      | $t_{\text{char}} = L_{\text{char}} / u_{\text{char}}$         | $\tilde{t} = t / t_{\text{char}}= (u_{\text{inf}} t) / \text{D}_{\text{cyl}}$ |
| **Pressure** | $p$      | $p_{\text{char}} = \rho u_{\text{char}}^2$ (Dynamic Pressure) | $\tilde{p} = p / p_{\text{char}}$                                             |

- Example scaling for a 2D flow past a cylinder ($\text{D}_{\text{cyl}}$):
    - Velocity: $\tilde{\vec{u}} = \vec{u} / u_{\text{inf}}$ (where $u_{\text{inf}}$ is the free-stream velocity).
    - Length: $\tilde{L} = L / \text{D}_{\text{cyl}}$.
    - Pressure: $\tilde{p} = p / (\rho u_{\text{inf}}^2)$ (scaling pressure by the stagnation point pressure, derived from Bernoulli's principle).
    - Time: $\tilde{t} = (u_{\text{inf}} t) / \text{D}_{\text{cyl}}$.

#### Advection-Diffusion Equation (Non-Dimensional Form)

The Advection-Diffusion equation, when non-dimensionalized using characteristic quantities ($c_{\text{char}}=c_{\text{max}}$, $u_{\text{char}}=u_{\text{b}}$, $L_{\text{char}}=H$, $t_{\text{char}}=H/u_{\text{b}}$), yields a non-dimensional form governed by the **Péclet Number ($\text{Pe}$)**.

$$\underbrace{\frac{\partial \tilde{c}}{\partial \tilde{t}}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{\frac{\partial (\tilde{c}\tilde{u}_i)}{\partial \tilde{x}_i}}_{\text{Advection}} = \underbrace{\frac{1}{\text{Pe}} \frac{\partial^2 \tilde{c}}{\partial \tilde{x}_i^2}}_{\text{Diffusion}} + \underbrace{\tilde{Q}/\tilde{S}}_{\substack{\text{Source} / \\ \text{sink}}}$$

- **Péclet Number ($\text{Pe}$):** The ratio of advective transport to diffusive transport. It indicates the relative importance of these two mechanisms.
$$ \mathbf{\text{Pe}} = \frac{\text{advective transport}}{\text{diffusive transport}} = \frac{u_b H}{D_s}$$
    
- **Decomposition of $\text{Pe}$:** The Péclet number is also related to the Reynolds ($\text{Re}$) and Schmidt ($\text{Sc}$) numbers:$$ \mathbf{\text{Pe}} = \mathbf{\text{Re}} \cdot \mathbf{\text{Sc}} = \left(\frac{u_b H}{\nu_f}\right) \cdot \left(\frac{\nu_f}{D_s}\right)$$
    - $\mathbf{\text{Re}} = \frac{u_b H}{\nu_f}$: Reynolds number (Inertia/Viscosity).
    - $\mathbf{\text{Sc}} = \frac{\nu_f}{D_s}$: Schmidt number (Momentum diffusivity/Mass diffusivity).

**The Reynolds Number ($\text{Re}$):**

$$\mathbf{\text{Re}} = \frac{\text{Inertial Forces}}{\text{Viscous Forces}} = \frac{\rho u_{\text{char}} L_{\text{char}}}{\mu} = \frac{u_{\text{char}} L_{\text{char}}}{\nu_f}$$

- **Role of $\mathbf{1/\text{Re}}$:** The non-dimensional form explicitly shows that the **Viscous Stress term** is scaled by $\mathbf{1/\text{Re}}$. This confirms the $\text{Re}$ value determines the balance of forces:
    - If $\text{Re} \to \infty$, $1/\text{Re} \to 0$, so the viscous term vanishes ($\to \text{Euler}$ limit).
    - If $\text{Re} \to 0$, $1/\text{Re} \to \infty$, so the viscous term dominates ($\to \text{Stokes}$ limit).
- **Example scaling:** For a 2D flow past a cylinder ($\text{D}_{\text{cyl}}$): $u_{\text{char}} = u_{\text{inf}}$ (free-stream velocity), $L_{\text{char}} = \text{D}_{\text{cyl}}$, and $p_{\text{char}} = \rho u_{\text{inf}}^2$ (stagnation point pressure).

### Coupling of Mass and Momentum (Numerical Solutions)

The $\text{NSE}$ system is numerically challenging due to **Pressure-Velocity Decoupling**: the system has **four unknowns** ($\vec{u}$ and $p$) but the $\text{NSE}$ does not provide a direct evolution equation for $p$. Continuity ($\nabla \cdot \vec{u}=0$) must be enforced indirectly.

|**Type of Coupling**|**Description**|**Stability / Performance**|
|---|---|---|
|**Weak Coupling**|Solves Momentum and Pressure sequentially ($u \to p$).|**Prone to instabilities** (does not guarantee $\nabla \cdot \vec{u}=0$).|
|**Strong Coupling**|Uses iterative correction steps to enforce $\nabla \cdot \vec{u}=0$.|**Robust stability** (e.g., $\text{SIMPLE}$ Algorithm).|
#### Time integration of NSE (weak coupling) - Projection Method

Weak coupling schemes often use a prediction-correction method over time integration:

1. **Implicit Predictor for Intermediate Velocity Field ($\vec{u}^*$):** Calculate a temporary velocity field using the pressure from the old step ($p^{k-1}$). The intermediate velocity is $\vec{u}^*$.
$$\frac{\vec{u}^* - \vec{u}^{k-1}}{\Delta t} = \frac{1}{\text{Re}} \nabla^2 \vec{u}^* - \nabla \cdot (\vec{u}^* \vec{u}^*) - \nabla p^{k-1}$$
2. **Solve Poisson Equation to Determine Correction:** Derive and solve a Poisson equation for a correction potential ($\phi$) to eliminate the predicted divergence.$$\nabla \cdot \vec{u}^* = \Delta t \nabla^2 \phi$$
3. Correct Velocity Field to Become Divergence Free: Use the gradient of the potential ($\nabla \phi$) to project the predicted velocity ($\vec{u}^*$) into a divergence-free field ($\vec{u}^k$).$$\vec{u}^k = \vec{u}^* - \Delta t \nabla \phi$$
4. Compute Pressure: The pressure is calculated using the old pressure and the correction potential.
$$p^k = p^{k-1} + \rho_f \phi$$
#### The $\text{SIMPLE}$ Algorithm

The **$\text{SIMPLE}$ algorithm** ($\text{Semi-Implicit Method for Pressure-Linked Equations}$) is the standard **strong coupling** method based on a Predicción-Corrección scheme. It ensures the final velocity field ($\vec{u}^{k+1}$) satisfies the Continuity equation.

The **$\text{SIMPLE}$ algorithm** (Strong Coupling) uses an iterative correction loop (instead of a single projection step) within each time step to enforce continuity:

- **Initialization:** Set initial values of pressure and velocity ($p^{**}, \vec{u}^{**}$). Set maximal allowed **Convergence Criterion ($\epsilon$)**.
    
- **Iterative Loop:**
    
    1. **Predictor:** Calculate a temporary velocity ($\vec{u}^*$) using the pressure from the previous iteration ($p^{**}$), treating the convective term semi-implicitly ($\vec{u}^{**} \nabla \cdot \vec{u}^*$).
    $$\frac{\vec{u}^* - \vec{u}^{k-1}}{\Delta t} = \frac{1}{\text{Re}} \nabla^2 \vec{u}^* - \vec{u}^{**} \nabla \cdot (\vec{u}^*) - \nabla p^{**}$$
    2. Pressure Correction (Poisson Equation): Solve the Poisson equation for $p'$ (pressure correction).$$\mathbf{\nabla^2 p' = \frac{1}{\Delta t} \nabla \cdot \vec{u}^*}$$
        - **Key Parameter:** The **Laplacian of the Corrected Pressure ($\nabla^2 p'$)** is the central term whose solution balances the divergence error ($\nabla \cdot \vec{u}^*$).

    3. Corrector: Update velocity and pressure using $p'$.
$$\vec{u}^{**} = \vec{u}^* - \Delta t \nabla p' \quad \text{and} \quad p^{**} = p^{k-1} + p'$$
    4. **Compute Residual:** Calculate the residual ($\text{Residual} = \sigma_i \sigma_j (\nabla \cdot \vec{u}^{**}_{i,j})^2$) and check if $\text{Residual} < \epsilon$. If not, repeat the loop.

##### Convergence Criterion

The **Convergence Criterion ($\epsilon$)** is essential for the $\text{SIMPLE}$ algorithm to test if continuity is sufficiently fulfilled ($\nabla \cdot \vec{u} < \epsilon$).

- **Criterion:** $\nabla \cdot \vec{u} = \frac{u_{i,j}-u_{i-1,j}}{\Delta x} + \frac{v_{i,j}-v_{i,j-1}}{\Delta y} < \epsilon$

- **Residual Calculation:** $\epsilon$ is typically computed as the $\mathbf{L^2}$-norm (or similar norm) of the divergence of the velocity field over the domain: $\epsilon = \sqrt{\sum_{i} \sum_{j} \epsilon_{i,j}^2}$.

- **Trade-off:** A **large $\epsilon$** requires fewer iterations but results in a less stable solution. A **small $\epsilon$** requires more iterations but yields a more stable and accurate solution.
---