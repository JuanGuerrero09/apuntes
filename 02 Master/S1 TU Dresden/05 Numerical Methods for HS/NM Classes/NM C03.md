---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-30
Last Modified: Thursday 30th October 2025 16:53
---
# Thursday 30th October 2025

# 📒Class Summary

Introduction to **time discretization schemes** in numerical modeling, including **explicit**, **implicit**, and **semi-implicit** approaches.  
Comparison of methods based on **stability, accuracy, and computational effort**, followed by the definition of essential **numerical properties** such as consistency, convergence, and stability.


---
# 📝 Notes

## Basics discretization methods -part II: Time Discretization

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

# 🐢 Definitions

- **Time discretization:** process of approximating time derivatives using finite time steps.
- **Explicit method:** uses only known information; conditionally stable.
- **Implicit method:** includes unknown future terms; unconditionally stable.
- **Crank–Nicolson method:** average of explicit and implicit schemes; second-order accurate.
- **Von Neumann stability:** method to analyze the growth of numerical errors.
- **CFL criterion:** defines the stability limit of explicit schemes.
- **Consistency:** property indicating truncation errors vanish as step size → 0.
- **Convergence:** the numerical solution approaches the analytical solution as discretization becomes finer.
- **Conservation:** numerical scheme preserves physical quantities.
- Coefficient matrix $(A)$: contains weights linking each cell to its neighbors. 
- Sparse matrix: matrix with mostly zero entries, typical in PDE discretization.  
- Dirichlet boundary: fixes variable value.  
- Neumann boundary: fixes derivative (flux).  
- Periodic boundary: connects both ends of the domain cyclically.  
- Ghost cells: fictitious cells used for boundary conditions.  
- Staggered grid: grid shifted for improved stability in velocity–pressure coupling.  
- Finite volume method: integrates conservation laws over control volumes.  
- LU decomposition: factorization into lower $(L)$ and upper $(U)$ matrices.  
- CG (Conjugate Gradient): iterative solver for symmetric positive-definite systems.  
- GMRES: iterative solver for general nonsymmetric systems

---

# 💡 Key Takeaways

- Time discretization converts PDEs into algebraic forms solvable at discrete time levels.
- Explicit schemes are simple but require small time steps; implicit schemes are stable but computationally heavier.
- The Crank–Nicolson method provides a balanced, second-order accurate solution.
- Stability, consistency, and convergence are interdependent and define numerical reliability.
- Physical laws must be preserved in the discrete form through conservation and boundedness.

---

# 💭 Questions

- What is the difference between explicit, implicit, and Crank–Nicolson schemes in terms of stability and accuracy?
- How does the CFL criterion limit the time step in explicit methods?
- What is the role of truncation error in determining the consistency of a numerical scheme?
- Why do implicit schemes require solving algebraic systems?
- How does the Lax equivalence theorem connect consistency, stability, and convergence?
- Why do staggered grids improve stability in flow simulations?
- How does each boundary condition (Dirichlet, Neumann, Periodic) modify the matrix coefficients?
- Why are implicit schemes typically associated with sparse algebraic systems?
- In which situations are iterative solvers preferred over direct ones?
- How do ghost cells enable boundary condition implementation?
- How does the divergence theorem connect the differential and integral forms in FVM?

---

# 📅 Homework

-  Apply the FTCS and BTCS schemes to the 1D diffusion equation and compare results.
-  Perform a Von Neumann stability analysis for the FTCS scheme.
-  Implement the Crank–Nicolson method for a transient heat conduction problem.

