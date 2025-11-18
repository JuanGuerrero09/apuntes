---
Class: "[[Climatology]]"
Professor: Dr. Luise Wanner
Date: 2025-10-17
Last Modified: Friday 17th October 2025 09:19
---
# Friday 17th October 2025

# 📒Class Summary

Introduction to **Boundary-Layer Meteorology** and **Energy Balances** in the Earth–Atmosphere system.  
Focus: radiation processes, surface interactions, and basic balance equations of energy, water, and carbon.

---
# 🕸️Resources

Lecture slides and diagrams on **boundary layer**, **radiation laws**, and **energy fluxes**.

---
# 📝 Notes

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

$\lambda E = L_v E$

where LE: latent heat flux, E: evapotranspiration rate.

---

## 🌿 Carbon Balance

The **carbon balance** connects biological and physical processes (photosynthesis, respiration, and gas exchange).  
It defines how much $\mathrm{CO_2}$ is absorbed or emitted by ecosystems, linking directly to energy and water cycles.

---

# 🐢 Definitions

**Black body:** Ideal object that absorbs all incident radiation and emits the maximum possible radiation for its temperature.  
**Albedo:** Fraction of incoming solar radiation reflected by a surface.  
**Convective:** Vertical motion of air caused by temperature differences (buoyancy).  
**Shear-driven turbulence:** Turbulence generated by horizontal wind speed gradients.  
**Full radiator:** Synonym for black body — perfect emitter and absorber.  
**GHG (Greenhouse Gas):** Atmospheric gas (e.g., CO₂, CH₄, H₂O vapor) that absorbs and emits infrared radiation, warming the lower atmosphere.


---
# 💡 Questions?
### 🌬️ Boundary Layer Meteorology

- What defines the **atmospheric boundary layer**, and why is it limited to roughly 1 km in height?
- How do **convective** and **stable** boundary layers differ in turbulence and energy transfer?
- Why does **wind shear** dominate turbulence generation at night?
- How do boundary-layer processes influence **air pollution dispersion** or **urban climates**?

---

### ☀️ Radiation and Energy Exchange

- According to **Planck’s Law**, how does temperature affect the spectrum of emitted radiation?
- How does the **Stefan–Boltzmann law** explain the difference between Earth’s and the Sun’s emitted energy?
- What does **Wien’s displacement law** tell us about the wavelength of maximum emission?
- Why does the **Earth’s atmosphere** behave differently for shortwave and longwave radiation?
- What is the **optical window**, and why is it essential for Earth’s energy balance?
- How does the **greenhouse effect** maintain the actual global average temperature higher than the theoretical black-body temperature?

---

### 🌍 Earth–Atmosphere System

- Why is the globally averaged incoming solar flux equal to **$S_0/4$** and not simply **$S_0$**?
- How does **albedo** influence the global temperature balance?
- What would happen if Earth’s **average albedo** increased from 0.30 to 0.40?
- In the radiative equilibrium equation, what assumptions are made about Earth’s emissivity and energy distribution?
- How do **clouds** and **aerosols** affect the shortwave and longwave components of the radiation budget?

---

### 🌾 Surface and Site Energy Balances

- Why is **radiation** the only form of energy exchange between Earth and space?
- What are the **main components** of the surface energy balance ($Q^* = G + H + LE$), and what physical processes do they represent?
- How do **surface albedo** and **emissivity** affect local temperature variations?
- Why is $R_{net}$ positive during the day and negative at night?
- How does a **homogeneous ideal site** simplify the energy balance analysis?

---

### 💧 Water and 🌿 Carbon Balance

- Why does water’s **high heat capacity** make it crucial for climate regulation?
- How are the **energy** and **water** balances linked through **latent heat flux ($LE$)**?
- What is the significance of the **latent heat of vaporization ($L_v$)** in the hydrological cycle?
- How does the **carbon balance** connect with the energy and water cycles in the Earth system?
- In what way do **photosynthesis** and **respiration** influence atmospheric $\mathrm{CO_2}$ levels?

---
# 📅 Homework



