---
Class: "[[Numerical Methods for Hydro Sciences]]"
Professor:
Date: 2025-10-15
Last Modified: Wednesday 15th October 2025 09:10
---
# Wednesday 15th October 2025

# 📒Class Summary

Introduction to **transport processes** in the environment and their **mathematical representation** through differential equations.  
Focus on understanding how **ordinary differential equations (ODEs)** and **partial differential equations (PDEs)** describe the evolution of physical quantities in **time** and **space**.

Key applications include **fluid flow**, **sediment transport**, **heat transfer**, and **solute diffusion**, which are essential for hydroscience and environmental engineering.

---
# 🕸️Resources

[[Apuntes/02 Master/S1 TU Dresden/05 Numerical Methods for HS/Slides/01_NMHS_Introduction.pdf|01_NMHS_Introduction | Slides]]


---
# 📝 Notes

## 🌊 Transport Processes in the Environment

> “Everything flows.” — Heraclitus

Transport processes describe the **movement of mass, energy, or momentum** within a system.  
They are **multiphysics problems**, often involving interactions between:

- **Fluid dynamics** (e.g., flow of water or air)
- **Thermodynamics** (heat exchange)
- **Solid mechanics** (deformation and stress)
- **Chemistry** (reactions and solute transport)
- **Biology** (biochemical reactions, microbial transport)
---
### 💧 Porous Media Flow

Water flows through **porous media** (e.g., soil, sand, aquifers) due to a **pressure gradient**.  
This process is described by **Darcy’s law**, a fundamental PDE in hydrology.

---
### 🪨 Sediment Transport

The **movement of sediments** is governed by hydraulic forces and the properties of the particles.  
Modes of sediment transport include:

- **Bed load transport** – particles roll or slide along the bed.
- **Suspension** – particles are carried within the flow.
- **Pyroclastic flow** – high-temperature, high-density mixtures of particles and gases.
- **Mudslides and debris flows** – non-Newtonian, gravity-driven flows.

---

## 📈 Derivatives and Differential Equations
A **derivative** expresses a **rate of change** — how a quantity varies in time or space.

A **differential equation (DE)** relates one or more **unknown functions** and their **derivatives**.  
These equations express **physical laws** such as conservation of mass, momentum, and energy.

---
### 🔹 Ordinary Differential Equations (ODEs)

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

### 🔹 Partial Differential Equations (PDEs)
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

## ⚖️ Conservation of Matter (2D Example)

Consider a **control volume** through which matter flows.

The flux $J_\phi$ of a quantity $\phi$ across an area element $dA$ is:
$$J_\phi = \phi_u \, dA$$
The **rate of change of $\phi$** within the control volume is related to the **net flux** entering or leaving the boundaries.

---

## 🌊 The Wave Equation

Describes the **propagation of waves** (acoustic, elastic, surface) in a medium.
$$\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}$$
where:

- $u(x,t)$ is the displacement,
- $c$ is the wave speed.

It is a **hyperbolic PDE**, meaning information travels at a **finite speed** in both directions.

> This will be the first exercise in the course.

---

## 💨 Transport by Diffusion

### Fick’s First Law

Describes the **flux of particles** moving from regions of high to low concentration:
$$J = -D \frac{\partial C}{\partial x}$$
where:

- $J$ = flux [mol·m⁻²·s⁻¹],
- $D$ = diffusion coefficient [m²·s⁻¹],
- $\frac{\partial C}{\partial x}$ = concentration gradient.

---

### Fick’s Second Law

Describes the **temporal evolution** of concentration due to diffusion:
$$\frac{\partial C}{\partial t} = D \frac{\partial^2 C}{\partial x^2}$$
This is a **parabolic PDE** representing **mass conservation** for diffusive transport.

---

## 🌬️ Advection–Diffusion–Transport Equation

Combines **advection** (bulk motion) and **diffusion** (molecular spreading):
$$\frac{\partial C}{\partial t} + \vec{v} \cdot \nabla C = D \nabla^2 C$$
- The term $\vec{v} \cdot \nabla C$ represents **advective transport**.
- The term $D \nabla^2 C$ represents **diffusive spreading**.
- Together, they describe **solute transport in flowing water**, **heat transfer**, or **pollutant dispersion**.

---

## 🧩 Types of PDEs

|Type|Information Propagation|Example|Typical Process|
|---|---|---|---|
|**Hyperbolic**|Finite speed in two directions|Wave equation|Vibrations, sound waves|
|**Parabolic**|One-directional in time|Heat or diffusion equation|Diffusion, unsteady flow|
|**Elliptic**|No specific direction (steady state)|Laplace equation|Potential flow, equilibrium|

Selecting the **appropriate numerical method** depends strongly on the PDE type.

---

## ✅ Well-Posed Problems

A **well-posed problem** satisfies three conditions:

1. A **solution exists**.
2. The **solution is unique**.
3. The **solution changes continuously** with the initial or boundary conditions.

If any of these are not fulfilled, the problem is **ill-posed**, making it unstable or non-physical for numerical simulation.

---

# 💡 Key Takeaways

- Transport processes describe how **mass, energy, and momentum** move through environmental systems.
- **ODEs** describe temporal changes; **PDEs** describe spatial–temporal changes.
- **Diffusion**, **advection**, and **wave propagation** are fundamental PDE types.
- Understanding the **type of PDE** (hyperbolic, parabolic, elliptic) guides the **numerical solution method**.
- A **well-posed problem** ensures stability, uniqueness, and physical realism.

---

# 💭 Questions

- What are the physical meanings of advection, diffusion, and dispersion?
- How does the distinction between ODEs and PDEs influence modeling approaches?
- Why must a problem be well-posed before applying numerical methods?
- Which PDE type (hyperbolic, parabolic, elliptic) would best represent groundwater flow?
---
# 🐢 Definitions

- **Advection:** Transport of a quantity (mass, heat, solute) by the **bulk motion** of a fluid.
- **Diffusion:** Spreading of particles from **high to low concentration** due to random molecular motion.
- **Dispersion:** Combined effect of advection and diffusion causing **solute spreading** in flow systems.
- **Non-Newtonian Flow:** Flow where **viscosity varies with shear rate**, unlike water or air.
- **Nabla Operator ($\nabla$):** Vector operator expressing gradient, divergence, and curl in space.
- **Material Derivative ($\frac{D}{Dt}$):** Rate of change of a property **following a moving particle** in a flow.
- **Well-posed Problem:** A problem that has a **solution**, that is **unique**, and that **depends continuously** on input data.

---
# 📅 Homework

- Review Fick’s laws and identify physical analogies in heat conduction.
- Classify different PDEs from environmental processes (e.g., heat, flow, diffusion).

