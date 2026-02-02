---
Class: "[[Climatology]]"
Date: 2026-01-15
Last Modified: Sunday 11th January 2026 19:14
---
# 📅 Friday 9th January 2026

# 📒Class Summary

Today’s session focused on the complexities of atmospheric measurements over non-homogeneous surfaces, specifically detailing the **Flux Footprint** concept and the development of **Internal Boundary Layers (IBL)**. We explored how atmospheric stability dictates the source area of measured fluxes and how sudden changes in surface roughness (e.g., transitioning from a smooth field to a rough forest) alter vertical profiles of wind, temperature, and gas concentrations.


---
# 📝 Notes

## 5. Specifics of near-surface turbulence - climates over complex surfaces

### Flux footprint

Flux footprint (also known as atmospheric flux footprint or footprint) is an upwind area where the atmospheric flux measured by an instrument is generated. Specifically, the term flux footprint describes an upwind area "seen" by the instruments measuring vertical turbulent fluxes, such that heat, water, gas and momentum transport generated in this area is registered by the instruments

**Height influence**: The higher the measurement, the higher footprint area and extent

![[Pasted image 20260115194421.png]]

Atmospheric flux measurements (heat, $CO_2$, $H_2O$) are **non-local**. They do not represent the ground directly beneath the sensor but a weighted area upwind.

- **Origin:** Fluxes originate from the upwind area of the instrument.
- **Weighting Footprint Function:** A mathematical weighting where influence is not equally distributed. The "peak" contribution usually occurs some distance upwind, depending on sensor height.
- **Atmospheric Stability:** The size and extent of the footprint depend heavily on stratification.
	- **Highly Unstable:** Convection dominates; the footprint is small ($0.15 \text{ km}^2$) because vertical transport is rapid.
	- **Stable:** Turbulence is suppressed; the footprint expands drastically ($7.5 \text{ km}^2$) as the signal must travel further horizontally to reach the sensor.

**Flux footprint depends on atmospheric stability**

| **Stratification** | **Area (km2)** | **Extent (km)** |
| ------------------ | -------------- | --------------- |
| Highly Unstable    | 0.15           | 0.75            |
| Unstable           | 0.4            | 1.0             |
| Neutral            | 1.0            | 2.5             |
| Stable             | 7.5            | 5.0             |

**Footprint Climatology:** Evaluates which land-cover types contribute to measured fluxes over long periods.

#### Footprint models

Models generally fall into two categories: **Analytic models** (solving the diffusion equation) and **Lagrangian models** (stochastic calculation of particle distribution).

**General Requirements for Validity:**
    - Height-constant fluxes (valid within the surface layer).
    - Horizontally homogeneous wind field and surface.
    - Applicability of a diffusion model.

**Input Parameters:** Measurement height, roughness length ($z_0$), stability, standard deviation of lateral wind, and horizontal wind velocity.

**Validation Methods:**
	- **Tracers:** Releasing gases like $SF_6$ to map actual transport.
	- **Obstacles:** Using physical barriers to analyze turbulence signatures.
	- **Natural Discontinuities:** Comparing data from areas with distinct source densities.

**Limitations:**
- Only applicable in the surface layer (which becomes very thin under stable conditions). 
- Not applicable during free convection or over heterogeneous surfaces.
- Interaction with complex parameters like mixing layer height and the Coriolis parameter.

**Footprint mismatch:**
- **Ground heat flux measurement:** Involves a very small area; however, soil is very heterogeneous.
- **Atmospheric fluxes:** Involves a very large area; must consider different surface types in heterogeneous surroundings.
- **Energy Balance Closure:** Components may not add up, leading to underclosure or overclosure where $Q^* \neq Q_H + Q_E + Q_G + \Delta Q_S$.

---
### Internal Boundary Layers (IBL)

When air moves from one surface type to another, profiles (wind, temperature, $H_2O$, $CO_2$) must adapt to the new surface, the atmosphere must "re-equilibrate".

