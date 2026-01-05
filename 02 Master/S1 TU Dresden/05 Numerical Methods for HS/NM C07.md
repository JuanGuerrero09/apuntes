---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-27
Last Modified: Thursday 27th November 2025 17:01
---
# Revisar igual

# 📅 Thursday 27th November 2025

# 📒 Class Summary

The lecture introduced the challenges of **Modelling Turbulent Flows**, defining the required **spatial scales** for accurate simulation, which are governed by the **Kolmogorov scale**. The session covered **Direct Numerical Simulation ($\text{DNS}$)** as a method to solve the governing equations ($\text{NSE}$) directly. The final part detailed various **Selected Scenarios**, emphasizing **Laminar** (Poiseuille, Couette) and **Vortical** (Lid-driven cavity) flows, and expanding into **Buoyancy-Driven Flows** (Rayleigh-Bénard, Lock Exchange) used to study density effects.

---

# 📝 Notes

## Modelling Turbulent Flows

### I. Scales and Constraints ($\text{DNS}$)

Turbulent flow is characterized by chaotic, multi-scale fluid motion.

- **Eddies:** These are **swirling, rotational structures** that characterize turbulence. Energy cascades from the large, energy-containing eddies down to smaller scales.

- **Kolmogorov Scale ($\eta$):** The **smallest length scale** of turbulent motion. Kinetic energy is dissipated into heat by viscosity at this scale. This scale dictates the minimum resolution required for accurate simulation (i.e., $\Delta x \leq \eta$).


#### Direct Numerical Simulation ($\text{DNS}$)

$\text{DNS}$ solves the governing equations of fluid mechanics directly, capturing all turbulent scales.

- **Governing Equations:** The complete system of fluid mechanics equations must be solved: Mass Conservation (Continuity Equation), Momentum Conservation ($\text{NSE}$), and Advection-Diffusion Transport (for scalars).

- **Dominant Mechanisms:** The flow regime is dictated by the **Reynolds Number ($\text{Re}$)**: low $\text{Re}$ is **laminar**, and high $\text{Re}$ is **turbulent**.

- **Solution Method:** The system can be integrated using the **$\text{SIMPLE}$ algorithm** (or similar strong-coupling methods) to handle the pressure-velocity coupling required for the four unknowns ($\mathbf{u}, v, w, p$).


---

## Selected Flow Scenarios and Evaluation Tools

Solving the $\text{NSE}$ numerically is often studied through idealized flow scenarios, categorized by the dominant driving force (shear, pressure, or buoyancy).

### 1. Shear and Pressure-Driven Laminar Flows

These scenarios are simple models used primarily for **code validation** against known analytical solutions.

|**Scenario**|**Driving Force**|**Setup/Focus**|**Key Evaluation Tools**|
|---|---|---|---|
|**Poiseuille Flow**|**Pressure gradient** ($\partial p / \partial x \ne 0$)|Laminar flow between two stationary parallel plates (analogy to groundwater flow).|Velocity profile plots, comparison to **analytical parabolic solution**.|
|**Couette Flow**|**Moving wall** (viscous drag)|Laminar flow where one boundary moves at constant velocity ($U_{\text{lid}}$).|Velocity profile plots, comparison to **analytical linear solution**.|

### 2. Vortical Flows

These scenarios test a solver's ability to handle complex internal rotation and recirculation.

- **Lid-Driven Cavity:** A standard $\text{CFD}$ benchmark problem. The flow in a square cavity is driven by the movement of its top wall.

    - **Focus:** Generates large recirculating zones (eddies) and high **vorticity** patterns, particularly near corners.
    
    - Vorticity ($\omega$): A measure of the local rotation of a fluid element.
    $$\mathbf{\omega = \nabla \times u}$$

### 3. Buoyancy-Driven Flows (Density Effects)

These scenarios introduce density gradients, governed by the Boussinesq approximation, where fluid motion is driven by gravity acting on density differences (buoyancy).

