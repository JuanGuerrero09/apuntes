---
Class: "[[Climatology]]"
Date: 2025-11-02
Last Modified: Sunday 2nd November 2025 19:37
---
# Friday 24th October 2025

# 📒Class Summary
This lecture introduced the **physical basis of boundary layer meteorology**, focusing on how **energy and mass fluxes** occur between the ground and the atmosphere.  
Main topics covered:

- The **ground heat flux ($Q_G$)** and its diurnal variation.
- The relationship between **soil water movement** and heat transfer.
- The influence of **soil moisture** on soil heat conductivity and diffusivity.
- **Fluxes in the laminar boundary layer** (heat, vapor, and momentum).
- Fundamental **meteorological equations** (ideal gas law, humidity, barometric and potential temperature).

---
# 🕸️Resources

- Wanner & Mauder (TUD): _Surface Energy and Water Balances – Lecture Slides 6–18_
- Oke (1987): _Boundary Layer Climates_

---
# 📝 Notes

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
➡️ **Mode of transport:** **Conduction**.

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

$$\frac{\partial T}{\partial t} = \frac{1}{C_G} \frac{\partial Q_G}{\partial z} = v_T \frac{\partial^2 T}{\partial z^2}$$

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

where:

- $H$: sensible heat flux [W m⁻²]
- $\lambda E$: latent heat flux [W m⁻²]
- $\tau$: Shear stress flux [m² s⁻²]
- $\rho$: air density [kg m⁻³]
- $c_p$: specific heat at constant pressure [J kg⁻¹ K⁻¹]
- $K_a, K_v, K_m$: molecular diffusion coefficients [m² s⁻¹]
	- $K_a$ : Turbulent thermal diffusivity of heat in air ($m^2s^{-1}$)
	- $K_v$ : Turbulent diffusion coefficient of water vapor in air ($m^2s^{-1}$)
	- $K_m$ : Turbulent diffusion coefficient of momentum in air ($m^2s^{-1}$)
- $T$: temperature [K]
- $p_v$: vapor pressure [Pa]
- $u$: wind speed [m s⁻¹]

➡️ These fluxes represent **transport by molecular diffusion** in the laminar layer.

And any other flux (e.g. $x = CO_2$)
$$F_x = -K_x\frac{\partial \rho_x}{\partial z}
$$

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
# 🐢 Definitions

