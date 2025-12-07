---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-05
Last Modified: Wednesday 5th November 2025 09:24
---
# 📅 Wednesday 5th November 2025

# 📒 Class Summary

The lecture introduced the numerical solution of the **One-Dimensional Wave Equation** using the **Finite Difference Method ($\text{FDM}$)**. The discussion focused on deriving the **explicit update formula** using the Central Difference Scheme ($\text{CDS}$) for both space and time, and contrasting it with the implicit scheme. Crucially, the session detailed how different **boundary conditions (Dirichlet, Neumann, and Periodic)** are implemented and how they physically affect the wave's propagation and reflection behavior.

---

# 📝 Notes

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

# 💡 Key Takeaways

- The **1D Wave $\text{PDE}$** is numerically solved using $\text{CDS}$ for both temporal and spatial derivatives, resulting in an **Explicit Update Formula**.
- The **stability** of the explicit solution is strictly controlled by the **$\mathbf{CFL}$ condition** ($\frac{c \Delta t}{\Delta x} \leq 1$).
- **Dirichlet $\text{BCs}$** (fixed ends) cause the wave to **reflect and invert** its sign.
- **Neumann $\text{BCs}$** (zero-gradient ends) cause the wave to **reflect and maintain** its sign.
- **Periodic $\text{BCs}$** enforce continuity, causing the wave to **exit and re-enter** the domain without reflection.

---

# 💭 Questions

- Why does the numerical solution of the wave equation require defining the value at **two** initial time steps ($u^0$ and $u^1$) instead of just one, as is typical for diffusion equations?
    
- Explain the trade-off between **numerical noise** (as seen with $dx = 0.01$) and **stability** in the explicit $\text{CDS}$ scheme for the wave equation.
    
- In the explicit update formula, how does the term $\lambda^2 = c^2\frac{\Delta t^2}{\Delta x^2}$ relate directly to the $\text{CFL}$ number, and what physical ratio does the $\text{CFL}$ number represent?
    
- How would the implementation of an **implicit** $\text{BC}$ (like Dirichlet) differ if the entire scheme were the implicit $\text{CDS}$ in time (requiring matrix solution), compared to the explicit scheme shown?
    

---

# 🐢 Definitions

- **Wave Equation:** A second-order $\text{PDE}$ that models wave phenomena by relating the second derivative in time ($\partial^2 u / \partial t^2$) to the second derivative in space ($\partial^2 u / \partial x^2$).
    
- **Central Difference Scheme ($\text{CDS}$):** A finite difference approximation that estimates a derivative using data points centered around the point of interest, yielding second-order accuracy ($O(\Delta x^2)$).
    
- **CFL Criterion:** The necessary condition for the stability of explicit time integration schemes, which requires the domain of dependence of the $\text{PDE}$ to be contained within the numerical domain of dependence.
    
- **Dirichlet Boundary Condition:** A $\text{BC}$ that specifies the value of the solution ($u$) itself at the boundary.
    
- **Neumann Boundary Condition:** A $\text{BC}$ that specifies the value of the derivative or flux ($\partial u / \partial x$) at the boundary.
    
- **Periodic Boundary Condition:** A $\text{BC}$ that forces the solution and its derivatives to be identical at the opposing edges of the domain.
    

---

# 📅 Homework

- Research the exact relationship between the Courant number ($\text{CFL}$) and the stability criteria for the explicit $\text{CDS}$ wave equation scheme.
    
- Sketch the difference in the wave shape upon reflection for a wave hitting a **Dirichlet $\text{BC}$** (fixed end) versus a **Neumann $\text{BC}$** (free end).
    
- Determine how the stability condition changes if the explicit spatial derivative was approximated using a **first-order forward difference** scheme instead of the $\text{CDS}$.