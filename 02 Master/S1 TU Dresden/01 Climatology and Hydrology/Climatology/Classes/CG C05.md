---
Class: "[[Climatology]]"
Date: 2025-11-28
Last Modified: Friday 28th November 2025 09:19
---
Entendido. Pido disculpas nuevamente por no haber respetado la jerarquía y el formato de las ecuaciones. Haré la corrección basándome en los siguientes puntos clave:

1.  **Jerarquía Estricta:** Solo se permite un nivel `##` por debajo de `# 📝 Notes`. Todos los subtemas internos serán `###`.
2.  **Ecuaciones Display:** Las ecuaciones grandes y complejas (como Navier-Stokes, Continuidad, Advección-Difusión, y las ecuaciones finales de Fluxes) se renderizarán en bloques de ecuaciones (`$$...$$`).

Aquí está la consolidación corregida.

# 📅 Friday 28th November 2025

# 📒 Class Summary
This lecture focused on the advanced modeling of atmospheric flow, specifically addressing **atmospheric turbulence** using the **Monin-Obukhov Similarity Theory (MOST)**. The core principle is extending simplified equations (only valid for neutral layers) to **non-neutral** (stable or unstable) conditions by applying **Buckingham's Pi-theorem** to create the fundamental **dimensionless parameters** like the **Obukhov Length ($L$)** and **Stability Parameter ($\zeta$)**. The lecture also reviewed fundamental **conservation equations** and alternative stability measures like the **Richardson Number ($Ri$)**.

---

# 📝 Notes
## Basic Equations of Atmospheric Turbulence

### Fundamental Conservation Equations

#### Conservation of Momentum (Navier-Stokes)
Represents the balance of forces acting on an air parcel (Newton's second law applied to fluids).
* **Momentum Flux ($Q_J$):** Transfer of momentum across a fluid boundary: $Q_J = \rho u \mathbf{u} dA$.
* **The Equation (x-component):** Includes local change, convective transport, pressure gradient, viscous stress, and external forces ($f_x$).
$$
\underbrace{\frac{\partial u}{\partial t}}_{\text{local change}} + \underbrace{u \frac{\partial u}{\partial x} + v \frac{\partial u}{\partial y} + w \frac{\partial u}{\partial z}}_{\text{convective transport}} = \underbrace{-\frac{1}{\rho} \frac{\partial p}{\partial x}}_{\text{pressure}} + \underbrace{\nu_f \nabla^2 u}_{\text{viscous stress}} + \underbrace{f_x}_{\text{external forces}}
$$

#### Conservation of Mass (Continuity)
States that mass is conserved (neither created nor destroyed).
* **Mass Flux ($Q_m$):** $Q_m = \rho \mathbf{u} dA$.
* **General Equation:** The sum of local density change and convective transport equals zero.
$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{u}) = 0
$$
* **Incompressible Flow ($\rho = \text{const}$):** Simplifies to $\nabla \cdot \mathbf{u} = 0$.

#### Transport in 1D (Scalar)
Describes the movement and dispersion of a scalar quantity ($c$, e.g., concentration).
* **Advection-Diffusion Equation:** Describes how convection shifts the distribution and diffusion spreads it.
$$
\frac{\partial c}{\partial t} + \frac{\partial (c \cdot u)}{\partial x} = \frac{\partial}{\partial x} \left( D_s \frac{\partial c}{\partial x} \right) + Q/S
$$
* **Advection:** Movement by bulk flow ($\frac{\partial (c \cdot u)}{\partial x}$).
* **Diffusion:** Spreading by molecular/turbulent motion ($\frac{\partial}{\partial x} \left( D_s \frac{\partial c}{\partial x} \right)$).

---
### Flux-Gradient Similarity – Monin-Obukhov Similarity Theory (MOST)

#### Flux-Gradient Similarity
* **Principle:** Equations were previously only valid in the **dynamic sublayer** (neutral boundary layers) where thermal stratification is negligible. MOST extends these equations to **non-neutral cases**.
* **Methodology:** Application of dimensional analysis following **Buckingham's Pi-theorem**.

#### Buckingham's Pi-theorem
* **Function:** A dimensional analysis technique used to reduce the number of variables in a physical problem by grouping them into **dimensionless parameters**.
* **Idea:** The process can be characterized by a small number of universal, dimensionless parameters, simplifying the necessary dataset.

