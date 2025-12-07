---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-30
Last Modified: Thursday 30th October 2025 16:53
---
# 📅 Thursday 30th October 2025

# 📒 Class Summary

Introduction to **time discretization schemes** in numerical modeling, including **explicit**, **implicit**, and **semi-implicit** approaches. Comparison of methods based on **stability, accuracy, and computational effort**, followed by the definition of essential **numerical properties** such as consistency, convergence, and stability.

---

# 📝 Notes

## Time Discretization Methods

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

- Example: Second-order RK (Heun’s method)
    
    $$\begin{aligned} k_1 &= f(t^k, y^k) \\ k_2 &= f(t^k + \Delta t, y^k + \Delta t \, k_1) \\ y^{k+1} &= y^k + \frac{\Delta t}{2}(k_1 + k_2) \end{aligned}$$
    
- **Properties:** Known for **high accuracy** (e.g., RK4 is fourth-order) and stability in nonlinear systems.
    

---

## Numerical Properties and Analysis

### Initial Conditions

Each time-dependent PDE requires an **initial condition** ($\phi$ at $t=0$) to start the integration process. This defines the starting **state of the system**.

### Consistency

A scheme is **consistent** if the **truncation errors** (the difference between the discrete equation and the continuous PDE, $O(\Delta t)^q$ and $O(\Delta x)^q$) vanish as the step sizes ($\Delta t$, $\Delta x$) approach zero. Consistency ensures the discrete equation is a faithful approximation of the continuous PDE.

### Stability

A numerical scheme is **stable** if errors (from rounding or truncation) **do not grow** unbounded with time.

- **Von Neumann stability analysis** is the standard method used to determine error amplification.
    
- **CFL Criterion:** For **explicit schemes**, stability is often governed by this criterion, ensuring that information does not travel more than one grid cell ($\Delta x$) per time step ($\Delta t$) at the physical velocity ($u$):
    
    $$ \text{CFL} = \frac{u \Delta t}{\Delta x} \leq 1$$
    

### Convergence

A scheme is **convergent** if the numerical solution approaches the exact analytical solution as the discretization becomes finer ($\Delta t \to 0$ and $\Delta x \to 0$).

- **Lax Equivalence Theorem:** For linear initial value problems, a scheme is **convergent** if and only if it is both **consistent** and **stable**.
    

### Conservation and Boundedness

These properties ensure the physical validity of the numerical solution:

- **Conservation:** Mass, momentum, and energy are preserved (not artificially created or lost) by the discrete scheme. The **Finite Volume Method (FVM)** inherently satisfies local and global conservation.
    
- **Boundedness:** The variables remain within physically realistic limits (e.g., concentration cannot be negative).
    

---

## Algebraic Equation System and Solution

### Algebraic Equation System

Implicit schemes lead to a **sparse linear system** of algebraic equations solved at each time step:

$$\mathbf{A}\phi^{k+1} = \mathbf{b}$$

- $\mathbf{A}$: **Coefficient matrix** (sparse, depends on discretization and boundary conditions).
    
- $\phi^{k+1}$: **Unknown vector** containing the variable values at the next time step.
    
- $\mathbf{b}$: **Known vector** containing values from the current time step, sources, and boundary conditions.
    

### Discretization into Algebraic Form

The general form for a node $P$ exchanging information with its neighbors $L$:

$$A_P \, \phi_P + \sum_L A_L \, \phi_L = Q_P$$

- $A_P$: Coefficient associated with the current cell (local change).
    
- $A_L$: Coefficients associated with neighboring cells (exchange).
    
- $Q_P$: Known term (source, previous time step).
    

### 1D Example (BTCS Scheme)

Applying BTCS to the 1D diffusion equation results in a **tridiagonal matrix** (a sparse matrix where non-zero elements lie only on the main diagonal and the two adjacent diagonals):

$$\begin{bmatrix} A_P & A_E & 0 & \cdots \\ A_W & A_P & A_E & \cdots \\ 0 & A_W & A_P & \cdots \\ \vdots & \vdots & \vdots & \ddots \end{bmatrix} \begin{bmatrix} \phi_1^{k+1} \\[3pt] \phi_2^{k+1} \\[3pt] \phi_3^{k+1} \\[3pt] \vdots \end{bmatrix} = \begin{bmatrix} Q_1 \\[3pt] Q_2 \\[3pt] Q_3 \\[3pt] \vdots \end{bmatrix}$$

- Coefficients: $A_P = 1 + 2 \frac{D \Delta t}{\Delta x^2}$, $A_W = A_E = - \frac{D \Delta t}{\Delta x^2}$, $Q_i = \phi_i^k$.
    

### Implementing Boundary Conditions

Boundary conditions modify the coefficients in the $\mathbf{A}$ matrix and the source vector $\mathbf{Q}$ at the boundary nodes. **Ghost cells** are often used to simplify the implementation of these conditions.

- **Dirichlet (fixed value):** Sets the variable value ($\phi_0 = \text{const.}$) directly at the boundary.
    
- **Neumann (fixed flux):** Sets the derivative ($\frac{\partial\phi}{\partial x} = \text{const.}$) or flux at the boundary.
    
- **Periodic:** Connects the final node to the initial node ($\phi_0 = \phi_n$), creating a cyclic domain.
    

### Matrix Solution Methods

