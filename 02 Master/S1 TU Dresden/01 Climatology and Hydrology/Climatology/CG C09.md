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

**Validation Methods:**

- **Tracers:** Releasing gases like $SF_6$ to map actual transport.
- **Obstacles:** Using physical barriers to analyze turbulence signatures.
- **Natural Discontinuities:** Comparing data from areas with distinct source densities.

- **General Requirements for Validity:**
    - Height-constant fluxes (valid within the surface layer).
    - Horizontally homogeneous wind field and surface.
    - Applicability of a diffusion model.

- **Input Parameters:** Measurement height, roughness length ($z_0$), stability, standard deviation of lateral wind, and horizontal wind velocity.

- **Limitations:**
    - Only applicable in the surface layer (which becomes very thin under stable conditions).
    - Not applicable during free convection or over heterogeneous surfaces.
    - Interaction with complex parameters like mixing layer height and the Coriolis parameter.

### Internal Boundary Layers (IBL)

When air moves from one surface type to another, profiles (wind, temperature, $H_2O$, $CO_2$) must adapt to the new surface, the atmosphere must "re-equilibrate".

- **Profiles Carried Downwind (Advection):** As air moves, it carries the physical "memory" (wind speed, temperature, $CO_2$ concentration) of the upwind surface.

- **The Adaptation Process:** Adaptation is not instantaneous. It begins at the surface and propagates upward through turbulent mixing.

- **Structure of the Discontinuity:**
    - **Below the Discontinuity:** The air is in equilibrium with the _new_ underlying surface.
    - **Transition Layer:** A zone containing properties of both the upwind and local surfaces.

- **IBL Height Dynamics:** The depth of the adjusted layer grows with distance from the roughness change. This growth depends on the specific roughness contrast between the two surfaces.
- NEL: New equilibrium layer
	- Below the discontinuity
	-  Is in equilibrium with the underlying surface 
	- Height depends on 
		- distance to roughness change 
		- Surface roughness on both sides of the change 

**Wind Profile Scenarios:**

Wind profiles adapt differently depending on the direction of the roughness change:

1. **Before change:** Profile is in equilibrium with the original surface and reflects the original upwind equilibrium.
2. **Rough to Smooth:** The surface friction drops; wind speed accelerates at lower levels, creating a more vertical profile near the ground.
3. **Smooth to Rough:** Friction increases; wind speed is sharply reduced near the surface, and turbulence increases as the air "hits" the rougher surface.

![[Pasted image 20260115194920.png]]


---
# 💡 Key Takeaways

- **Non-Local Origin of Fluxes**: Atmospheric flux measurements (heat, $CO_2$, $H_2O$) do not represent the conditions directly at the sensor's base but are generated from a weighted upwind area.
    
- **Stability-Driven Footprint Scale**: The spatial extent of a sensor's "view" is highly elastic; stable atmospheric conditions can expand the footprint area by up to 50 times compared to highly unstable conditions.
    
- **Advection as Atmospheric "Memory"**: When air crosses a surface boundary, profiles of wind, temperature, and gas concentrations are carried downwind, maintaining the physical properties of the previous upwind surface.
    
- **Staged Adaptation Process**: The adjustment to a new surface is not instantaneous; it begins at the ground and propagates upward through turbulent mixing, creating distinct layers of equilibrium and transition.
    
- **Roughness-Dependent Wind Profiles**: Surface friction changes dictate wind behavior; transitioning from smooth to rough surfaces sharply reduces near-surface wind speed and increases mechanical turbulence.
    
- **Model Constraints**: Valid footprint modeling requires height-constant fluxes within the surface layer and horizontally homogeneous wind fields, which limits their use in complex or free-convection scenarios.

---
# 💭 Questions

- **Spatial Representative**: How can we ensure a flux station is measuring a specific target ecosystem if the footprint expands to 5 km during stable nighttime conditions?
    
- **Validation Limitations**: Why are comparisons between different footprint models currently based only on datasets rather than comprehensive field validation?
    
- **IBL Vertical Extent**: What specific roughness contrast parameters determine the growth rate of the New Equilibrium Layer (NEL) height over a given distance?
    
- **Model Applicability**: How do interactions with the Coriolis parameter and mixing layer height affect the accuracy of Lagrangian stochastic models in complex terrain?
    
- **Roughness Transitions**: In wind energy applications, how far downwind from a rough-to-smooth transition does the wind profile become vertical enough to maximize turbine efficiency?

---
# 🐢 Definitions

- **Flux Footprint**: The upwind area "seen" by instruments where vertical turbulent transport of heat, water, gas, and momentum is generated.
    
- **Internal Boundary Layer (IBL)**: A newly formed atmospheric layer that develops downwind of a surface discontinuity as air re-equilibrates with a new surface.
    
- **Advection**: The process by which atmospheric profiles are carried downwind, allowing upwind areas to affect local energy and matter fluxes.
    
- **New Equilibrium Layer (NEL)**: The region below a discontinuity that has fully adapted to and is in equilibrium with the underlying surface.
    
- **Transition Layer**: The zone within an Internal Boundary Layer that contains a mixture of properties from both the upwind and local surfaces.
    
- **Analytic Models**: Models based on the mathematical solution of the diffusion equation used to estimate the flux footprint.
    
- **Lagrangian Models**: Models utilizing the stochastic calculation of particle distributions to determine source areas for measured fluxes.

---
# 📅 Homework