- **Flux**: Ability to transport X along a gradient of the relevant characteristic
- **Sensible Heat Flux**: The **turbulent vertical transport of heat** between the surface and the atmosphere caused by temperature gradients. Represents how much **thermal energy** is being moved from warmer air parcels to cooler ones (or vice versa).
- **Water Vapour (Latent Heat) Flux**: The **turbulent vertical transport of water vapour**, driven by the gradient of water vapour density. Represents **evaporation or condensation processes**, because moving water vapour also transfers latent heat.
- **Shear Stress / Momentum Flux** The **turbulent transport of horizontal momentum** due to vertical wind shear. Describes how turbulence transfers **wind momentum**, creating drag on the surface and shaping wind profiles.
- **Ground Heat Flux** — Rate of heat transfer between the Earth’s surface and subsurface layers; part of the surface energy balance.
- **Flux–Gradient Relationship** — Principle stating that any flux (heat, water, momentum) occurs in proportion to the gradient of a driving variable (temperature, potential, etc.).
- **Thermal Conductivity** — Ability of a material to conduct heat; higher in moist soils due to better particle contact.
- **Volumetric Heat Capacity** — Amount of heat required to raise the temperature of a unit volume by 1 K; increases with soil moisture.
- **Thermal Diffusivity** — Ratio between thermal conductivity and heat capacity; indicates how quickly heat spreads through a material.
- **Diurnal Temperature Cycle** — Daily oscillation of surface and air temperature due to solar heating and nocturnal cooling.
- **Soil Water Flux** — Movement of water through the soil, driven by pressure (matric potential) or vapor gradients.
- **Matric Potential** — Pressure potential resulting from capillary and adsorption forces acting on water in the soil.
- **Hydraulic Conductivity** — Soil property describing how easily water moves through its pore space.
- **Water Vapor Flux** — Transport of water vapor within the soil or air due to vapor pressure gradients.
- **Sensible Heat Flux** — Heat exchange associated with temperature differences between the surface and the air.
- **Latent Heat Flux** — Heat exchange due to phase changes of water (evaporation or condensation).
- **Momentum Flux** — Vertical transport of momentum in the atmosphere, related to friction and turbulence.
- **Boundary Layer** — Lowest part of the atmosphere directly influenced by the Earth's surface and responding to surface forcing within about an hour.
- **Virtual Temperature** — Temperature that dry air would need to have the same density as a given parcel of moist air at the same pressure.
- **Specific Humidity** — Mass of water vapor per total mass of moist air.
- **Absolute Humidity** — Mass of water vapor per unit volume of air.
- **Mixing Ratio** — Ratio of the mass of water vapor to the mass of dry air in a given volume of atmosphere.
- **Relative Humidity** — Ratio (in %) between actual and saturation vapor pressure at a given temperature.
- **Saturation Vapor Pressure** — Maximum vapor pressure that air can hold at a given temperature before condensation occurs.
- **Ideal Gas Law** — Relationship between pressure, density, temperature, and the gas constant for air.
- **Barometric Equation** — Describes how atmospheric pressure decreases exponentially with altitude.
- **Potential Temperature** — Temperature an air parcel would have if brought adiabatically to a standard pressure of 1000 hPa.
- **Adiabatic Process** — Thermodynamic process in which no heat is exchanged with the surroundings.
- **Geopotential Height** — Height adjusted for variations in gravity, used to describe pressure levels in the atmosphere.
- **Heat Storage** — Energy temporarily retained in a material, causing temperature change without immediate release.
- **Diurnal Lag** — Time delay between maximum incoming energy (e.g., noon sun) and the resulting temperature maximum.
- **Laminar Boundary Layer** — Thin region near the surface where molecular diffusion dominates over turbulence.
- **Conduction** — Heat transfer through molecular contact without bulk motion of the material.
- **Evaporation** — Process of liquid water converting to vapor, requiring latent heat input.
- **Condensation** — Opposite of evaporation; vapor becomes liquid, releasing latent heat.

---

# 💭 Questions

- Why is **ground heat flux ($Q_G$)** directed toward lower temperatures?
- How can we estimate **$Q_G(0)$** if it cannot be measured directly at the surface?
- What causes the **phase shift** of the temperature wave with depth in the soil?
- Why does **thermal diffusivity ($v_T$)** decrease again at very high soil moisture levels?
- Under what conditions does **liquid water flux ($J_l$)** dominate over **vapor flux ($J_v$)**?
- Explain how **soil water content** affects both conductivity and heat storage.
- What are the main components of **energy fluxes in the laminar boundary layer**?
- What does **virtual temperature ($T_v$)** represent physically?
- Write Magnus’ formula for **saturation vapor pressure over water** and explain its meaning.
- What is the difference between **specific humidity ($q$)** and **mixing ratio ($m$)**?
- Why is the **potential temperature ($\theta$)** used to compare air temperatures at different altitudes?
- How does the **barometric equation** describe the vertical variation of pressure with height?
- During which part of the day is $Q_G$ **positive**, and why?
---
# 💡 Key Takeaways

- **Fluxes follow gradients:** heat, water, and momentum all move from regions of high to low potential (temperature, pressure, or velocity).
- **Ground heat flux ($Q_G$)** links the **energy balance** of the surface to subsurface storage; it governs the **diurnal cycle** of temperature.
- **Soil moisture** controls thermal properties — higher moisture increases conductivity and heat capacity but reduces diffusivity at saturation.
- **Heat and water fluxes** in soil are analogous processes driven by gradients: conduction ↔ diffusion.
- In the **laminar boundary layer**, energy and momentum are transported mainly by **molecular diffusion**, not turbulence.
- **Virtual and potential temperature** are key corrections that allow realistic comparison of moist air parcels and temperature changes with height.
- The **barometric equation** explains the exponential drop of air pressure with altitude and connects surface and upper-air meteorological data.

---
# 📅 Homework
- Practice numerical calculations of $Q_G(0)$ from measured $Q_G(-z)$ and temperature profiles.
- Review derivations of the **barometric** and **potential temperature** equations.
- Prepare to discuss **fluxes in the boundary layer** and how they affect microclimate conditions near the ground.


