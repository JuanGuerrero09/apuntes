---
Class: "[[03 Hydraulic Engineering]]"
Date: 2025-10-23
Last Modified: Thursday 23rd October 2025 09:22
---
# Thursday 23rd October 2025

# 📒Class Summary

Introduction to **Open Channel Hydraulics**, focusing on theoretical principles, flow classification, and discharge calculation methods (Chézy, Manning-Strickler, and Darcy-Weisbach).  
Key dimensionless numbers — **Reynolds** and **Froude** — are used to describe flow regimes (laminar, turbulent, subcritical, supercritical).

---
# 🕸️Resources

Lecture slides on flow resistance, empirical equations (Chézy, Manning, Darcy-Weisbach), and channel hydraulics diagrams.
- Lecture_MHSE06_WiSe_L2.pdf

---
# 📝 Notes

## 🌊 Open Channel Hydraulics

### General Energy Gradient Equation

$$
\nabla  E_n = \frac{
C}{2}\frac{
W}{g}\frac{
U^2}{r_c}
$$
Where:

- **C** = 1.5 for _subcritical flow_ and 2 for _supercritical flow_.
- **W** = channel width.
- **U** = mean velocity.
- **$r_c$** = radius of curvature.

This equation expresses the energy slope or energy gradient due to curvature and velocity distribution.

---

## ⚙️ Theoretical Principles

**Discharge (Q)** and **water level (h)** are key for:
- Flood protection and forecasting.
- Calibration of hydraulic models.
- Dam control and regulation.
- Sediment transport estimation.
- Navigation and ecological management.
A **1D approach** assumes velocity is constant along the cross-section — suitable for simple geometries.  
If velocity varies in space or time, a **2D or 3D numerical model** is required.
![[Pasted image 20251023093756.png]]

![[Pasted image 20251023094122.png]]

---

## 💧 Discharge Calculation in Open Channels (1D)

### Brahms / de Chézy Formula
$$v_m = C \sqrt{r_{hy}S_E}$$

Where:
- **C** = Chézy coefficient (depends on roughness and geometry).
- **$r_{hy}$** = hydraulic radius = $\frac{A}{P}$ (A = area, P = wetted perimeter).
- **$S_E$** = energy slope or energy grade line.

> Purely empirical and rarely used today — replaced by **Manning** and **Darcy-Weisbach** formulations.

![[Pasted image 20251023094330.png]]

---

### Steady and Uniform Flow
For **steady, uniform flow**:
$$S_E = S_{WS} = S_{Bed} = S$$
>Energy slope is equal to water surface slope and bed slope.

That is, the slopes of the **energy line**, **water surface**, and **channel bed** are equal.

- **Steady flow:** inflow = outflow (no storage or retention).
- **Uniform flow:** depth and velocity remain constant along the channel.
#### Steady Flow Conditions:
$$Q_{in} = Q_{out}$$
$$
\frac{\partial y}{\partial t} = 0\quad \frac{\partial V}{\partial t} = 0 \quad \frac{\partial A}{\partial t} = 0 
$$
> “Time” is the defining criterion — parameters do not vary with time.
#### Uniform Flow
$$
\frac{\partial y}{\partial x} = 0\quad \frac{\partial V}{\partial x} = 0 \quad \frac{\partial A}{\partial x} = 0 
$$

>“Space” is the defining criterion — parameters do not vary along the flow direction.

![[Pasted image 20251023095646.png]]

---
## 🌫️ Flow Regimes: Laminar vs Turbulent

![[Pasted image 20251023095758.png]]

Flow regime depends on the **Reynolds number (Re)** — the ratio of inertial to viscous forces.

For open channels:

$$
\begin{align}
Re = \frac{v\; 4 \; r_{hy}}{v} 
\end{align}
$$
Where:

- **v** = mean velocity
- **$r_{hy}$** = hydraulic radius (m)
- **ν** = kinematic viscosity (m²/s)

| Flow Type        | Condition       | Characteristics         |
| ---------------- | --------------- | ----------------------- |
| **Laminar**      | Re < 500        | Smooth, orderly layers  |
| **Transitional** | 500 < Re < 2000 | Mixed behaviour         |
| **Turbulent**    | Re > 2000       | Chaotic, eddy-dominated |

At **20°C**, water properties are approximately:

- Dynamic viscosity (μ) = 1.002 × 10⁻³ N·s/m²
- Kinematic viscosity (ν) = 1.004 × 10⁻⁶ m²/s
- Density (ρ) = 998 kg/m³

---

### Hydraulic Diameter and Radius

$$D_h =4\frac{A}{P_W} \quad \text{and} \quad R_h =  \frac{A}{P_W}$$ 

These describe the relationship between cross-sectional area ($A$) and wetted perimeter ($P_W$), critical in calculating resistance and flow type.

---
### Turbulent Flow Types

