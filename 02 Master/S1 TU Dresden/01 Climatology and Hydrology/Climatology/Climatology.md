---
Class: "[[Climatology]]"
Date: 2025-10-17
Last Modified: Wednesday 15th October 2025 21:03
Professor: Dr. Luise Wanner
email: luise.wanner@tu-dresden.de
tags:
---
# 👨🏽‍🏫Professor


# 📖Summary


# 🕸️Resources and Relevant Links

[[https://bildungsportal.sachsen.de/opal/auth/RepositoryEntry/7624392724/CourseNode/90486979328542 | OPAL Climatology]]
Albedo values

- Foken, T. & Mauder, M. (2024): Micrometeorology. 3rd Edition. Springer
- Oke, T.R. (1987): Boundary Layer Climates. 2nd Edition. Methuen
- Oke, T.R. (2017): Urban Climates. Cambridge University Press
- Lee, X. (2018): Fundamentals of Boundary-Layer Meteorology. Springer Atmospheric Sciences.

# 📚Notes

# 0. Boundary-layer meteorology

## Intro Boundary-layer meteorology
**Boundary-layer meteorology** is a subdiscipline of meteorology that studies the **lowest part of the atmosphere** — the air layer directly influenced by the Earth's surface (about 1 km thick).
![[Pasted image 20251017093845.png]]
This air layer, about 1 km in thickness and is the **interface** between the free atmosphere (troposphere to be exact) and the Earth’s surface.

The changes in the _bounday-layer_ state are controlled by processes that transfer *momentum*, *energy* and *materials* within the layers up and below. **Flux Variables** are used to quantify the rate of these *transfer processes*.

**Radiation energy exchange** is a central process: solar radiation provides energy for heating and evapotranspiration, which drive atmospheric motion and weather.

---

### 🔄 Daily Cycle of the Boundary Layer

- **Daytime:** The layer is **convective**, meaning warm air rises and cool air descends, creating turbulence.
- **Nighttime:** The layer becomes **stable**; turbulence is weak and driven mainly by **wind shear** (changes in wind speed with height).

![[Pasted image 20251017094511.png]]

---
### Applications of Boundary Layer Meteorology

- Parameterization of **surface fluxes** in numerical weather prediction and climate models 
- Quantify & predict exchange of water and carbon 
	- Improved irrigation of croplands 
	- Carbon sink by land biomass 
- Studying the **dispersion of pollutants**, pollen, spores, and seeds.
- Optimizing **irrigation** and understanding **urban air quality**.
# 1. Surface energy and mass balances

## Surface energy and mass balances

### Energy Balance Concept

Energy flows in and out of a system through different forms:

- **Radiant** (sunlight)
- **Thermal** (heat)
- **Kinetic** (motion)
- **Potential** (position or height)

By the **First Law of Thermodynamics**:

> Input − Output − Storage = 0  
> Energy cannot be created or destroyed, only transformed or transferred.

Transport occurs via:

- **Radiation** (electromagnetic waves)
- **Conduction** (molecule-to-molecule)
- **Convection** (mass movement of air or fluid)

---

## ☀️ Radiation
Radiation is **energy transmitted by electromagnetic waves**.  
It follows three key physical laws that describe emission and wavelength behavior for an ideal **black body** (perfect absorber and emitter):

**### Planck’s Law
Describes how much radiation is emitted at each wavelength for a given temperature.

![[Pasted image 20251017095804.png]]

---
### Stefan–Boltzmann Law

Defines the **total emitted radiation** per unit area as a function of surface temperature:

$$
I = \epsilon_0 \; \sigma \; T_0^4
$$
Where:

- $I$: Emitted radiation flux density [W/m2][W/m^2][W/m2]
- $\epsilon_0$: Surface emissivity (0–1, with 1 for a perfect black body)
- $\sigma = 5.67 \times 10^{-8}\ W\,m^{-2}\,K^{-4}$: Stefan–Boltzmann constant
- $T_0$: Surface temperature in kelvin
---

### Wien’s Displacement Law

Relates temperature and the wavelength of maximum emission:

$$\lambda_{max} = \frac{b}{T_0}$$
Where $b = 2.897 \times 10^{-3}\ m \cdot K$.  
Thus, **hotter bodies emit radiation at shorter wavelengths**.

For instance:

- **Sun (≈6000 K)** → peak at 0.48 µm (visible range)
- **Earth (≈300 K)** → peak at 10 µm (infrared range)

---
### Atmospheric Interaction with Radiation

Radiation passing through the atmosphere is **absorbed**, **scattered**, and **transmitted** by gases and particles.

- **Optical window:** Range of wavelengths (≈8–12 µm) where Earth’s atmosphere is relatively transparent — radiation can escape into space.    
- **Greenhouse effect:** Gases like $\mathrm{H_2O}$, $\mathrm{CO_2}$​, $\mathrm{CH_4}$​, and $\mathrm{N_2O}$ absorb longwave (terrestrial) radiation but allow most shortwave (solar) radiation to pass, trapping heat and warming the lower atmosphere.
- **Ozone layer:** Absorbs most ultraviolet (UV) radiation, protecting life from harmful rays.
Water vapor is the **largest single contributor** to the greenhouse effect due to its strong absorption bands in infrared wavelengths.
---

### Radiation interaction with matter

Radiation incident on a surface can be **transmitted**, **reflected**, or **absorbed** — the sum of these three fractions equals 1.
$$
ψ_λ​+α_λ​+ζ_λ​=1
$$
Where:

- $\psi_\lambda$​: Transmissivity at wavelength $\lambda$
- $\alpha_\lambda$: Reflectivity (albedo)
- $\zeta_\lambda$​: Absorptivity

**Kirchhoff’s Law:**  
At thermal equilibrium, **absorptivity equals emissivity**:
$$\zeta_\lambda = \epsilon_\lambda \quad \text{""epsilon"" emissivity at wavelength }\lambda$$
→ Good absorbers are also good emitters.

---

- **Black body (full radiator)**: $\zeta_\lambda = \epsilon_\lambda = 1$ and $\psi_\lambda = \alpha_\lambda = 0$ 
- **Opaque body:** ($\psi_\lambda = 0$): $\alpha_\lambda = 1 - \zeta_\lambda = 1 - \epsilon_\lambda$
	- Example: **Land surface** – absorbs and reflects radiation, but does **not transmit** it because opaque solids prevent light penetration.
- **Transparent/translucent media (e.g., water, atmosphere):** absorb, reflect, **and transmit** radiation, depending on wavelength.

---
### Albedo and emissivity

![[Pasted image 20251017101152.png]]

- **Albedo (α):** Fraction of **solar (shortwave)** radiation reflected by a surface.
- **Emissivity (ε):** Efficiency of a surface in emitting **terrestrial (longwave)** radiation.

**Lambert’s Cosine Law:**  
The flux density of direct-beam radiation at the surface depends on the solar angle:
$$S = S_i cos\theta$$
where θ\thetaθ is the angle between the beam and the surface normal.

---
A portion of solar radiation is **scattered** by clouds, aerosols, and air molecules — the scattered part that reaches the surface is called **diffuse solar radiation** ($R_{SW,in}$).
![[Pasted image 20251017101700.png]]

## 🌍 Energy Balance of the Earth–Atmosphere System

> **Radiation** is the only mechanism for energy exchange between Earth and space.
 
- **Solar constant**: $S_0 = 1367 +- 2 W m^-2$ 
	(varies ~3 % annually due to Earth’s orbital eccentricity)

![[Pasted image 20251017101929.png]]
The **globally averaged incoming flux** is one quarter of $S_0$: $$𝑆_0 / 4 = 342 W/m^2$$(because solar energy is distributed over Earth’s spherical surface).
![[Pasted image 20251017102059.png]]

---

### Earth’s Radiative Equilibrium

At equilibrium, **absorbed solar energy** equals **emitted terrestrial energy**:

$$
S_0 (1-\alpha)\pi r^2 = 4\pi r^2\sigma T_0^4 
$$

The albedo (𝛼) accounts for Earth‘s reflectivity. Earth‘s average albedo: 30 % -> 𝛼 = 0.3, The rest (70 %) is absorbed

$$I = \epsilon_0 \; \sigma \; T_0^4$$

Considering as previous noted:
$$\begin{gather}

S_0 / 4 = 1367 / 4 = 342 \frac{W}{m^2}
\\
\alpha = 30\% = 0.3 \text{ average albedo}
\\
\sigma =  5.67051* 10^{-8} 
\end{gather}
$$

- $S_0$​ = constante solar ($\approx 1361\ \mathrm{W\,m^{-2}}$)
- 𝛼 = albedo planetario (≈0.30)

Stefan-Boltzmann law describes how much energy is emitted based on temperature (assuming Earth is black body, i.e., $\epsilon_0$ = 1)


$$
T_0 = \sqrt[4]{\frac{S_o (1- \alpha)}{4 \sigma}}
$$

![[Pasted image 20251017102709.png]]
The **observed average temperature** is about **+15°C**, higher than this equilibrium due to the **greenhouse effect**.

---

### Radiation Budget of the Earth System

Radiation exchanges occur across three system boundaries:

1. **Top of Atmosphere (TOA)**
2. **Atmosphere (A_a and A_C for gases and clouds)**
3. **Earth’s Surface (ES)**

![[Pasted image 20251017103008.png]]

---
## 🌾 Energy Balance at an “Ideal Site”

An **ideal site** is flat, horizontal, homogeneous, and infinite — no advection occurs.
### Components:
- **Shortwave balance:**
    $K^* = K↓ - K↑ = K↓(1 - \alpha)$
- **Longwave balance:**
    $L^* = L↓ - L↑L$
    with a **grey emitter**:
    $L↑ = \epsilon_0 \sigma T_0^4 + (1 - \epsilon_0)L↓$
- **Net radiation:**
    $Q^* = K↓ - K↑ + L↓ - L↑ = K^* + L^*$

Typically, $\epsilon_0 ≈ 1$; thus, **albedo** (α) and **surface temperature** (T₀) are the most site-specific factors.

| Case   | Absorption | Temperature | Longwave emission |
| ------ | ---------- | ----------- | ----------------- |
| High α | Low        | Low         | Low               |
| Low α  | High       | High        | High              |
Low albedo cools surface, that's the negative feedback mechanism that dampens heating!
Ideal site = Flat, horizontal, homogeneous and infinite.

### Common abbreviations

| Previous slides | More common   | Meaning                               |
| --------------- | ------------- | ------------------------------------- |
| K*              | $R_{SW}$      | Net shortwave (=Solar) radiation      |
| K↓              | $R_{SW, in}$  | Incoming shortwave radiation          |
| K↑              | $R_{SW, out}$ | Outgoing shortwave radiation          |
| L*              | $R_{LW}$      | Net longwave (=Terrestrial) radiation |
| L↓              | $R_{LW, in}$  | Incoming longwave radiation           |
| L↑              | $R_{LW, out}$ | Outgoing longwave radiation           |
| Q*              | $R_{net}$     | Net all wave radiation                |
| $Q_G$           | $G$           | Ground heat flux                      |
| $Q_H$           | $H$           | Sensible atmospheric heat flux        |
| $Q_E$           | $LE$ or $λE$  | Latent atmospheric heat flux          |

![[Pasted image 20251017103956.png]]

**Daytime:** $R_{net} = G + H + LE > 0$ (energy gained by surface)  
**Nighttime:** $R_{net} < 0$ (energy lost to atmosphere)

**Ideal site:** no advection, no clouds, steady conditions.

---

## 💧 Water Balance

Water has **high heat capacity** ($4.18 \times 10^6\ J/m^3K$), meaning it stores and releases large amounts of heat with little temperature change.

Phase transitions involve **latent heats**:

- Vaporization: $L_v ≈ 2.5 \times 10^6\ J/kg$
- Fusion: $L_f = 0.33 \times 10^6\ J/kg$

Water balance at Earth’s surface:

$P = L + G + R$

where P: precipitation, L: evapotranspiration, G: infiltration/groundwater, R: runoff.

**Link between energy and water balance:**

$LE = L_v E$

where LE: latent heat flux, E: evapotranspiration rate.

---

## 🌿 Carbon Balance

The **carbon balance** connects biological and physical processes (photosynthesis, respiration, and gas exchange).  
It defines how much $\mathrm{CO_2}$ is absorbed or emitted by ecosystems, linking directly to energy and water cycles.

---

# 2. Physical basics of boundary layer meteorology 

## Physical basics of boundary layer meteorology

### Ground Heat Flux ( $Q_G​$)

#### 🔹 Concept

The **ground heat flux** represents the **rate of heat transfer** between the Earth's surface and the subsurface soil layers.  
It plays a crucial role in the **surface energy balance** alongside **radiation**, **latent**, and **sensible** heat fluxes.

---

#### 🔹 Flux–Gradient Relationship

Fluxes occur due to **gradients** in physical quantities (temperature, concentration, etc.).  
For heat in soil, the flux is **proportional to the temperature gradient** and depends on the **thermal conductivity** of the ground:
$$Q_G = a_G \frac{\partial T}{\partial z} = C_G v_T \frac{\partial T}{\partial z}$$

- $Q_G$: ground heat flux [W m⁻²]
- $a_G$: thermal molecular conductivity [W m⁻¹ K⁻¹]
- $\frac{\partial T}{\partial z}$: temperature gradient within the ground [K m⁻¹]
- $C_G$: volumetric heat capacity of the ground [W s m⁻³ K⁻¹]
- $v_T$: molecular thermal diffusivity [m² s⁻¹]

➡️ The **flux is always directed toward lower temperature** (down the gradient).  
➡️ **Mode of transport:** Conduction.

During **daytime**, the soil surface warms and heat flows **downward**;  
at **night**, the surface cools and heat flows **upward** — see the inversion and lapse profiles.

---
#### 🔹 Measurement and Estimation
Ground heat flux **cannot be measured directly at the surface**, since sensors must be buried.  
It is therefore **estimated** as the sum of:

1. **Soil heat flux measured at a known depth** (e.g., with a flux plate).
2. **Heat storage** in the layer between that depth and the surface.

Mathematically:

$$Q_G(0) = Q_G(-z) + \int_{-z}^{0} \frac{\partial}{\partial t} [C_G(t,z) \, T(t,z)] \, dz$$
In practice, this can be approximated as:
$$Q_G(0) = Q_G(-z) + C_G \, |\Delta z| \, \frac{[T(t_2) - T(t_1)]}{t_2 - t_1}​$$
where:

- $-z$: measurement depth [m]
- $T(t,z)$: soil temperature [K]
- $C_G = \dfrac{a_G}{v_T}$: volumetric heat capacity of the soil [W s m⁻³ K⁻¹]

The first term $Q_G(-z)$ represents the **measured heat flux** at depth,  
and the second term represents the **storage change** in the upper soil layer.

![[Pasted image 20251102215923.png]]

---
#### 🔹 Diurnal Variation of Soil Temperature

The change of soil temperature with time can be expressed as:

$\frac{\partial T}{\partial t} = \frac{1}{C_G} \frac{\partial Q_G}{\partial z} = v_T \frac{\partial^2 T}{\partial z^2}$

- $T$: temperature [K]
- $t$: time [s]
- $Q_G$: ground heat flux [W m⁻²]
- $C_G$: volumetric heat capacity of the ground [W s m⁻³ K⁻¹]
- $z$: depth [m]
- $v_T$: molecular thermal diffusivity [m² s⁻¹]

This differential equation describes how **heat diffuses** through the soil with time — deeper layers react more slowly and with smaller temperature amplitudes.

---

#### 🔹 Diurnal Variation of Surface Temperature

$$T_S = T_M + A_S \sin\left(\frac{2\pi}{P}(t - t_M)\right)$$

- $T_S$: surface temperature [K]
- $T_M$: mean soil temperature (unaffected by diurnal variation) [K]
- $A_S$: amplitude of surface temperature variation [K]
- $P$: period of temperature wave [s] (usually 24 h)
- $t_M$: time at which $T_S = T_M$

➡️ The equation models the **daily sinusoidal temperature cycle** of the surface.  
➡️ The **amplitude decreases** and **phase lags** with depth due to heat conduction.

---

### Soil Water Flow

Soil water movement (without precipitation) follows the same **flux–gradient principle** as heat conduction.

#### 🔹 Types of Flux

- **Liquid water flux:**
    $J_l = a_l \frac{\partial \psi}{\partial z}​$
- **Water vapor flux:**
    $J_v = v_v \frac{\partial p_v}{\partial z}$

where:

- $a_l$: hydraulic conductivity of soil [m s⁻¹]
- $\psi$: matric potential [Pa]
- $v_v$: molecular diffusivity of water vapor [m² s⁻¹]
- $p_v$: partial pressure of water vapor [Pa]

➡️ Both processes are driven by **gradients** (potential or vapor pressure).  
➡️ In dry conditions, **vapor flux** dominates; in wet soils, **liquid flux** dominates.

---
### Influence of Soil Moisture on Soil Heat Flux

Soil moisture affects **thermal conductivity**, **heat capacity**, and **diffusivity**:

- **Thermal conductivity ($a_G$)** → increases with soil moisture (better contact between particles).
- **Volumetric heat capacity ($C_G$)** → increases linearly with water content.
- **Thermal diffusivity ($v_T = \dfrac{a_G}{C_G}$)** → increases at low moisture, then decreases at high moisture (due to high heat storage).

Overall:

- At **low soil moisture**, adding water enhances diffusivity.
- At **high soil moisture**, diffusivity drops as the soil stores more heat.
---
### Fluxes in the Laminar Boundary Layer

Three main fluxes describe energy and mass transport near the surface:
1. **Sensible heat flux:**
$$H = -\rho c_p K_a \frac{\partial T}{\partial z}$$
2. **Latent heat flux:**
$$\lambda E = -K_v \frac{\partial p_v}{\partial z}$$
3. **Shear Stress:**
$$\tau = -\rho K_m \frac{\partial u}{\partial z}$$
$$\tau = \rho v_m \frac{\partial u}{\partial z}$$
where:

- $H$: sensible heat flux [W m⁻²]
- $\lambda E$: latent heat flux [W m⁻²]
- $\tau$: momentum flux [m² s⁻²]
- $\rho$: air density [kg m⁻³]
- $c_p$: specific heat at constant pressure [J kg⁻¹ K⁻¹]
- $v_a, v_v, v_m$: molecular diffusion coefficients [m² s⁻¹]
- $T$: temperature [K]
- $p_v$: vapor pressure [Pa]
- $u$: wind speed [m s⁻¹]

➡️ These fluxes represent **transport by molecular diffusion** in the laminar layer.

---

### Meteorological Basics

#### 🔹 Ideal Gas Law for Moist Air

$$p = \rho R_L T_v$$

with:

$$T_v = T(1 + 0.61q)$$

- $p$: air pressure [hPa]
- $\rho$: air density [kg m⁻³]
- $R_L$: specific gas constant for dry air ($287.0586$ J kg⁻¹ K⁻¹)
- $T_v$: virtual temperature [K]
- $q$: specific humidity [kg (water vapor) per kg (humid air)]

➡️ $T_v$ represents the **equivalent temperature of dry air** having the same pressure and density as the moist air sample.

---

#### 🔹 Humidity Units (I)

- **$e$:** Water vapor pressure [hPa] — partial pressure of water vapor.
- **$E$:** Saturation vapor pressure [hPa].
    Using Magnus’ equations:
    Over water:$$E_w = 6.11 \, e^{\frac{17.62t}{243.12+t}}$$Over ice:
    $$E_i = 6.11 \, e^{\frac{22.46t}{272.62+t}}$$
- **$R$:** Relative humidity [%]
$$R = \frac{e}{E} \cdot 100\%$$

---

#### 🔹 Humidity Units (II)

- **$a$:** Absolute humidity [kg m⁻³]$$a = 0.21667 \frac{e}{T}$$
- **$q$:** Specific humidity [kg kg⁻¹]$$q = 0.62198 \frac{e}{p - 0.378e}$$- **$m$:** Mixing ratio [kg kg⁻¹]
    $$m = 0.62198 \frac{e}{p - e}$$

where:

- $T$: air temperature [K]
- $p$: air pressure [hPa]

---

#### 🔹 Barometric Equation

Describes how air pressure changes with height:
$$Z_2 - Z_1 = -\frac{R_L T_v}{g_0} \ln\frac{p_2}{p_1}$$
With reference at $Z_1 = 0$:
$$p(Z) = p(Z=0) \, e^{-\frac{g_0 Z}{R_L T_v}}$$
- $Z$: geopotential height [m] $Z=\frac{\phi}{g_o}$
- $g_0$: gravity acceleration [9.81 m s⁻²]
- $R_L$: specific gas constant for dry air
- $T_v$: virtual temperature [K]

---

#### 🔹 Potential Temperature ($\theta$)

Used to compare temperatures at different heights (adiabatic process):

$$\theta = T \left(\frac{p_0}{p}\right)^{R_L/c_p}$$

where:

- $T$: air temperature [K]
- $p$: air pressure [hPa]
- $p_0$: reference pressure (1000 hPa)
- $R_L$: gas constant for dry air [J kg⁻¹ K⁻¹]
- $c_p$: specific heat at constant pressure [1006 J kg⁻¹ K⁻¹]

➡️ $\theta$ is the temperature an air parcel would have if adiabatically compressed to 1000 hPa.

---
#### 🔹 Interpretation

- Temperature amplitude decreases with increasing depth 
- Temperature wave is shifted with depth
- **Day:** Heat is stored in the soil (positive $Q_G$, downward).
- **Night:** Heat is released from the soil (negative $Q_G$, upward).
- This **diurnal cycle** strongly influences near-surface temperature and boundary layer stability.

---

### Turbulence
#### Characteristics of Turbulent Flow

Turbulence is a complex, chaotic flow regime that emerges when inertial forces dominate over viscous forces.

Key characteristics:

- **Motion** (most important): turbulence cannot exist without movement.
- **Irregularity**: fluctuations occur randomly in space and time.
- **Mixing efficiency**: turbulence enhances mixing of momentum, heat, and mass.
- **Vorticity / Rotation**: presence of swirling, 3D vortical structures.
- **Dissipation**: without constant energy input, turbulence decays as kinetic energy dissipates into heat via viscous forces at very small scales.

![[Pasted image 20251107093708.png]]

Turbulence can be generated by:

- **Forced/mechanical turbulence:** produced by shear (e.g., wind blowing over a rough surface).
- **Convective turbulence:** produced by buoyancy (e.g., warm surface heating the air).

**Transition to turbulence:**  
Flow becomes turbulent typically when:

$$
Re = \frac{\text{intertial forces}}{\text{viscous forces}} =\frac{uL}{v} \geq 5000 
$$

Where:

- $u$ = characteristic velocity
- $L$ = characteristic length
- $\nu$ = kinematic viscosity

Interpretation:

- Low $Re$ → viscous forces dominate → laminar
- High $Re$ → inertial forces dominate → turbulence

---
### Fluxes in the surface layer

The surface layer forms the lower ∼10% of the atmospheric boundary layer.
#### Roughness Sublayer

- Depth ≈ 2× canopy/building height.
- Individual roughness elements (trees, buildings) influence local flow.
- No universal theory exists for its exact depth.

**Turbulent surface layer**
- Depth: lowest ~10% of the atmospheric boundary layer
- Convection instead of conduction
	- molecular diffusivities have to be replaced by turbulent diffusivities (see flux equations for laminar boundary layer)
- Molecular diffusion is negligible → replaced by **turbulent diffusivities** ($K_x$).
- Because turbulent fluxes become height-independent:
- Without horizontal transport, fluxes are constant in the constant flux layer:
	diffusivity increases, bout gradients decrease with height $\rightarrow$ results in constant flux
- Within the surface layer, turbulent structures are isotropic

![[Pasted image 20251107095549.png]]

---
### Turbulent Flux Equations

In the surface layer, the vertical turbulent flux of any quantity is expressed using **turbulent diffusivity**:

#### Sensible Heat Flux
$$H = - \rho\, c_p\,  K_a \frac{\partial T}{\partial z}$$
#### Latent Heat Flux (water vapour flux):
$$\lambda E  = - K_v \frac{\partial \rho_v}{\partial z}$$
#### Shear Stress

$$\tau = - \rho K_m \frac{\partial u}{\partial z}$$
#### Scalar Flux (general form)

For any scalar $x$:

$$
F_x = - K_x \frac{\partial \rho_x}{\partial z}
$$


#### Meaning of Each Term (Expanded)

- $\rho$ – air density $(\text{kg m}^{-3})$
- $c_p$ – specific heat at constant pressure $(1006\ \text{J kg}^{-1}\text{K}^{-1})$
- $K_a$ – turbulent thermal diffusivity $(\text{m}^2 \text{s}^{-1})$
- $T$ – air temperature
- $\lambda E$ – latent heat flux $(\text{W m}^{-2})$
- $K_v$ – turbulent diffusivity of water vapor
- $\rho_v$ – water vapor density
- $\tau$ – momentum flux (shear stress)
- $K_m$ – turbulent momentum diffusivity
- $u$ – horizontal wind speed
- $K_x$ – turbulent diffusivity for scalar $x$

#### About “turbulent diffusivity” $K_x$

Turbulent diffusivity describes how effective turbulence is in transporting mass, energy, or momentum.  
It replaces molecular diffusion in turbulent flows and is **several orders of magnitude larger**.

#### Turbulent surface layer (continued) 

• Without horizontal transport, fluxes are constant in the constant flux layer: 
	diffusivity increases, bout gradients decrease with height → results in constant flux
• Within the surface layer, turbulent structures are isotropic
#### Isotropy

Small-scale turbulence (Kolmogorov scales) is **independent of direction**, allowing the use of common $K_x$ approximations.

 
---
### Fluxes in the Outer Layer

- Represents the **upper 90%** of the atmospheric boundary layer.
- Strong dependence on atmospheric conditions:
    - > 2 km deep during daytime with clear skies
    - <100 m during stable, clear-sky nights

In the outer layer:
- **Turbulent mixing dominates**.
- Vertical gradients of temperature, humidity, momentum nearly vanish.
- Produces a **mixed layer** with uniform - properties.

---

### Atmospheric Stability

Atmospheric stability determines the **response of air parcels to vertical displacement**.

### Key Concepts

#### Environmental Lapse Rate (ELR)
$$ELR = -\frac{\partial T_{\mathrm{env}}}{\partial z}$$
Actual observed temperature decrease with height.

#### Adiabatic Lapse Rates (ALR)

Parcel temperature change when moved adiabatically:

- **Dry ALR (DALR):**
$$DALR = 9.8\ \text{K km}^{-1}$$
- **Moist ALR (MALR):**
$$MALR \approx 4 - 9\ \text{K km}^{-1}$$
Moist air cools more slowly due to latent heat release.

#### Determining Stability
$$\text{Compare } ELR \text{ to } ALR$$
- **Stable:** $ELR < ALR$  
	parcel becomes colder and denser → sinks back
- **Neutral:** $ELR = ALR$  
    parcel neither rises nor sinks
- **Unstable:** $ELR > ALR$  
    parcel becomes warmer and lighter → continues rising → convection

### Potential Temperature $\theta$

Used to remove compression/expansion effects:
$$\theta = T \left(\frac{p_0}{p}\right)^{R/c_p}$$
Stability criterion:

- $\frac{\partial \theta}{\partial z} > 0$ → stable
- $= 0$ → neutral
- $< 0$ → unstable
---

### Momentum flux and wind

Wind profile is shaped by:

- surface roughness
- atmospheric stability
#### Neutral Conditions → Logarithmic Wind Profile

$$u(z) = \frac{u_*}{\kappa} \ln\left(\frac{z}{z_0}\right)$$
where:

- $u_*$ = friction velocity
- $\kappa$ = von Kármán constant
- $z_0$ = aerodynamic roughness length

![[Pasted image 20251121123100.png]]

Roughness lengths vary by surface type:

![[Pasted image 20251121123243.png]]

---

### Sensible Heat Flux and Air Temperature Profiles

Needs to be corrected for the effects of vertical atmospheric pressure changes by considering ALR.
$$
H = - \rho c_pK_a (\frac{\partial T}{\partial z}- ALR)
$$
Or potential temperature

$$
H = - \rho c_pK_a (\frac{\partial \theta}{\partial z})
$$
### Interpretation

- **Positive $H$** → heat transferred upward (daytime)
- **Negative $H$** → heat transferred downward (nighttime)

Vertical temperature profiles evolve with diurnal cycle and atmospheric heating/cooling.

---
### Water vapor and latent heat fluxes

Exchange between wet surface and atmosphere driven by **vapor pressure deficit (VPD)**:
$$VPD = E - e$$
- $E$: saturation vapor pressure
- $e$: actual vapor pressure

Water vapor typically decreases with height.  
Nighttime radiative cooling may generate **dewfall**.

---

### Bowen Ratio
$$\beta = \frac{H}{\lambda E}$$Represents partitioning of available energy:

- $\beta > 1$: sensible heat dominates (dry surfaces)
- $\beta < 1$: latent heat dominates (wet surfaces)


### Remarks on convective exchange
Flux–gradient similarity applies to any passive scalar such as **CO₂, O₃, pollen**, provided:

- scalar is inert (no chemical reactions)
- gravitational settling is negligible

Analogy with Ohm’s law:

- voltage ↔ concentration gradient
- current ↔ scalar flux
- resistance ↔ inverse of diffusivity

---

### Outer-Layer Structure (Day vs Night)

#### Daytime

- Maximum boundary-layer height
- Strong mixing homogenizes T, humidity, wind
- Sharp capping inversion at top

#### Nighttime

- Strong surface cooling → temperature inversion
- Weak, shallow mechanical turbulence
- Suppressed vertical mixing

---
# 3. Basic equations of atmospheric turbulence 

The behaviour of atmospheric flow — including wind, temperature, humidity and turbulence — is governed by the **Navier–Stokes equations**, which express the **balance of forces** acting on air parcels.

These equations form the foundation of **boundary-layer meteorology**, weather prediction, and micrometeorology.

---

### Navier–Stokes Equations (Atmospheric Form)

The Navier–Stokes equations describe how wind components evolve:

$$\begin{align}
\frac{\partial u}{\partial t} = - u \frac{\partial u}{\partial x} - v \frac{\partial u}{\partial y} - w \frac{\partial u}{\partial z} - \frac{1}{\rho} \frac{\partial p}{\partial x} + f v + \nu \nabla^2  \\

\frac{\partial v}{\partial t} = - u \frac{\partial v}{\partial x} - v \frac{\partial v}{\partial y} - w \frac{\partial v}{\partial z} - \frac{1}{\rho} \frac{\partial p}{\partial y} + f u + \nu \nabla^2 \\
\frac{\partial w}{\partial t} = - u \frac{\partial w}{\partial x} - v \frac{\partial w}{\partial y} - w \frac{\partial w}{\partial z} - \frac{1}{\rho} \frac{\partial p}{\partial z} + g + \nu \nabla^2 
\end{align}$$
#### Meaning of each term

Each term corresponds to a physical process:

- **Tendency** $\frac{\partial u}{\partial t}$:  Local acceleration — describes how wind at a fixed point changes with time.
- **Advection** $u\frac{\partial u}{\partial x} +  v\frac{\partial u}{\partial y} +  w\frac{\partial u}{\partial z}$ : Transport of momentum by the flow itself.
- **Pressure gradient force**  $-\frac{1}{\rho} \frac{\partial p}{\partial x}$ Air accelerates from high to low pressure.
- **Coriolis force** $f v$:  Apparent force due to Earth's rotation.
- **Turbulent (molecular) stress term** (viscous diffusion) $\nu \nabla^2 u$ Momentum diffusion due to viscosity — negligible compared to turbulence in the atmosphere.

---

#### Assumptions Before Turbulence Treatment

For atmospheric applications we adopt:

1. Density fluctuations small  
    $|\rho'/\bar{\rho}| \ll 1$
2. Pressure fluctuations small
3. Boussinesq approximation (density constant except in buoyancy term)
4. Incompressible flow:
$$\frac{\partial u}{\partial x}+\frac{\partial v}{\partial y}+\frac{\partial w}{\partial z}=0
$$
#### Why Navier–Stokes Cannot Be Solved Directly

Atmospheric flow is **turbulent**, meaning all variables contain a fast-fluctuating component.  
We need to separate:
$$x = \bar{x} + x'  $$
Where:

- $\bar{x}$ = mean value
- $x'$ = turbulent fluctuation

This is **Reynolds decomposition**.

---

### Reynolds Postulates

Rules for averaging turbulent quantities:

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

It represents:

- turbulent transport of momentum
- dominant process in the atmospheric boundary layer
- the main new unknown that causes the **closure problem**

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

is the **Reynolds stress tensor** — represents turbulent transport of momentum.

#### Why this is a problem

This introduces **new unknowns** (covariances), but no new equations → “closure problem”.

---

## Closure Approaches

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

This is analogous to Fick’s law or Fourier’s law.

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

# 4. Specifics of near-surface turbulence 
# 5. Experimental determination of energy and mass exchange 
# 6. Modelling of energy and mass exchange 
# 7. Climates over different surface types 
# 8. Climates over complex surfaces 
# 9. Urban climates