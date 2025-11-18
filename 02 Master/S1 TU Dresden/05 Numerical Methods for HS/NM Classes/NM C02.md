---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-29
Last Modified: Wednesday 29th October 2025 09:19
---
# Wednesday 29th October 2025

# 📒Class Summary
Introduction to **discretization methods** used to solve partial differential equations (PDEs) numerically.  
Focus on how to convert continuous physical problems (e.g. advection–diffusion) into **algebraic equations** using **finite differences** and how to handle **boundary conditions**.


---
# 📝 Notes

## Basics of Discretization – Part 1

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

#### Typical Example: Advection–Diffusion–Transport Equation

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

#### 🔹 Forward Difference (Euler Forward)

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

#### 🔹 Backward Difference (Euler Backward)

Expanding around $x - \Delta x$:
$$f(x-\Delta x) = f(x) - f'(x)\Delta x + \frac{f''(x)}{2}(\Delta x)^2 - \frac{f^{(3)}(x)}{6}(\Delta x)^3 + ...$$
Rearranging:
$$f'(x) = \frac{f(x) - f(x - \Delta x)}{\Delta x} + \mathcal{O}(\Delta x)$$
In discrete notation:
$$\frac{df}{dx}|_{x_i} \approx \frac{f_i - f_{i-1}}{\Delta x}$$
This is also **first-order accurate**, often used in **implicit schemes** (numerically stable for stiff problems).

---

#### 🔹 Central Difference (Second Order)

Combining forward and backward expansions to cancel first-order errors:
$$\frac{df}{dx} \approx \frac{f(x+\Delta x) - f(x-\Delta x)}{2\Delta x}+ O(\Delta x)^2$$
Error term: $O(\Delta x^2)$ → **second-order accuracy**.  
If $\Delta x$ is halved, the error decreases by a factor of four.

---
#### 🔹 Second Derivative (Central Difference)

Adding forward and backward expansions gives:
$$

f(x+ \Delta x) - f(x- \Delta x) = 2f(x)+\frac{d^2f(x)}{dx^2}(\Delta x)^2+....

$$
$$\frac{d^2f}{dx^2} \approx \frac{f(x+\Delta x) - 2f(x) + f(x-\Delta x)}{\Delta x^2}$$
This is the most common formula for **diffusion and Poisson equations**.

#### 🔹 Numerical Diffusion

Finite discretization smoothens steep gradients — this is known as **numerical diffusion**.  
The truncation error $O(\Delta x^q)$ behaves like an artificial diffusion term, especially in advection problems.

![[Pasted image 20251029102358.png]]

---
#### 🔹 Comparison of Finite Difference Schemes

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

##### Importance of Boundary Conditions

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
##### Summary Boundary Conditions

|Boundary Type|Fixed Quantity|Common Applications|Physical Interpretation|
|:--|:--|:--|:--|
|**Dirichlet**|Variable value $y=f(x)$|Fixed temperature, head, velocity|Fixed state (controlled condition)|
|**Neumann**|Gradient $\partial y/\partial n$|Insulated or impermeable surfaces|Controlled flux|
|**Periodic**|Value and gradient continuity|Channel, cyclic flow, homogeneous domain|Repetition in space|

---
#### Example – Mixed Boundary Setup

Consider a 1D heat conduction problem:
$$\frac{\partial T}{\partial t} = \alpha \frac{\partial^2 T}{\partial x^2}$$
with:

- $T(0,t) = 300,\text{K}$ (Dirichlet)
- $\frac{\partial T}{\partial x}(L,t) = 0$ (Neumann)

Discretization yields:

- At $x_0$: $T_0 = 300$
- At $x_N$: $T_N = T_{N-1}$ (from $\frac{T_N - T_{N-2}}{2\Delta x} = 0$)

This configuration fixes the temperature at one end and enforces zero flux at the other, representing a wall maintained at constant temperature with an insulated boundary.

---

##### Key Insights

- Boundary conditions define how the modeled domain interacts with its environment.
- **Dirichlet** specifies a fixed variable, **Neumann** fixes its gradient or flux, and **periodic** enforces spatial continuity.
- Incorrect or inconsistent boundary definitions can lead to **instability**, **non-physical oscillations**, or **violations of conservation laws**.
- In practical modeling, Dirichlet and Neumann conditions are often combined into **Robin (mixed) conditions** to simulate convection or exchange at interfaces.
---
### Summary

- PDEs can be discretized via **Taylor series → finite differences**.
- Accuracy depends on truncation order $O(\Delta x)^q$.
- **Numerical diffusion** arises from discretization.
- Boundary conditions (Dirichlet, Neumann, periodic) are essential for solvability.

---
# 💡 Key Takeaways

- Finite differences approximate derivatives by algebraic expressions.
- Forward and backward schemes are **first order**, while central differences are **second order**.
- Truncation errors determine accuracy and introduce numerical diffusion.
- Proper boundary condition choice ensures physical and numerical correctness.
- Stability depends on the combination of **scheme** and **PDE type** (e.g. explicit vs implicit).

---

# 💭 Questions

- Why does central differencing cancel first-order errors?
- When should a forward vs backward scheme be used?
- How does $\Delta x$ influence the accuracy and stability of your solution?
- Why does discretization introduce artificial diffusion?
- Which type of boundary condition fits an advection-dominated system?

---
# 🐢 Definitions

- **Discretization:** Conversion of continuous equations into algebraic form for numerical solution.
- **Taylor Series Expansion:** Infinite series expressing a function in terms of its derivatives around a point.
- **Finite Difference Method:** Technique to approximate derivatives using values at discrete points.
- **Numerical Diffusion:** Artificial smoothing of gradients due to finite grid resolution.
- **Dirichlet Boundary Condition:** Specifies a constant value of a variable at the boundary.
- **Neumann Boundary Condition:** Specifies a constant derivative (gradient) at the boundary.
- **Periodic Boundary Condition:** Enforces repetition of values between domain edges.
- **Truncation Error:** Difference between the exact derivative and its numerical approimation.
- **Ghost Cell:** Artificial node outside the computational domain used to apply boundary conditions.

---
# 📅 Homework