- **Hydraulically smooth:** roughness elements are small compared to viscous sublayer.
- **Transitional:** partial influence of roughness.
- **Hydraulically rough:** turbulence fully developed; roughness dominates friction.
---
#### 🌊 Froude Number

The **Froude number (Fr)** compares **inertial** and **gravitational** forces:
$$
Fr = \frac{v}{\sqrt{g\;h}}
$$
Where $\sqrt{g h}$ is the **wave celerity** (speed of small surface waves).

|Flow Type|Condition|Description|
|---|---|---|
|**Subcritical**|Fr < 1|Slow, deep flow; gravity dominates.|
|**Critical**|Fr = 1|Transition point; energy transfer maximum.|
|**Supercritical**|Fr > 1|Fast, shallow flow; inertia dominates.|
At **Fr = 1**, a **hydraulic jump** occurs — a sudden transition from supercritical to subcritical flow, dissipating energy.  
Wave speed: $c = \sqrt{g y}$

> **Practical test:** If a floating object can move upstream, the flow is subcritical; if it only drifts downstream, it’s supercritical.
---

## ⚖️ Discharge Calculation Methods

### Gauckler–Manning–Strickler Equation

$$v_m = k_{St} \; r_{hy}^{2/3} \; S_E^{1/2}$$

Where:

- **$k_{st}$** = Strickler roughness coefficient [m¹ᐟ³/s]
- **$r_{hy}$** = hydraulic radius [m]
- **$S_E$** = energy slope

**Relationship:**  
$$n = \frac{1}{k_{St}}$$
where **n** is the **Manning roughness coefficient**.

Roughness depends on material, vegetation, and geometry — it does **not change significantly with water level**.
###### Typical Roughness Coefficients ($k_{St}$)

![[Pasted image 20251101181714.png]]
![[Pasted image 20251101181722.png]]

### Darcy–Weisbach Equation

$$
v_m = \frac{1}{\sqrt{\lambda}}\sqrt{8 \cdot g\cdot r_{hy}\cdot S_E}
$$

Where:

- **λ** = friction factor (from **Colebrook equation**)- :

$$\frac{1}{\sqrt{\lambda}} = -2.0 \log_{10}\left(\frac{k_s}{3.7 D_h} + \frac{2.51}{Re \sqrt{\lambda}}\right)$$

- **C (Chézy)** is related to λ as:

$$
C = \frac{\sqrt{8 \; g}}{\sqrt{\lambda}}
$$

> This approach accounts for roughness variation with depth — more accurate for complex natural channels.

##### Sample Calculation - Uniform Roughness

![[Pasted image 20251102175044.png]]

## 🧮 Composite Roughness in Non-Uniform Channels

When a cross-section has multiple materials or sub-sections, use **weighted averages**.

### Manning–Strickler:

$$k_{St,total} = \left[\frac{P_{total}}{\sum_{i=1}^n \left(\frac{p_i}{k_{St,i}^{3/2}}\right)}\right]^{3/2}$$

### Darcy–Weisbach:

$$\frac{1}{\sqrt{\lambda_{total}}} = \sqrt{\frac{P_{total}}{\sum_{i=1}^n (p_i \, \lambda_i)}}$$

Where:

- **pᵢ** = wetted perimeter of subsection _i_
- **$k_{st,i}$** = Strickler coefficient of subsection _i_

#### Properties of typical channel cross sections
![[Pasted image 20251102181830.png]]

---
# 🐢 Definitions

- **Hydraulic Radius (Rₕy):** Ratio of flow area to wetted perimeter — represents flow efficiency.
- **Froude Number (Fr):** Dimensionless indicator comparing inertial to gravitational forces.
- **Reynolds Number (Re):** Dimensionless number comparing inertial to viscous forces.
- **Subcritical Flow:** Slow, deep, gravity-dominated flow (Fr < 1).
- **Supercritical Flow:** Fast, shallow, inertia-dominated flow (Fr > 1).
- **Energy Slope (S_E):** Rate of energy loss per unit length of flow.
- **Manning Coefficient (n):** Empirical measure of channel roughness.
- **Chézy Coefficient (C):** Parameter linking velocity, hydraulic radius, and slope.
- **Darcy–Weisbach Friction Factor (λ):** Dimensionless resistance parameter for turbulent flow.
- **Colebrook Equation:** Empirical formula linking λ, roughness, and Reynolds number.

---
# 📘 Summary

- **Open channel hydraulics** focuses on flow behavior under gravity-driven conditions.
- **Flow classification** depends on time (steady/unsteady) and space (uniform/non-uniform).
- **Reynolds and Froude numbers** define turbulence and critical flow regimes.
- **Discharge equations** (Manning, Chézy, Darcy–Weisbach) quantify velocity based on slope, roughness, and geometry.
- **Composite roughness** methods allow realistic modeling of natural, non-uniform channels.

---
# 📅 Homework