#### Application of BP theorem near ground air layer
* **Dependent parameters ($n+1=4$):** Height ($z$), Friction velocity ($u_*$), Sensible heat flux ($\overline{w'T'}$), and Buoyancy parameter ($g/\theta_v$).
* **Independent dimensions ($k=3$):** Length ($\text{L}$), Time ($\text{T}$), Temperature ($\text{K}$).
* **Result:** The process is governed by a single dimensionless parameter ($\zeta$).

#### Key Stability Definitions
* **Obukhov Length ($L$):** The height at which **buoyancy (thermal) effects** become equally important as **mechanical (wind shear) effects** on turbulence. It is the scaling length for the surface layer.
    $$L = - \frac{u_*^3}{\kappa \frac{g}{T} \overline{w'T'}}$$
* **Obukhov Stability Parameter ($\zeta$):** The **dimensionless stability measure** at a specific height $z$.
    $$\zeta = z/L$$

#### Scaling & Universal Functions
The **universal functions** ($\varphi$) are empirical relations dependent only on $\zeta$ used to correct the flux profiles for stability effects.
* **Turbulent Diffusion Coefficient ($K_m$):**
    $$K_m = \frac{\kappa \cdot z \cdot u_*}{\varphi_m(\zeta)}$$
* **Dimensionless Profile (Momentum):** The universal function is derived from the velocity gradient:
    $$\phi_m(\zeta) = \frac{\kappa\cdot z}{u_*} \left(\frac{\partial u}{\partial z}\right)$$
    * **Effect:** In unstable cases ($\zeta < 0$), mixing is stronger, causing a **decrease of the gradient** and an **increase of the flux**. In stable cases ($\zeta > 0$), mixing is suppressed, causing the opposite. 
![[Pasted image 20251128094050.png]]

* **Resulting Fluxes (Kinematic Units):**
    * **Momentum ($u_*$):**
        $$u_* = \frac{\kappa \cdot z}{\varphi_m(\zeta)} \frac{\partial u}{\partial z}$$
    * **Sensible Heat Flux ($\overline{w'T'}$):**
        $$\overline{w'T'} = - \frac{\alpha_0 \cdot \kappa \cdot z \cdot u_*}{\varphi_H(\zeta)} \frac{\partial T}{\partial z}$$
    * **Latent Heat Flux ($\overline{w'q'}$):**
        $$\overline{w'q'} = - \frac{\alpha_{0E} \cdot \kappa \cdot z \cdot u_*}{\varphi_E(\zeta)} \frac{\partial q}{\partial z}$$
* **Variables:** $\kappa$ is the **Von Kármán constant** ($\approx 0.4$); $u_*$ is **Friction velocity**; $\theta_v$ is **Virtual potential temperature**; $q$ is **Specific humidity**.

### Integrated Profile Equation
Integrating the dimensionless function $\phi_m(\zeta)$ gives the velocity profile corrected for stability:
$$
u(z) = \frac{u_*}{\kappa} \left[ \ln \frac{z}{z_0} - \psi_m(\zeta) \right]
$$

### Measures of Atmospheric Stability

#### Stability Ranges (General)
| Stratification | Temperature Profile | Richardson ($Ri$) | Obukhov Length ($L$) | Stability ($\zeta = z/L$) |
| :--- | :--- | :--- | :--- | :--- |
| **Unstable** | $T(0\text{m}) > T(z)$ | $< 0$ | $< 0$ | $< 0$ |
| **Neutral** | $T(0\text{m}) \sim T(z)$ | $\sim 0$ | $\pm \infty$ | $\sim 0$ |
| **Stable** | $T(0\text{m}) < T(z)$ | $0 < Ri < 0.2$ | $> 0$ | $0 < \zeta < \sim 1$ |

#### Virtual Potential Temperature ($\theta_v$)
* **Purpose:** Replaces $T$ in stability equations ($L$, $Ri$) to correctly account for **buoyancy**, which is determined by both temperature and water vapor content (moist air is lighter than dry air).

#### The Richardson Number ($Ri$)
The **Richardson Number** ($Ri$) is a dimensionless ratio of **buoyancy (stability) forces** to **shear (mechanical) forces**.
* **Gradient Richardson Number:** $Ri = -\frac{g}{T} \cdot \frac{\partial T / \partial z}{(\partial u / \partial z)^2}$.
* **Critical Value:** Turbulent flow transitions to quasi-laminar flow under stable stratification when $Ri$ reaches the **critical value $Ri_c = 0.2$**.

