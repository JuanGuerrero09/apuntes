---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-26
Last Modified: Wednesday 26th November 2025 09:21
---
# Wednesday 26th November 2025

# 📒Class Summary

The lecture provided an introduction to the **Basic Equations of Fluid Mechanics** used to describe fluid and sediment transport. The fundamental principles discussed include **Mass Conservation** (Continuity Equation), **Momentum Conservation** (Navier-Stokes Equations, $\text{NSE}$), and **Scalar Transport** (Advection-Diffusion Equation). The session emphasized the **vectorial nature** of the $\text{NSE}$, the concept of **incompressible flow**, and the challenge of **coupling** the momentum and mass equations, leading to a discussion of simplified flow regimes ($\text{Stokes}$ and $\text{Euler}$) and the use of **non-dimensional analysis** (Reynolds number).

---
# 📝 Notes

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
# 💡 Key Takeaways

- Fluid motion is governed by **Mass (Continuity)** and **Momentum (NSE)** conservation.
- **Incompressible Flow** simplifies the Continuity equation to $\nabla \cdot \mathbf{u} = 0$.
- The **NSE** is a vectorial equation balancing local change, convection, pressure, viscosity, and external forces.
- The flow can be simplified to **Stokes equations** (viscosity dominates, low $\text{Re}$) or **Euler equations** (inertia dominates, high $\text{Re}$).
- The **Reynolds Number ($\text{Re}$)**, derived from non-dimensional $\text{NSE}$, is the fundamental parameter describing the ratio of inertial to viscous forces.
- Numerical solutions require **strong coupling algorithms** (like $\text{SIMPLE}$) to manage the relationship between velocity ($\vec{u}$) and pressure ($p$).
- **Strong coupling algorithms** like **$\text{SIMPLE}$** solve this by iteratively correcting the pressure field, using the **Laplacian of the Pressure Correction ($\nabla^2 p'$)** (i.e., the Poisson equation) to enforce $\nabla \cdot \vec{u} = 0$.
- The **Non-Dimensional NSE** shows the viscous term is scaled by $\mathbf{1/\text{Re}}$.
- The **$\text{NSE}$ system** is numerically challenging due to **Pressure-Velocity Decoupling** in incompressible flow.
- **Scalar Transport** is governed by the $\text{Pe}$ number, which relates **Advection** to **Diffusion** and is composed of $\text{Re}$ and $\text{Sc}$.
- **Weak Coupling** ($\text{Projection}$ method) is a sequential approach, while **Strong Coupling ($\text{SIMPLE}$)** is an iterative approach that guarantees mass conservation ($\nabla \cdot \vec{u} \approx 0$).
- The $\text{SIMPLE}$ algorithm relies on solving the **Poisson equation** for the **Laplacian of the Corrected Pressure ($\nabla^2 p'$)** to eliminate the divergence error.
- The **Convergence Criterion ($\epsilon$)** controls the stability and accuracy of the $\text{SIMPLE}$ iteration loop.

---

# 💭 Questions

- Why is the full Continuity equation essential when modeling **compressible** flow, but simplifies to $\nabla \cdot \mathbf{u} = 0$ for **incompressible** flow?

- Explain, using the $\text{NSE}$, why the **Stokes equation** is valid only when the fluid velocity ($|\vec{u}|$) is very small.

- What is the purpose of non-dimensionalizing the $\text{NSE}$, and how does the resulting non-dimensional form explicitly incorporate the **Reynolds Number ($\text{Re}$)**?

- Explain the numerical instability issue that arises when using a **weak coupling** approach to solve the $\text{NSE}$ and Continuity equation.

- How do sediment-laden flows differ from clear water in terms of **rheology** (viscosity)?

- What happens to the $\text{NSE}$ non-dimensional form if the flow is extremely fast, resulting in $\text{Re} \to \infty$?

- What is the primary difference in **computational cost** between the **Weak Coupling** and **Strong Coupling ($\text{SIMPLE}$)** approaches?

- Explain how the **Laplacian operator** ($\nabla^2$) in the Poisson equation for $p'$ facilitates the global adjustment of the pressure field needed for continuity.

- Why is the **Virtual Potential Temperature ($\theta_v$)** used in atmospheric stability analysis (previous lecture) chemically analogous to the use of the **Reynolds number** here in fluid dynamics?

---

# 🐢 Definitions

- **Navier-Stokes Equations ($\text{NSE}$):** The set of partial differential equations that describe the motion of viscous fluid substances, representing momentum conservation.

- **Continuity Equation:** The $\text{PDE}$ representing the conservation of mass in a fluid.

- **Incompressible Flow:** A flow regime where the fluid density ($\rho$) is constant.

- **Reynolds Number ($\text{Re}$):** A dimensionless number that quantifies the ratio of inertial forces to viscous forces in a fluid flow.

- **Stokes Equations:** A linear simplification of the $\text{NSE}$ applicable to very slow, creeping flows (low $\text{Re}$) where inertial terms are neglected.

- **Rheology:** The study of the flow of matter, particularly non-Newtonian behavior (e.g., complex viscosity of sediment flows).

-  **Péclet Number ($\text{Pe}$):** The dimensionless ratio $\frac{\text{Advective Transport}}{\text{Diffusive Transport}}$.

- **Schmidt Number ($\text{Sc}$):** The dimensionless ratio of momentum diffusivity ($\nu_f$) to mass diffusivity ($D_s$).

- **Acoplamiento Fuerte:** In $\text{CFD}$, an iterative method (like $\text{SIMPLE}$) that ensures the velocity field satisfies the incompressibility condition ($\nabla \cdot \vec{u}=0$).

- **Laplacian of the Corrected Pressure ($\nabla^2 p'$):** The key parameter in the Poisson equation used by the $\text{SIMPLE}$ algorithm to determine the pressure adjustment necessary for continuity.

- **Convergence Criterion ($\epsilon$):** A predefined tolerance, typically the $L^2$-norm of the divergence residual, used to halt the $\text{SIMPLE}$ iteration loop.

---

# 📅 Homework

- Research the $\text{SIMPLE}$ algorithm and describe the function of the **Poisson equation** within its iterative loop.

- Derive the stability condition ($\frac{c \Delta t}{\Delta x} \leq 1$) for the 1D **Advection-Diffusion** equation when solved using the **Explicit ($\text{FTCS}$) ** scheme, assuming the diffusion term is negligible.

- Using the $\text{NSE}$ form, identify which term accounts for the **pressure correction** necessary to satisfy the incompressibility condition ($\nabla \cdot \mathbf{u} = 0$).