|**Scenario**|**Driving Mechanism**|**Focus**|**Key Evaluation Tools**|
|---|---|---|---|
|**Rayleigh-Bénard Convection**|**Heat Flux** (vertical temperature gradient)|Study of thermal instability where hot fluid rises and cold fluid sinks, generating internal recirculation cells.|Temperature and density profiles, **Heat flux** quantification.|
|**Lock Exchange**|**Gravity Current** (horizontal density gradient)|Two fluids of different densities are initially separated by a barrier ("lock") and then released. The heavier fluid flows under the lighter fluid.|Density/salinity profiles, velocity of the **gravity current front**, mixing rates.|
|**Taylor-Green Vortices**|**Initial forcing** (Analytical flow field)|A 2D or 3D flow that starts with a sinusoidal velocity field and decays due to viscosity.|Study of flow decay, energy dissipation, and **vorticity** dynamics.|

---

# 💡 Key Takeaways

- **$\text{DNS}$** solves the full $\text{NSE}$ system but requires spatial discretization fine enough to capture the **Kolmogorov scale ($\eta$)**, which is the smallest scale of dissipation.

- Flows are categorized by the dominant force: **Laminar** (Pressure/Shear-driven), **Vortical** (Lid-driven cavity), and **Buoyancy-Driven** ($\text{Rayleigh-Bénard}$, $\text{Lock Exchange}$).

- **Buoyancy-Driven Flows** (e.g., thermal/salinity gradients) are essential for studying mixing, heat flux, and gravity currents in natural waters.

- **Vorticity** ($\omega = \nabla \times u$) is a measure of local fluid rotation, crucial for analyzing turbulent and swirling flows.

- The $\text{NSE}$ flow regime is dictated by the **Reynolds Number ($\text{Re}$)**: low $\text{Re}$ is laminar, and high $\text{Re}$ is turbulent.


---

# 💭 Questions

- Why is the computational cost of **Direct Numerical Simulation ($\text{DNS}$)** typically too high for real-world engineering problems involving high Reynolds numbers?
    
- Explain the physical relationship between the **Reynolds Number ($\text{Re}$)** and the existence of the **Kolmogorov scale ($\eta$)** in a turbulent flow.
    
- How does the **vorticity equation** ($\omega = \nabla \times u$) fundamentally connect the velocity field ($\mathbf{u}$) to the rotational characteristics of the fluid?
    
- What is the primary difference in the **driving force** and resulting **velocity profile** between **Poiseuille flow** and **Couette flow**?
    
- What is the difference between the driving mechanisms in **Rayleigh-Bénard convection** and a **Lock Exchange** scenario?
    

---

# 🐢 Definitions

- **Turbulence:** A flow regime characterized by chaotic, multi-scale, diffusive, and rotational motion.
    
- **Kolmogorov Scale ($\eta$):** The smallest length scale in a turbulent flow where viscous forces dominate and dissipate kinetic energy into heat.
    
- **Vorticity ($\omega$):** A vector quantity that describes the local spinning motion of a fluid element ($\omega = \nabla \times u$).
    
- **Lid-Driven Cavity:** A standard $\text{CFD}$ benchmark problem testing a solver's ability to capture vortices and recirculation zones driven by the motion of one boundary wall.
    
- **Rayleigh-Bénard Convection:** A scenario used to study buoyancy-driven flow generated by heating a fluid from below.
    
- **Gravity Current:** A primarily horizontal flow driven by a density difference (e.g., the flow of saline water under fresh water in a Lock Exchange).
    

---

# 📅 Homework

- Research the typical range of the **Kolmogorov scale ($\eta$)** in the atmosphere versus a small river channel.
    
- Identify the boundary conditions typically imposed on the moving wall and the stationary walls in the **Lid-Driven Cavity** benchmark problem.
    
- Identify the dimensionless number that governs the onset of instability in **Rayleigh-Bénard convection** (e.g., $\text{Rayleigh number}$).