### Convection Types & Flux Ratios

#### Convection Regimes
* **Forced Convection:** Turbulence generated primarily by **wind shear** ($u_*$). Occurs when stability effects are weak ($\zeta > -1$, weakly unstable or stable).
* **Free Convection:** Turbulence generated solely by **vertical air density differences** (buoyancy). Scales with the convective velocity scale ($w_*$) and occurs when $\zeta < -1$ (strongly unstable).
* **z-less Scaling:** Occurs under very **strongly stable conditions** ($\zeta > 1$) where scaling does not depend on height $z$.

#### Bowen Ratio Similarity
* **Bowen Ratio ($Bo$):** The ratio of **Sensible Heat Flux ($H$)** to **Latent Heat Flux ($\lambda E$)**: $Bo = \frac{H}{\lambda E}$.
* **Formula (Assuming equal exchange coefficients $\varphi_E = \varphi_H$):**
    $$Bo = \frac{c_p}{\lambda} \frac{\partial T}{\partial q} = \gamma \cdot \frac{\partial T}{\partial e}$$

---

# 💡 Key Takeaways
* **MOST** is the framework that uses the dimensionless **Obukhov Stability Parameter ($\zeta = z/L$)** to correct turbulence models for non-neutral thermal stratification.
* **Buckingham's Pi-theorem** is the dimensional analysis tool that justifies using $\zeta$ as the single governing parameter.
* The **Obukhov Length ($L$)** defines the height where mechanical and thermal turbulence contributions are balanced.
* **Universal Functions ($\varphi$)** are stability correction factors that depend only on $\zeta$.
* The **Richardson Number ($Ri$)** is an alternative stability measure, comparing buoyancy forces to shear forces.
* **Virtual Potential Temperature ($\theta_v$)** must be used in stability calculations to correctly account for the buoyancy effect of water vapor.

---

# 💭 Questions
* Why must the simplified flux equations (valid only for the dynamic sublayer) be extended using MOST for non-neutral cases?
* Explain the physical significance of the **Obukhov Length ($L$)** and how its sign (positive/negative) indicates stable or unstable conditions.
* How does the **Conservation of Momentum** equation differ conceptually from the **Conservation of Mass** equation in fluid dynamics?
* What is the physical significance of the **Critical Richardson Number ($Ri_c = 0.2$)**?
* Why is the **Virtual Potential Temperature ($\theta_v$)** used instead of the actual temperature ($T$) when calculating the Buoyancy parameter in $L$ and $Ri$?
* Under which of the three convection regimes (Forced, Free, or z-less) is the **uncertainty of the universal functions** the highest, and why?

---
# 🐢 Definitions
* **Monin-Obukhov Similarity Theory (MOST):** A theory describing the structure of the atmospheric surface layer in non-neutral conditions using dimensionless parameters.
* **Obukhov Length ($L$):** The characteristic height that separates mechanical turbulence dominance from thermal turbulence dominance.
* **Obukhov Stability Parameter ($\zeta$):** The dimensionless ratio $z/L$, used to characterize the stability condition at a specific height $z$.
* **Buoyancy Flux ($\overline{w'\theta_v'}$):** The turbulent flux of Virtual Potential Temperature, which is the actual driver of thermal mixing.
* **Universal Function ($\varphi$):** A dimensionless, empirical function dependent only on $\zeta$ that scales turbulent fluxes and gradients.
* **Richardson Number ($Ri$):** A dimensionless ratio of the rate of suppression of turbulence by stability to the rate of production of turbulence by wind shear.

---
# 📅 Homework
* Compare the physical conditions and the governing scaling parameters ($u_*$, $w_*$, $L$) for **Forced Convection** and **Free Convection**.
* Research the experimental methods (e.g., Eddy Covariance) used to gather the data necessary to empirically fit the universal functions $\varphi_m(\zeta)$ and $\varphi_H(\zeta)$.
* Explain the chemical/physical difference between **Sensible Heat Flux ($\overline{w'T'}$)** and **Latent Heat Flux ($\overline{w'q'}$)**, and how they relate to the **Bowen Ratio ($Bo$)**.