#### Direct Solvers

Methods that solve the system in a finite number of steps:

- **Gaussian elimination:** Transforms the system into an upper-triangular form.
    
- **LU decomposition:** Factorizes $\mathbf{A}$ into lower ($\mathbf{L}$) and upper ($\mathbf{U}$) triangular matrices ($\mathbf{A} = \mathbf{L}\mathbf{U}$), efficient when $\mathbf{A}$ is constant.
    

#### Iterative Solvers

Methods that start with an initial guess and converge to the solution by minimizing the residual ($\delta^n$) over successive iterations ($n$):

- **Standard:** Jacobi, Gauss–Seidel, Successive Over-Relaxation (SOR).
    
- **Advanced:** **Conjugate Gradient (CG)** (for symmetric matrices), **GMRES** (for nonsymmetric matrices).
    
- **Preference:** Preferred for **large sparse systems** where direct factorization is computationally prohibitive.
    

### Finite Volume Method (FVM)

The FVM integrates the conservation equation over each discrete **control volume** ($V_i$):

$$\int_{V_i} \frac{\partial u}{\partial t} \, dV + \sum_f \int_{S_f} \mathbf{f}(u) \cdot \mathbf{n} \, dS = 0$$

- **Divergence Theorem:** Used to transform the volume integral of divergence into a sum of surface fluxes ($\sum_f F_f$).
    
- **Advantage:** **Guarantees local conservation** (within the cell) and thus **global conservation** (across the domain), making it highly suitable for CFD and transport problems.
    
- **Staggered Grids:** Velocities are stored _between_ scalar points to improve stability and avoid velocity–pressure decoupling in fluid dynamics.
    

---

## Comparative Table of Numerical Methods

|**Method**|**Time scheme**|**Accuracy**|**Stability**|**Best for**|
|---|---|---|---|---|
|**FTCS**|Explicit|1st order (time), 2nd (space)|Conditionally stable|Simple diffusion/advection tests with small time steps|
|**BTCS**|Implicit|1st order|Unconditionally stable|Diffusion-dominated processes (stiff systems)|
|**Crank–Nicolson**|Semi-implicit|2nd order (optimal)|Unconditionally stable|Transient heat transfer, high accuracy|
|**Runge–Kutta (RK)**|Explicit|2nd–4th order|Conditionally stable|Nonlinear ODE/PDE systems, high accuracy|
|**Finite Volume (FVM)**|Any|Depends on discretization|Conservative|Complex geometries, CFD, hydraulics|
|**Finite Difference (FDM)**|Any|High for uniform grids|May lose conservation|Regular grids, fast computation|

---

# 💡 Key Takeaways

- Time discretization converts PDEs into algebraic forms solvable at discrete time levels.
- **Explicit schemes** are simple but require small time steps (CFL restricted); **implicit schemes** are stable but computationally heavier per step.
- The **Crank–Nicolson method** offers the best balance: second-order accurate and unconditionally stable.
- **Consistency, stability, and convergence** are interdependent (Lax theorem) and define numerical reliability.
- **Conservation** and **Boundedness** are essential physical constraints that must be preserved by the discrete scheme.

---

# 💭 Questions

- What is the difference between explicit, implicit, and Crank–Nicolson schemes in terms of stability and accuracy?
    
- How does the **CFL criterion** limit the time step in explicit methods?
    
- What is the role of **truncation error** in determining the consistency of a numerical scheme?
    
- Why do implicit schemes require solving **algebraic systems**?
    
- How does the **Lax equivalence theorem** connect consistency, stability, and convergence?
    
- Why do **staggered grids** improve stability in flow simulations?
    
- How does each boundary condition (Dirichlet, Neumann, Periodic) modify the coefficients of the **A matrix**?
    
- Why are implicit schemes typically associated with **sparse algebraic systems**?
    
- In which situations are **iterative solvers** preferred over direct ones?
    
- How does the **divergence theorem** ensure conservation in the Finite Volume Method (FVM)?
    

---

# 🐢 Definitions

- **Time Discretization:** The process of approximating time derivatives using finite time steps.
    
- **Explicit Method:** Uses only known information from the current time step ($t^k$).
    
- **Implicit Method:** Includes unknown future terms from the next time step ($t^{k+1}$).
    
- **Crank–Nicolson Method:** A semi-implicit scheme that averages explicit and implicit approximations; second-order accurate.
    
- **CFL Criterion:** Defines the maximum stable time step ($\Delta t$) for explicit schemes.
    
- **Consistency:** Property indicating that truncation errors vanish as step sizes approach zero.
    
- **Convergence:** The numerical solution approaches the exact analytical solution as discretization becomes finer.
    
- **Coefficient Matrix ($\mathbf{A}$):** Contains weights linking each cell to its neighbors, forming the algebraic system in implicit schemes.
    
- **Sparse Matrix:** A matrix with mostly zero entries, typical in PDE discretization.
    
- **Finite Volume Method (FVM):** A discretization technique that integrates conservation laws over control volumes, inherently ensuring conservation.
    

---

# 📅 Homework

- Apply the FTCS and BTCS schemes to the 1D diffusion equation and compare results.
    
- Perform a **Von Neumann stability analysis** for the FTCS scheme.
    
- Implement the Crank–Nicolson method for a transient heat conduction problem.