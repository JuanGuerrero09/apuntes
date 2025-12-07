---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-13
Last Modified: Thursday 13th November 2025 17:08
---
# Thursday 13th November 2025

# 📒 Class Summary

The lecture focused on the numerical solution of the **Two-Dimensional Diffusion Equation** (Heat Equation) using the **Implicit** time integration scheme, specifically **Backward Euler** in time combined with Central Differences in space (**BTCS** scheme). The core objective was to derive the resulting system of **linear algebraic equations** that must be solved at every time step, contrasting the unconditional stability of this method with the conditional stability of the explicit approach previously discussed.

---

# 📝 Notes

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

# 💡 Key Takeaways

- The **Implicit (Backward Euler) scheme** for 2D diffusion is **unconditionally stable** and eliminates the need for the strict $\Delta t$ limit required by explicit methods.

- The method results in a **sparse linear system** ($\mathbf{A}\boldsymbol{\Phi}^{k+1} = \mathbf{b}$) where the $\mathbf{b}$ vector is simply the state of the system at the previous time ($k$).

- The central node coefficient $\mathbf{A_P}$ includes contributions from its four neighbors: $\mathbf{A_P} = 1 + 2\alpha + 2\beta$.

- The large $\Delta t$ permitted by implicit schemes often compensates for the increased **computational effort** required for the matrix inversion/solve at each step.


---

# 💭 Questions

- Why is the BTCS scheme (Backward Time, Central Space) for the diffusion equation **unconditionally stable**, while the FTCS scheme (Forward Time, Central Space) is conditionally stable?
    
- If $\Delta x = \Delta y$, simplify the central node coefficient $A_P$ and the $\text{RHS}$ term $Q_P$ using only $\alpha$.
    
- In the matrix $\mathbf{A}$, how would a **Dirichlet boundary condition** (fixed value) be implemented, and how does this implementation fundamentally change the corresponding row of $\mathbf{A}$ and the $\mathbf{b}$ vector?
    
- Explain the difference between the **source term ($\mathbf{b}$ vector)** in the implicit BTCS scheme and the source term in the Crank–Nicolson scheme for this $\text{PDE}$.
    

---

# 🐢 Definitions

- **Backward Difference (Implicit):** A method of approximating the time derivative using the value at the _future_ time step, $k+1$.
    
- **Unconditional Stability:** The property of a numerical scheme where the solution remains bounded regardless of the size of the time step ($\Delta t$).
    
- **Sparse Matrix:** A matrix in which most of the elements are zero. This structure is common in $\text{FDM}$ and $\text{FVM}$ problems and allows for specialized, efficient solution algorithms.
    
- **Block-Tridiagonal Matrix:** A matrix where the non-zero elements are concentrated in blocks along the main diagonal and the two adjacent diagonals. This structure arises naturally when solving 2D $\text{PDE}$s by unwrapping the 2D grid into a 1D vector.
    

---

# 📅 Homework

- Convert the final BTCS algebraic equation into a matrix-vector notation ($\mathbf{A}\boldsymbol{\Phi}^{k+1} = \mathbf{b}$) for a small 3x3 grid (9 interior nodes).
    
- Research and compare the computational costs (in terms of operations per time step) of solving a sparse system using a **Direct Solver (e.g., $\text{LU}$ Decomposition)** versus an **Iterative Solver (e.g., $\text{Conjugate Gradient}$)**.
    
- Determine the stability condition for the **Explicit (FTCS)** scheme applied to the 2D diffusion equation, assuming $\Delta x = \Delta y$.

