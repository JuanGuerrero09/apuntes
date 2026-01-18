---
Class: "[[Climatology]]"
Date: 2025-11-21
Last Modified: Friday 21st November 2025 11:16
---
# Friday 21st November 2025

# 📒 Class Summary

Navier–Stokes equations for the atmosphere, Reynolds decomposition, turbulent fluxes, turbulence kinetic energy (TKE) budget, closure approaches, and flux–gradient similarity (MOST).

---

# 📝 Notes

## Basic Equations of Atmospheric Turbulence

The behaviour of atmospheric flow — including wind, temperature, humidity and turbulence — is governed by the **Navier–Stokes equations**, which express the **balance of forces** acting on air parcels.

These equations form the foundation of **boundary-layer meteorology**, weather prediction, and micrometeorology.

---

### Navier–Stokes Equations (Atmospheric Form)

The Navier–Stokes equations describe how wind components evolve:

### Navier–Stokes Equations: The Force Balance

In the rotating frame of the Earth, the acceleration of an air parcel is determined by the sum of specific forces.

$$\begin{align} \underbrace{\frac{\partial u}{\partial t}}_{\text{Tendency}} &= \underbrace{- \left( u \frac{\partial u}{\partial x} + v \frac{\partial u}{\partial y} + w \frac{\partial u}{\partial z} \right)}_{\text{Advection}} \underbrace{- \frac{1}{\rho} \frac{\partial p}{\partial x}}_{\text{PGF}} + \underbrace{f v}_{\text{Coriolis}} + \underbrace{\nu \nabla^2 u}_{\text{Viscosity}} \\ \underbrace{\frac{\partial w}{\partial t}}_{\text{Tendency}} &= - \left( u \frac{\partial w}{\partial x} + v \frac{\partial w}{\partial y} + w \frac{\partial w}{\partial z} \right) - \frac{1}{\rho} \frac{\partial p}{\partial z} + \underbrace{g}_{\text{Gravity}} + \nu \nabla^2 w \end{align}$$

#### Detailed Term Analysis

-  **Tendency** $\frac{\partial u}{\partial t}$:  Local acceleration — describes how wind at a fixed point changes with time. In steady-state modeling, we often assume this is zero.

- **Advection (Non-linear)**:  $u\frac{\partial u}{\partial x} +  v\frac{\partial u}{\partial y} +  w\frac{\partial u}{\partial z}$ : Transport of momentum by the flow itself. The "Inertial" term. It represents the transport of momentum. Because it involves the product of velocities ($u_i \cdot u_j$), it is the source of chaotic turbulence.
    
- **PGF**: **Pressure gradient force**  $-\frac{1}{\rho} \frac{\partial p}{\partial x}$ Air accelerates from high to low pressure. Air is "pushed" from high to low pressure.
    
- **Coriolis ($f v$)**: Apparent force due to Earth's rotation. Negligible in the surface layer but shapes the Ekman layer.
    
- **Turbulent (molecular) stress term** (viscous diffusion) $\nu \nabla^2 u$ Momentum diffusion due to viscosity. Negligible for large-scale flow but acts as the ultimate energy sink at the **Kolmogorov scale**.

---

#### Assumptions Before Turbulence Treatment

- **Density fluctuations small**: $|\rho'/\bar{\rho}| \ll 1$.
- **Pressure fluctuations small**.
- **Boussinesq approximation**: Density is treated as constant everywhere _except_ when multiplied by gravity (the buoyancy term).
- **Incompressible flow**: $\frac{\partial u}{\partial x}+\frac{\partial v}{\partial y}+\frac{\partial w}{\partial z}=0$.

---
#### Why Navier–Stokes Cannot Be Solved Directly

Atmospheric flow is **turbulent**, meaning all variables contain a fast-fluctuating component.  
We need to separate:
$$x = \bar{x} + x'  $$
Where:

- $\bar{x}$ = mean value
- $x'$ = turbulent fluctuation

This is **Reynolds decomposition**.

---

### Reynolds Decomposition & Postulates

Since turbulence is too fast to solve directly, we use **Reynolds decomposition**: $x = \bar{x} + x'$ (Mean + Fluctuation).

