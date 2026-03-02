---
Class: "[[Climatology]]"
Date: 2026-01-23
Last Modified: Friday 23rd January 2026 00:07
---
# 📅 Friday 23rd January 2026

# 📒Class Summary

Today's session focused on the **Modelling of Energy and Mass Exchange**, specifically the differentiation between **Potential** and **Actual Evaporation**. We analyzed various empirical and physical modelling approaches (Dalton, Priestley-Taylor, Penman-Monteith) and explored the **Resistance Concept** in one-layer (Big-leaf) and multi-layer models. Finally, we covered **Area Averaging** techniques (Mosaic vs. Subgrid methods) used to aggregate fluxes across heterogeneous landscapes.

---
# 📝 Notes

## 7. Modelling of energy and mass exchange.

### Potential Evaporation ($E_p$)

Potential evaporation is defined as the maximum amount of water that could be evaporated from a surface into the atmosphere given current meteorological conditions, assuming an unlimited water supply.

![[Pasted image 20260123092415.png]]

#### Dalton Approach (Timeframe: Day - Month - Decade)

- **Accuracy**: Okay results with a **20–40% error**.
- **Mechanism**: A very simple empirical parameterization comparable to the bulk approach.
- **Parameters**: Considers only **wind speed**.
- **Restriction**: Originally only valid for **North-German lakes**.

#### Turc Approach (Timeframe: Month - Decade)

- **Accuracy**: Okay results (**20–40% error**).
- **Mechanism**: Based on global radiation and temperature measurements; utilizes the **Bowen ratio**.
- **Restriction**: Developed for the **Mediterranean Sea** but applicable elsewhere using correction factors.

#### Priestley-Taylor Approach (Timeframe: Day - Month - Decade)

- **Accuracy**: Good results with **10–20% error**.
- **Derivation**: Combines the **Bowen Ratio** ($Bo$) with the **Clausius-Clapeyron equation**.

$$Bo = \gamma \frac{\partial \bar{\theta} / \partial z}{\partial \bar{q} / \partial z} = \frac{\gamma [(\partial \bar{T} / \partial z) + \Gamma_d]}{\partial \bar{q} / \partial z}$$
(rewrite potential temperature as sum of air temperature and dry adiabatic temperature gradient)

with Clausius-Clapeyron equation
$$\frac{dq_s}{dT} = s_c(\bar{T})$$
resulting in

$$Bo = \frac{\gamma [(\partial \bar{T} / \partial z) + \Gamma_d]}{s_c (\partial \bar{T} / \partial z)} = \frac{\gamma}{s_c} + \frac{\gamma \cdot \Gamma_d}{s_c (\partial \bar{T} / \partial z)}$$

Derivation of the Priestley-Taylor equation by:

- **Simplification**: Neglects the second summand and introduces the **Priestley-Taylor coefficient** ($\alpha_{PT} \approx 1.25$) for water-saturated surfaces.
- **Flux Equations**:
    - **Sensible Heat ($Q_H$)**:
$$Q_H = \frac{[(1 - \alpha_{PT}) \cdot s_c + \gamma] \cdot (-Q^*_S - Q_G)}{s_c - \gamma} \text{}$$
	- **Latent Heat ($Q_E$)**:
$$Q_E = \alpha_{PT} \cdot s_c \frac{-Q^*_S - Q_G}{s_c + \gamma} \text{}$$

|**Symbol**|**Description**|
|---|---|
|$\gamma$|Psychrometric constant ($K^{-1}$)|
|$\Gamma_d$|Dry adiabatic temperature gradient, $0.0098\text{ K m}^{-1}$|
|$s_c$|temperature dependence of specific humidity at saturation ($\text{kg kg}^{-1}\text{ K}^{-1}$)|
|$\alpha_{PT}$|Priestley-Taylor coefficient, accounts for different stomata resistances|

**Values for $s_c$ and $\gamma$:**