- **Profiles Carried Downwind (Advection):** As air moves, it carries the physical "memory" (wind speed, temperature, $CO_2$ concentration) of the upwind surface.

- **The Adaptation Process:** Adaptation is not instantaneous. It begins at the surface and propagates upward through turbulent mixing.

- **Structure of the Discontinuity:**
    - **Below the Discontinuity:** The air is in equilibrium with the _new_ underlying surface.
    - **Transition Layer:** A zone containing properties of both the upwind and local surfaces.

- **IBL Height Dynamics:** The depth of the adjusted layer grows with distance from the roughness change. This growth depends on the specific roughness contrast between the two surfaces.

- NEL: New equilibrium layer
	- Exists below the discontinuity
	- Is in equilibrium with the underlying surface 
	- Height depends on the distance to roughness change and the surface roughness on both sides of the change.

**Wind Profile Scenarios:** Wind profiles adapt differently depending on the direction of the roughness change:

1. **Before change:** Profile is in equilibrium with the original surface and reflects the original upwind equilibrium.
2. **Rough to Smooth:** The surface friction drops; wind speed accelerates at lower levels, creating a more vertical profile near the ground.
3. **Smooth to Rough:** Friction increases; wind speed is sharply reduced near the surface, and turbulence increases as the air "hits" the rougher surface.

![[Pasted image 20260115194920.png]]

Affection in other characteristics of air:
- Concentration and fluxes change with distance from leading edge
- **Special Case: Clothesline Effect:** Warm, dry air from the side enters a vegetation canopy, increasing the Vapor Pressure Deficit (VPD). This enhances evapotranspiration (ET), rapidly depleting soil moisture ($m_{soil}$) near the stand border, leading to smaller plants and reduced yield.

---
### Thermal circulations

**Land-Sea Breeze:**
- **Daytime:** $T_{sea} < T_{land}$. Temperature differences cause pressure differences, resulting in a sea breeze. Moist air heats over land, rises, and forms cumulus clouds, which are carried seaward by the return flow.
- **Nighttime:** $T_{land} < T_{sea}$, causing a land breeze due to the reversed pressure gradient.

![[Pasted image 20260124125623.png]]

**Secondary Circulation:**

- Defined as organized flow superimposed on a larger-scale mean circulation (e.g., roll vortices).
- These vortices "fill" the boundary layer vertically with a width two to three times the boundary layer depth.
- They develop randomly even over homogeneous surfaces (**turbulent organized structures**) and due to thermal surface heterogeneity (**thermally induced mesoscale circulations**).

---

**Topography Effects**

- **Lambert's Cosine Law:** Slope angle and orientation influence the direct beam shortwave radiation ($S$) gain.
- **Thermals due to topography:** Air is lifted; with a lapse profile, it remains warmer than the surroundings, causing it to accelerate upward.

---
### Modifying Local Climates

**Geometry Control:** Aimed at maximizing direct beam shortwave radiation ($S$) gain by trapping radiation through multiple reflections and reducing longwave radiative loss (e.g., in asparagus cultivation). Overall, this increases $T_{soil}$.

**Shelter Effects:** Modification of local microclimates by natural or artificial barriers. Aimed at reducing horizontal wind speed to reduce turbulence and alter energy/water balances.

- **Daytime:** Reduced heat gain results in decreased $T_{air}$; reduced ET leads to increased $m_{soil}$.
- **Nighttime:** Reduced heat loss results in increased $T_{soil}$ and $T_{air}$; increased dewfall leads to increased $m_{soil}$.
- **Overall:** Higher crop yield.

**Other Modifications:**

- **Albedo change:** Adding white powder/paint to increase reflection of incoming shortwave radiation.
- **Mulching:** Provides insulation and preserves soil moisture.
- **Irrigation for frost prevention:** Freezing water on buds/flowers releases latent energy, raising the temperature to $0^\circ\text{C}$.
- **Glasshouse:** Acts as a radiative filter (transmits shortwave, traps longwave) and a wind shelter.
- **Screenhouse:** Reduces incoming shortwave radiation and acts as a wind shelter.