1. $\overline{x'} = 0$  
    Mean of fluctuations is zero.
2. $\overline{xy} = \bar{x}\bar{y} + \overline{x'y'}$  
    Averages of products generate **covariances**, fundamental turbulent quantities.
3. $\overline{\bar{x}} = \bar{x}$  
    A mean of a mean is the mean.
4. $a x = a \bar{x}$  
    Constants factor out.
5. $\overline{x + y} = \bar{x} + \bar{y}$
	Linearity of averaging.

These properties allow us to rewrite Navier–Stokes in a form that includes **Reynolds stress terms**.

---
#### Appearance of Reynolds Stresses

When inserting:
$$u_i = \bar{u}_i + u_i'′​$$
into the nonlinear term:
$$u_j \frac{\partial u_i}{\partial x_j}​​$$
we naturally obtain:

$$\overline{u_i' u_j'}​​$$

This is the **Reynolds stress tensor**:

$$\tau_{ij} = -\rho \overline{u_i'u_j'}​​$$

This is the **Reynolds Stress Tensor**. It represents the turbulent transport of momentum.

---

### Reynolds-Averaged Navier–Stokes (RANS)

After decomposition:
$$
\frac{\partial \bar{u}}{\partial t}

- \bar{u}_j \frac{\partial \bar{u}}{\partial x_j}  
    =  
    -\frac{1}{\rho}\frac{\partial \bar{p}}{\partial x_i}
    
- g \delta_{i3}
    

- \frac{\partial}{\partial x_j} \left( \overline{u'_i u'_j} \right)
    

- \nu \nabla^2 \bar{u}  
$$

The new term:
$$
 
\overline{u'_i u'_j}
$$

**The Closure Problem**: The term $\overline{u'_i u'_j}$ introduces new unknowns (covariances). We have 3 equations but 6+ unknowns. We must "close" the system by approximating these terms.

---

### Closure Approaches

**Closure** means expressing turbulent terms (e.g., $\overline{u'w'}$) using known quantities.

The "order" refers to the **highest-order unknown covariance being parameterized**.

|Order|What is prognostic?|What is parameterized?|
|---|---|---|
|**0th order**|No prognostic eq.|Fluxes via bulk relations (MOST, bulk schemes)|
|**1st order**|Mean fields|Covariances via K-theory|
|**1.5 order**|TKE|Fluxes via stability functions|
|**2nd order**|Covariances|Third-order moments|
|**3rd order**|Triple moments|Fourth-order moments|
#### First-order closure (K-approach, most used)

Assumes:

$$
\overline{u'_i u'_j} = -K_m \frac{\partial \bar{u}_i}{\partial x_j}  
$$

where $K_m$ is the **eddy diffusivity for momentum**.

**First-order closure (K-approach)**: Assumes $\overline{u'_i u'_j} = -K_m \frac{\partial \bar{u}_i}{\partial x_j}$. Turbulent transport is modeled like molecular diffusion but with a much larger coefficient ($K_m$). This is analogous to Fick’s law or Fourier’s law.

---

### Turbulence Kinetic Energy (TKE)

The turbulent kinetic energy is:
$$e = \frac{1}{2}\left( \overline{u'^2} + \overline{v'^2} + \overline{w'^2} \right)  $$
TKE equation:
$$\frac{\partial e}{\partial t} = - \bar{u}_j \frac{\partial \bar{e}}{\partial x_j} - \delta_{i3} \frac{g}{\bar{\theta_v}} \overline{u_i'\theta_v'} - \overline{u_i'u_j'} \frac{\partial \bar{u}}{\partial x_i} - \frac{\partial}{\partial x_j} \left( \overline{u'_j e'} \right) - \frac{1}{\rho} \frac{\partial}{\partial x_i} \left( \overline{u'_i p'} \right) - \varepsilon  $$
#### Meaning of each term

| Term                                                     | Physical meaning                                 | #   |
| -------------------------------------------------------- | ------------------------------------------------ | --- |
| $\frac{\partial e}{\partial t}$                          | TKE tendency (local change)                      | I   |
| $-\bar{u}_j \partial e / \partial x_j$                   | Advection of TKE                                 | II  |
| $-\overline{w'u'} \partial \bar{u} / \partial z$         | **Shear production** (main source of turbulence) | III |
| $-\frac{g}{\theta_v} \overline{w'\theta_v'}$             | Buoyancy production or consumption               | IV  |
| $- \partial (\overline{u'_i e'}) / \partial x_j$         | Turbulent transport of TKE                       | V   |
| $- (1/\rho)\partial (\overline{u'_i p'}) / \partial x_i$ | Pressure term                                    | VI  |
| $-\varepsilon$                                           | Dissipation into heat at small scales            | VII |
Under steady state conditions over a homogeneous surface, I and II can be neglected, and  near the surface, terms V, and VI are so small that they can be neglected: 

$$
\epsilon = - \delta_{i3} \frac{g}{\bar{\theta_v}} \overline{u_i'\theta_v'} - \overline{u_i'u_j'} \frac{\partial \bar{u_i}}{\partial x_i} 
$$
The resulting TKE equation can be used to determine the energy dissipation 휀 in the surface layer. 

---

### Flux–Gradient Similarity (MOST)

MOST (Monin–Obukhov Similarity Theory) links **turbulent fluxes** to **vertical gradients**.
Fluxes of energy and matter can be determined from the proportionality between the flux and the vertical gradient of the corresponding property (see [[CG C02#Fluxes in the Laminar Boundary Layer |Fluxes in the laminar boundary layer]]) → relations are called „flux-gradient similarities“ 


Assumes under **neutral stratification**:

* Turbulent flux ∝ gradient of mean property

#### Momentum flux

$$\begin{gather} 
\tau = -\rho K_m \frac{\partial u}{\partial z}\\ \\
K_m = kzu_* \\ \\
u_* = \sqrt{-\overline{u'w'} } = \kappa z \frac{\partial u}{\partial z} = k \cdot \frac{\partial u}{\partial \ln z}
\end{gather} $$
Being $u_*$ the friction velocity, often used instead of shear stress

#### Sensible heat flux

$$\overline{w'T'} = -\kappa z u_* \frac{1}{Pr_t}\frac{\partial T}{\partial \ln z}$$
With $\frac{1}{Pr_t} = \frac{K_a}{K_m} \approx 1,25$
#### Latent heat flux

$$\overline{w'q'} = -\kappa z u_* \frac{1}{Sc_t}\frac{\partial q}{\partial \ln z}$$
with $\frac{1}{Sc_t} = \frac{K_v}{K_m} \approx 1,25$

Being

- $\overline{u'w'}$ Momentum flux (m2 s-2) 
- $\overline{w'T'}$ Sensible heat flux (K m s-1) 
- $Pr_t$ Turbulent Prandtl number
- $K_a$ Turbulent thermal diffusivity of heat in air (m2 s-1) 
- $\overline{w'q'}$ Latent heat flux (kg kg-1 m s-1)
- $Sc_t$ Turbulent Schmidt number 
- $K_v$ Turbulent diffusion coefficient of water vapor in air (m2 s-1

---

### Conversion to Energetic Units

Sensible heat flux:
$$H = \rho c_p,\overline{w'T'}$$
Latent heat flux:
$$\lambda E = \rho \lambda \overline{w'q'}$$
Where:
$$\rho = \frac{p \cdot 100}{287.0586T}$$
$$
\lambda = 2500827 - 2360(T - 273.15)$$

---

### Flux–Gradient Integration (Profiles)

#### Wind profile
$$u(z)-u(z_0) = u_* \frac{1}{\kappa}\ln\left(\frac{z}{z_0}\right)$$
#### Temperature
$$T(z)-T(z_0) = \frac{T_*}{\kappa}\ln\left(\frac{z}{z_0}\right)$$
#### Humidity
$$q(z)-q(z_0) = \frac{q_*}{\kappa}\ln\left(\frac{z}{z_0}\right)$$
These equations are used in **eddy-covariance**, **boundary-layer modelling**, and **surface flux estimation**.

---

# 💡 Key Takeaways

- Navier–Stokes describes full atmospheric motion; turbulence requires decomposition.
- Reynolds decomposition introduces Reynolds stresses → closure problem.
- Closure approaches provide relationships to express turbulent terms; 1st order (K-approach) is standard.
- Flux–gradient similarity links turbulent fluxes to vertical gradients using diffusivities.
- MOST gives the central formulas for wind, heat and moisture profiles.
- TKE equation describes production, transport, and dissipation of turbulence.
- Shear production and buoyancy production are the main generators of turbulence.

---

# 💭 Questions

1. Why does the Reynolds decomposition cause a closure problem?
Because it introduces new terms (the covariances) without adding the necessary equations to be able to solve it
2. When does buoyancy produce turbulence, and when does it destroy it?
Buoyancy **produces** turbulence during the day when the surface is warmer than the air (unstable conditions), causing air to rise. It **destroys (consumes)** turbulence at night when the surface is colder than the air (stable conditions), as the energy is used to lift heavy, cold air against gravity.
3. What physical meaning does friction velocity $u_*$ have?
Is the velocity in which is possible to take into account the friction in the wind effects
4. Why is dissipation $\varepsilon$ always positive?
Because it represents the conversion of kinetic energy into **heat** via molecular friction. According to the Second Law of Thermodynamics, this energy transfer is irreversible and always acts to reduce the kinetic energy of the system.
5. Under what situations do the Navier–Stokes terms simplify?
They simplify under **steady-state** (tendency = 0), **homogeneous** (horizontal advection = 0), and **neutral** (buoyancy = 0) conditions.
6. How does buoyancy modify the TKE budget?
It acts as either a **source** (positive term in the equation during the day) or a **sink** (negative term at night). It is the term that accounts for "thermal" turbulence as opposed to "mechanical" (shear) turbulence.

---

# 🐢 Definitions

- **Tendency**: Local rate of change at a fixed point.
- **Advection**: Transport of a property by the flow.
- **Shear production**: Turbulence generated by velocity gradients.
- **Reynolds stress**: Covariance of turbulent velocity components.
- **Closure**: Method to express unknown turbulent terms with known variables.
- **MOST**: Theory linking fluxes with gradients in the surface layer.

---

# 📅 Homework

- Derive the neutral stability log-profile for temperature using MOST.
- Compute friction velocity from a measured momentum flux.
- Practice converting w′T′ and w'q' to H and λE

---

Si quieres, puedo generar **ejercicios**, **ayudas visuales**, o **tarjetas de memoria (flashcards)** para estudiar este tema.