| $T$ (K) | $\gamma$ ($K^{-1}$) | $s_c$ ($\text{kg kg}^{-1}\text{ K}^{-1}$) |
| :--- | :--- | :--- |
| 270 | 0.00040 | 0.00022 |
| 280 | 0.00040 | 0.00042 |
| 290 | 0.00040 | 0.00078 |
| 300 | 0.00041 | 0.00132 |

#### Penman Approach (Timeframe: Day - Month - Decade)

- **Accuracy**: Good results (**10–20% error**).
- **Mechanism**: Developed for Southern England, it combines the **Dalton approach** and **Bowen ratio**, using Priestley-Taylor as an intermediate step.
- **Main Equation**:

$$
Q_E[mm d^{-1}] = \frac{s_c \cdot (Q^* - Q_G)[mm d^{-1}]+ \gamma \cdot E_a [mm d^{-1}]}{s_c+\gamma}
$$

- **Ventilation Term ($E_a$)**: Considers turbulence effects. according to Dalton approach 
	- For water surfaces (or well-saturated grass)
$$E_a = (e_s-e_a)\cdot(f_1+f_"\cdot u)$$
	- For surfaces with greater roughness: 
$$E_a = \frac{314 \, K}{T}\cdot\frac{u}{[ln(z/z_0)]^2}(e_s-e_a) \; [\frac{hPa\, \cdot m}{s}]$$
Being

- $e_s$ Saturation water vapor pressure (hPa) 
- $e_a$ Water vapor pressure (hPa) 
- $u$ Horizontal wind speed (m s-1) 
- $T$ Air temperature (K) 
- $z$ Measurement height (m) 
- $z_0$ Roughness length (m) 

**Penman Coefficients ($f_1, f_2$):** 

| **Surface and reference** | **$f_1$** | **$f_2$ ($mm d^{-1} hPa^{-1}$)** |
| :------------------------ | :-------- | :------------------------------- |
| Original approach (water) | 0.131     | 0.141                            |
| Small water surfaces      | 0.136     | 0.105                            |
| Water surfaces (D&T 1990) | 0.0       | 0.182                            |
| Grass surfaces            | 0.27      | 0.233                            |

---
### Actual Evaporation

Unlike potential evaporation, actual evaporation considers the **real availability of water** and specific surface resistances.

![[Pasted image 20260125165039.png]]

#### Simple (empirical) approaches

**Sponagel-Haude-approach** 

- Based on vapor pressure measurement at  2 p.m. 
- Provides monthly average 
- Large error (> 60 %) 
- Developed for German flatlands 
- Uses seasonal and land-cover-dependent „Haude-factors“ → literature values 

**Wendling-Turc-approach** 

- Further developed Turc-approach to provide actual instead of potential  evaporation 

**Water-balance approach** 

- Calculated as a residuum ($E = P - R - \Delta S$) on an **annual basis**.
- Depends on quality of the measurements of other water balance components 

#### Penman-Monteith-approach

Further developed from the Penman approach, it is designed specifically for **non-saturated surfaces**.

- **Key Features**:
    
    - Considers the available energy and the cooling effect due to evaporation.
    - **Big-Leaf Resistance Approach**: The entire vegetation stand is treated as a single, large "big leaf".
    - Uses **two serial resistances** (aerodynamic and surface/canopy).

**Governing Equation**:

$$
Q_E = \frac{\Delta(Q^*-Q_G)+\rho_ac_p(e_x-e_a)/r_a}{\Delta + \gamma(\frac{r_a+r_c}{r_a})}
$$
**Parameters**:

- **$\Delta$**: Slope of the saturation vapor pressure curve ($kPa \cdot \text{°C}^{-1}$).
- **$\rho_a$**: Air density (simplification: $\rho_a = 1.21 \text{ kg m}^{-3}$).
- **$c_p$**: Specific heat capacity at constant pressure ($1.013 \cdot 10^{-3} \text{ MJ kg}^{-1} \text{°C}^{-1}$).
- **$e_s, e_a$**: Saturation and actual vapor pressure ($kPa$).
- **$\gamma$**: Psychrometric constant ($kPa \cdot \text{°C}^{-1}$).
- **$r_a, r_c$**: Aerodynamic and Surface/Canopy resistance ($s \text{ m}^{-1}$).

**Auxiliary Calculations**:

- **Slope of saturation vapor pressure curve ($\Delta$)**:$$\Delta = \frac{4098 \left[ 0.6108 e^{\frac{17.27 T}{T+237.3}} \right]}{(T + 237.3)^2}$$
- **Saturation vapor pressure ($e_s$)**:$$e_s = 0.6108 e^{\frac{17.27 T}{T+237.3}}$$
- **Psychrometric "constant" ($\gamma$)**:$$\gamma = 0.665 \cdot 10^{-3} p$$
---

#### **Exercise: Penman-Monteith**

**Simplifications for the exercise**:

- $\rho_a = 1.21 \text{ kg m}^{-3}$; measurement height = $2\text{ m}$; stand height $h = 0.12\text{ m}$.
- Aerodynamic resistance: $r_a = 208 / u(2\text{ m}) \text{ s m}^{-1}$.
- Surface/Canopy resistance: $r_s \approx r_c = 70 \text{ s m}^{-1}$.

**Task**: Calculate the actual evapotranspiration from the following measurements:

- $T = 20.27 \text{ °C}$, $e_a = 6.79 \text{ hPa}$, $p = 938.15 \text{ hPa}$, $Q^* - Q_G = 240.8 \text{ W m}^{-2}$, $u = 1.27 \text{ m s}^{-1}$.

---
#### Shuttleworth & Wallace 

Adapts Penman-Monteith for **open or sparse canopies** by including specifics of the canopy structure.

**Resistance Components**: Includes surface-to-canopy and canopy-to-reference aerodynamic resistances ($r_{sa}, r_{aa}$), canopy stomatal/turbulent resistances ($r_{cs}, r_{ca}$), and soil surface resistance ($r_{ss}$).
#### FAO-Grass-Reference-Evapotranspiration 

A **simplified version of the Penman-Monteith equation** specifically for grass surfaces

**Governing Equations**

The latent heat flux ($Q_E$) is determined by:

$$Q_E = \frac{s_c \cdot (Q^* - Q_G) + \rho \cdot c_p \frac{0.622}{p} \cdot \frac{e_s - e_a}{r_a}}{s_c + \gamma \left( 1 + \frac{r_s}{r_a} \right)}$$

**Where the resistances are defined as:**

- **Surface resistance ($r_s$):**$$r_s = \frac{r_{si}}{LAI_{active}}$$
- **Aerodynamic resistance ($r_a$):**$$r_a = \frac{\ln\left( \frac{z-d}{z_0} \right) \ln\left( \frac{z-d}{z_{oq}} \right)}{u(z)}$$
Surface ($r_s = r_{si} / LAI_{active}$) and Aerodynamic ($r_a$) based on roughness length and zero-plane displacement.

| **Parameter** | **Value**                                                                                                                                          | **Remark**                               |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- |
| **$r_a$**     | $D = 2/3 z_B$; $z_0 = 0.123 z_B$; $z_{0q} = 0.1 z_0$. With $z_B = 0.12 \text{ m}$ and $z = 2 \text{ m}$ applies **$r_a = 208 / u(2 \text{ m})$**.  | Use of $\kappa = 0.41$.                  |
| **$r_s$**     | $LAI_{active} = 0.5 LAI$; $LAI = 24 z_B$. With $r_{si} = 100 \text{ s m}^{-1}$ and $z_B = 0.12 \text{ m}$ applies **$r_s = 70 \text{ s m}^{-1}$**. |                                          |
| $Q^* -Q_G$    | Possible simplification with albedo of 0.23.                                                                                                       | Allen et al. (1998), See FAO IDP No. 56. |

---
### Layer models, resistance approach 

Modern models utilize the **resistance approach**, assuming an analogy to **Ohm’s Law** ($I = U/R$) where $I$ is the flux, $U$ is the gradient, and $R$ is the resistance.

**One-layer models**: 
	• Consider soil, plants, atmosphere in a close range 
	• Plants are assumed as one big leaf instead of multiple leaves (=bigleaf model) 

![[Pasted image 20260125170747.png]]

**Multi-layer models**
	• Split the atmosphere into multiple layers 
	• Simple models: only surface layer 
	• State of the art models: coupled with entire boundary layer 
	- Split the atmosphere into multiple layers; lower layers use balance equations while upper layers apply a **mixing length approach**. ![[Pasted image

![[Pasted image 20260125171051.png]]

**Resistance Assumptions**

The resistance concept in micrometeorology assumes that specific physical barriers counteract the transfer of energy and mass:

- **Turbulence resistance ($r_a$):** Directly counteracts turbulent flux within the turbulent layer.
- **Molecular turbulence resistance ($r_{mt}$):** Counteracts flux within the viscous and molecular layers.
- **Canopy resistance ($r_c$):** Combines the various resistances found within different parts of the plants into one total value.

**Analogy to Ohm’s Law:**

The system is modeled after the electrical formula $I = U/R$, where:

- **$I$**: represents the **flux**.
- **$U$**: represents the **gradient** (potential difference).
- **$R$**: represents the **resistance**.
---
#### Area Averaging

**Definition** Area averaging is the process of integrating point or local measurements to represent larger spatial scales, such as whole catchments, or to provide validation data for weather and climate models.
##### Parameter vs. flux aggregation 

Eg., for the investigation of whole catchments or validation of weather/climate models 

| **Parameter Aggregation**                                                               | **Flux Aggregation**                                                             |
| --------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Aggregation of physical properties, such as roughness length ($z_0$).                   | Determination of fluxes for dominating areas within a grid.                      |
| Aggregation of "effective" parameters, which is partly comparable to a mixing approach. | Mixing method for resistances.                                                   |
|                                                                                         | flux determination for dominating areas                                          |
|                                                                                         | mosaic approach                                                                  |
|                                                                                         | **Subgrid method**, which is an extended mosaic approach for the boundary layer. |
Non-linear relationships between parameters and fluxes will lead to large errors! 


##### Mixing method for resistances 

- **Total resistance for a single area:** $r_g = r_a + r_{mt} + r_c$.
- **Total resistance for multiple areas (Parallel Connection):** This is used when different landcovers are located next to each other.$$\frac{1}{r_g} = \frac{1}{r_{g1}} + \frac{1}{r_{g2}} + \frac{1}{r_{g3}} + \dots$$
- **Total resistance for flux aggregation:**$$\frac{1}{r_g} = \sum_i \frac{1}{r_{ai} + r_{mti} + r_{ci}}$$   
![[Pasted image 20260125172629.png]]

##### Mosaic approach

**Tile approach**

- Grid cells that share the same land use type are combined together.
- Flux contributions from each specific land use type are calculated separately.
- Total flux contributions are averaged and weighted according to their area contribution.

**Subgrid Method**

- Unlike the tile approach, tiles are not sorted strictly by land-cover type.
- A multi-layer model is applied for each individual cell.
- This considers **advection** from one landcover type to another.
- Averaging is performed across all land-cover types at a specific reference height.

---

### **Class Quiz Review**

- **Question:** Which terms of the Control Volume Approach can be neglected over a flat and homogeneous surface, but not over a flat and heterogeneous surface?
    
    - **Answer:** Horizontal advection and vertical advection.
        
- **Question:** Which correction method can be used to correct for insufficient capture of energy transport by very small eddies?
    
    - **Answer:** Moore correction.
        
- **Question:** Which instruments are needed to measure latent and sensible heat fluxes with the eddy covariance method?
    
    - **Answer:** Ultrasonic Anemometer and Infrared Gas Analyzer (IRGA).
        
- **Question:** What should we do with data when steady state conditions are not fulfilled?
    
    - **Answer:** Perform a quality test, then flag and discard the data.
        
- **Question:** Name the four groups of reasons for the energy balance closure gap.
    
    - **Answer:** Instrument error, data processing error, additional sources of energy, and sub-mesoscale transport/secondary circulations.
        
- **Question:** Name two alternatives to the eddy covariance method.
    
    - **Answer:** Profile method, Bowen-ratio method, Hyperbolic Relaxed Eddy Accumulation (HREA), or Disjunct Eddy Covariance (DEC).
        
- **Question:** Which modelling approaches are well suited to estimate potential $E(T)$ on a daily basis?
    
    - **Answer:** Dalton, Priestley-Taylor, and Penman.
        
- **Question:** Which modelling approaches are well suited to estimate actual $E(T)$ on a daily basis?
    
    - **Answer:** Penman-Monteith approach.

---
# 💡 Key Takeaways

- **Modeling Distinction:** Dalton, Priestley-Taylor, and Penman approaches are designed for **Potential Evaporation**, while the Penman-Monteith approach is the gold standard for **Actual Evaporation** as it accounts for surface/canopy resistance.
    
- **Post-Processing:** Raw data from Eddy Covariance is not usable until corrected for density fluctuations (WPL), buoyancy-to-sensible heat (Schotanus), and frequency loss (Moore).
    
- **Energy Balance Gap:** The worldwide systematic failure to close the energy balance ($H + \lambda E < R_{net} - G$) is often linked to sub-mesoscale transports like TOS and TMC.
    
- **Resistance Logic:** The use of an Ohm's Law analogy allows complex plant-atmosphere interactions to be modeled as a network of turbulence, molecular, and canopy resistances.

---
# 💭 Questions

- **What is the fundamental difference between potential and actual evaporation regarding water availability?**
    
    - Potential evaporation assumes an unlimited water supply and is limited only by atmospheric demand (energy), while actual evaporation is restricted by the real-world availability of water in the soil and the physiological resistance of the surface.
        
- **Which modeling approaches are considered the most precise for estimating potential $E(T)$ and actual $E(T)$ on a daily basis?**
    
    - **Potential $E(T)$:** Penman and Priestley-Taylor are the most precise.
        
    - **Actual $E(T)$:** The Penman-Monteith approach is the gold standard as it incorporates surface resistance.
        
- **Explain the role of the $\alpha_{PT}$ coefficient in the Priestley-Taylor approach and why it is typically set to 1.25.**
    
    - $\alpha_{PT}$ is an empirical coefficient that accounts for the "extra" evaporation caused by the entrainment of dry air from the upper boundary layer into the surface layer. For well-watered surfaces, it is typically set to **1.26** (or 1.25) to represent the 26% increase over purely radiation-driven equilibrium evaporation.
        
- **How does the Penman-Monteith approach account for non-saturated surfaces compared to the original Penman approach?**
    
    - It introduces **Surface/Canopy Resistance ($r_s$ or $r_c$)** into the formula. Unlike the original Penman, which assumes a perfectly wet surface ($r_s = 0$), Penman-Monteith uses these resistance terms to model the plant's ability to restrict water loss through its stomata.
        
- **In the context of resistance assumptions, what physical layers do $r_a$ and $r_{mt}$ represent?**
    
    - **$r_a$ (Turbulence resistance):** Represents the resistance to flux within the **turbulent layer**.
        
    - **$r_{mt}$ (Molecular turbulence resistance):** Represents the resistance within the **viscous and molecular sub-layers** closest to the surface.
        
- **Why is the parallel connection formula used when calculating total resistance for multiple adjacent landcovers?**
    
    - Because different land-use types (e.g., a forest next to a field) act as simultaneous, independent pathways for water vapor to enter the atmosphere. In physics, independent parallel pathways for a flux are modeled by adding their conductances ($1/r$).
        
- **Describe the difference between the Tile approach and the Subgrid method regarding the treatment of advection.**
    
    - The **Tile (Mosaic) approach** calculates fluxes for each land-use type independently and averages them by area, ignoring horizontal interaction. The **Subgrid method** applies a multi-layer model that explicitly accounts for **advection**, calculating how the atmospheric properties of one tile influence the evaporation rates of neighboring tiles downwind.

- **Define the "Big-Leaf Model" and explain its primary limitation when modeling a complex, multi-story forest.**
    
    - The **Big-Leaf Model** treats the entire vegetation canopy as a single, uniform leaf with one combined surface resistance ($r_c$). Its primary limitation is that it ignores the vertical gradients of light, wind, and humidity within a tall forest, failing to account for the different physiological behaviors of the shaded understory versus the sunlit overstory.
        
- **In the Penman-Monteith equation, what happens to the Latent Heat Flux ($Q_E$) if the Aerodynamic Resistance ($r_a$) decreases due to very high wind speeds?**
    
    - The Latent Heat Flux ($Q_E$) **increases**. Decreasing $r_a$ means the atmospheric resistance to vapor transport is lower; higher wind speeds effectively "strip" the humid air away from the surface faster, enhancing evaporation.
        
- **What is the "Haude-factor" used for in the Sponagel-Haude approach, and why is this method considered low-accuracy?**
    
    - The Haude-factor is a seasonal and land-cover-dependent empirical coefficient used to estimate monthly evaporation from vapor pressure at 2 p.m. It is considered low-accuracy (errors $> 60\%$) because it was developed specifically for German flatlands and lacks the physical rigor to adapt to different climatic regions.
        
- **Explain the difference between "Parameter Aggregation" and "Flux Aggregation" in the context of area averaging.**
    
    - **Parameter Aggregation** involves averaging physical surface properties (like roughness length $z_0$) to create an "effective" parameter for a whole grid cell. **Flux Aggregation** calculates the energy fluxes ($H, Q_E$) for each individual land-cover type (using the Mosaic or Tile approach) and then averages the resulting fluxes, which is more accurate due to the non-linear relationship between parameters and fluxes.
        
- **Which specific term in the Penman equation represents the "atmospheric pull" (drying power of the air) vs. the "energy push" (net radiation)?**
    
    - The term $(Q^* - Q_G)$ represents the **Energy Push** (radiation-driven evaporation). The ventilation term $E_a$ (which includes wind speed and vapor pressure deficit) represents the **Atmospheric Pull** (the drying power of the air).

---
# 🐢 Definitions

- **Potential Evaporation ($E_p$):** The maximum evaporation possible under current atmospheric conditions if water supply were unlimited.
    
- **Actual Evaporation ($E_a$):** The real amount of water transferred to the atmosphere, restricted by moisture availability and surface/canopy resistance.
    
- **Big-Leaf Model:** A one-layer modeling simplification where an entire plant stand is treated as a single uniform leaf.
    
- **Blending Height:** The height at which the influences of individual surface patches merge into a horizontally integrated atmospheric flow.
    
- **Mosaic Approach:** An area-averaging method that calculates fluxes for separate land-use "tiles" and averages them based on area-weighting.

---
# 📅 Homework

- **Calculation Practice:** Use the provided measurements (T=20.27 °C, u=1.27 m/s, etc.) to set up the Penman-Monteith equation for latent heat flux.
    
- **Literature Review:** Research why the Dalton approach is restricted to North-German lakes and why it might fail in arid environments.