---
# 💡 Key Takeaways

- **Non-Local Origin of Fluxes**: Atmospheric flux measurements (heat, $CO_2$, $H_2O$) do not represent the conditions directly at the sensor's base but are generated from a weighted upwind area.

- **Stability-Driven Footprint Scale**: The spatial extent of a sensor's "view" is highly elastic; stable atmospheric conditions can expand the footprint area by up to 50 times compared to highly unstable conditions.

- **Advection as Atmospheric "Memory"**: When air crosses a surface boundary, profiles of wind, temperature, and gas concentrations are carried downwind, maintaining the physical properties of the previous upwind surface.

- **Internal Boundary Layers**: Adaptation to a new surface is a staged process starting at the ground, creating distinct layers (NEL and Transition).

- **Roughness-Dependent Wind Profiles**: Surface friction changes dictate wind behavior; transitioning from smooth to rough surfaces sharply reduces near-surface wind speed and increases mechanical turbulence.

- **Model Constraints**: Valid footprint modeling requires height-constant fluxes within the surface layer and horizontally homogeneous wind fields, which limits their use in complex or free-convection scenarios.

- **Clothesline Effect**: Edge effects in canopies increase ET and VPD through lateral advection of dry air, significantly impacting border crop yields.

- **Shelter Benefits**: Reducing wind speed through shelter effects generally increases soil moisture and can stabilize temperatures for higher yields.

---
# 💭 Questions

- How does the "Clothesline Effect" differ from the "Oasis Effect" in terms of microclimatic energy exchange?
    
- Explain why the land-sea breeze reverses between day and night based on pressure and temperature gradients.
    
- How does the geometry control in agriculture (like asparagus cultivation) specifically reduce longwave radiative loss?
    
- Under what conditions would you expect a "footprint mismatch" to lead to a significant energy balance underclosure?
    
- What is the difference between **Analytic models** and **Lagrangian models** in the context of flux footprint estimation?
    
- How does **atmospheric stability** (stratification) specifically influence the area and extent of a flux footprint?
    
- Describe the three different **wind profile scenarios** that occur when air moves across a surface roughness change.
    
- What are the **General Requirements** for a footprint model to be considered valid?
    
- Contrast the effects of **Shelter Effects** on air and soil temperature ($T_{air}, T_{soil}$) between daytime and nighttime.
    
- Explain how **Internal Boundary Layers (IBL)** develop as air move from one surface type to another.
    
- What are **"Secondary Circulations"** and how do they differ from the mean circulation?


---
# 🐢 Definitions

- **Flux Footprint**: The upwind area "seen" by instruments where vertical turbulent transport of heat, water, gas, and momentum is generated.
    
- **Internal Boundary Layer (IBL)**: A newly formed atmospheric layer that develops downwind of a surface discontinuity as air re-equilibrates with a new surface.
    
- **Advection**: The process by which atmospheric profiles are carried downwind, allowing upwind areas to affect local energy and matter fluxes.
    
- **New Equilibrium Layer (NEL)**: The region below a discontinuity that has fully adapted to and is in equilibrium with the underlying surface.
    
- **Transition Layer**: The zone within an Internal Boundary Layer that contains a mixture of properties from both the upwind and local surfaces.
    
- **Analytic Models**: Models based on the mathematical solution of the diffusion equation used to estimate the flux footprint.
    
- **Lagrangian Models**: Models utilizing the stochastic calculation of particle distributions to determine source areas for measured fluxes.

- **Vapor Pressure Deficit (VPD)**: The difference between the moisture capacity of the air and its actual moisture content.
    
- **Secondary Circulation**: Organized flows like roll vortices superimposed on the mean circulation.

---
# 📅 Homework



