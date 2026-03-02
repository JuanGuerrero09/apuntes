---
Class: "[[Climatology]]"
Date: 2026-01-30
Last Modified: Friday 30th January 2026 00:05
---
# 📅 Friday 30th January 2026

# 📒Class Summary

Today's session provided an in-depth analysis of **Urban Climate**, focusing on the unique physical, thermal, and aerodynamic properties of cities. We explored the classification of **Local Climate Zones (LCZ)**, the structural layers of the **Urban Boundary Layer**, and the significant alterations to **Energy and Water Balances** caused by anthropogenic activities and impervious surfaces. We also examined the complex **airflow patterns** around buildings and the drivers of the **Urban Heat Island (UHI)** effect.

---

# 📝 Notes

## 7. Urban Climate

The climate of a city is a result of the modification of the local environment by human structures and activities. The **Local Climate Zone (LCZ)** classification is used to standardize these environments based on several physical parameters:

- **Building and Impervious Plan Fractions:** The ratio of built-up/paved area to total area.
- **Canyon Aspect Ratio ($H/W$):** The ratio of building height to street width.
- **Sky View Factor (SVF):** The extent to which the sky is visible from a point on the ground.
- **Thermal Admittances & Anthropogenic Heat Flux Density ($Q_F$):** Heat related to human energy consumption.

**Spatial Scales of Urban Influence:**

- **Urban Canopy:** Microscale (individual streets and buildings).
- **Urban Dome:** Mesoscale (the entire city and its immediate surroundings).
- **Urban Plume:** Macroscale (the downwind area affected by the city's air).

![[Pasted image 20260206100614.png]]

- **The Scale of Impact:** It is vital to distinguish between the **Urban Canopy Layer (UCL)** and the **Urban Boundary Layer (UBL)**. The UCL is where humans live (between buildings), and its climate is dominated by street-level geometry. The UBL is the "dome" or "plume" that sits above the city, dominated by the integrated heat and moisture signatures of the entire urban area.
![[Pasted image 20260208123012.png]]

---

### Urban Boundary Layer (UBL)

The UBL is the portion of the atmosphere influenced by the presence of a city. Its structure changes between day and night.

**Daytime Structure:**

- **Urban Boundary Layer (UBL)** 
	- **Surface layer (SL)**
		- Urban canopy layer (UCL)
		- Inertial sublayer (ISL) 
		- Roughness sublayer (RS): Immediately above the buildings where flow is highly turbulent.
	- **Mixed Layer** (ML) (Also includes **entrainment zone** (EZ))

- **Inertial Sublayer & Mixed Layer:** Regions where turbulence becomes more uniform.
- **Entrainment Zone & Free Atmosphere:** Transition to the undisturbed atmosphere.

**Nighttime Structure (Complements):**

- Urban boundary layer
	- ISL, RSL, UCL
- Nocturnal stable layer (NSL)
- Residual layer (RL)
- Capping inversion

- **Nocturnal Stable Layer:** Formed due to radiative cooling.
- **Capping Inversion & Residual Layer:** Stable layers that trap pollutants.

---

### 7.2 Radiation and Air Pollution

Urban surfaces significantly alter the radiation balance due to their materials and geometry.

**Urban Surfaces Properties:**

- **Albedo:** Generally lower in cities due to dark materials (asphalt/roofs) and "radiation trapping" in canyons.
![[Pasted image 20260130093446.png]]

- **Emissivity:** Varies by material (brick, concrete, glass).
![[Pasted image 20260130093459.png]]

**Urban Canopy Geometry:** Complex geometries create multiple reflections, reducing the effective albedo and increasing energy absorption.

![[Pasted image 20260130093919.png]]

**Urban Air Pollution:** The city acts as a source of aerosols and gases, which can reduce incoming solar radiation and enhance longwave radiation trapping and re-emition. While shortwave gets scattered, absorbed, reflected and transmited.

![[Pasted image 20260130094127.png]]

---
### Energy Balance

The urban energy balance includes anthropogenic heat, which is absent in rural environments.

![[Pasted image 20260130094212.png]]

**Equations:**

- **Rural (Grass):** $Q^* = Q_H + Q_E + Q_G$
- **Urban:** $Q^* + Q_F = Q_H + Q_E + \Delta Q_S + \Delta Q_A$
    - $Q_F$: Anthropogenic heat flux (transport, heating, industry).
    - $\Delta Q_S$: Change in heat storage (stored in building mass).
    - $\Delta Q_A$: Energy advection (heat transported by wind).

**Key Observations (e.g., Vancouver/Suburban):**

- High density and reduced green space increase $Q_H$ (sensible heat) and $\Delta Q_S$ while reducing $Q_E$ (latent heat/evaporation).
- $Q_F$ peaks in the morning and evening (commuting) and varies seasonally (winter heating vs. summer cooling).
- In rural areas, $\Delta Q_S$ (storage) is often small. In cities, the massive thermal mass of concrete and asphalt acts like a **thermal battery**. It "charges" during the day by absorbing solar radiation and "discharges" at night. This slow release is the primary reason why cities don't cool down as fast as the countryside after sunset.

![[Pasted image 20260130094430.png]]

**Density and Green Space Influence:**

The partitioning of these fluxes is dictated by the city's density:

- **Measurement Challenge:** $Q_F$ is difficult to measure directly and is often not considered individually, becoming part of $Q_H$ or $Q_E$.

- **City Comparisons:** Different cities show different partitioning between $Q_H$, $Q_E$, and $\Delta Q_S$.

- **Flux Trends:** Moving from low-density to high-density areas (a to d in the figure below):
    - The share of **$Q_H$ decreases**.
    - The share of **$\Delta Q_S$ increases** due to more building mass.

![[Pasted image 20260130094910.png]]

**Anthropogenic Heat Release ($Q_F$):**

This flux varies across three primary cycles influenced by human activity:

- **Diurnal Cycle:** Daytime > nighttime due to activity levels. Peaks occur in mornings and evenings during commutes.
- **Annual Cycle:** While traffic remains constant, electricity and gas for heating cause an increase in winter. In hot climates, energy consumption for cooling creates different patterns.
- **Weekly Cycle:** Reduced energy demand on weekends and holidays.

---
### Water Balance

The water cycle in urban environments is significantly altered compared to natural fields due to the introduction of piped water and anthropogenic releases.

**In Field:**

$$P = E + \Delta S + G + \Delta R$$

**In City:**

$$P + I + F = E + \Delta S + G + \Delta R$$

**Variables:**

- **P:** Precipitation
- **I:** Piped water supply
- **F:** Anthropogenic water release due to combustion
- **E:** Evapo(transpi)ration
- **$\Delta S$:** Change of water storage
- **G:** Infiltration into groundwater
- **$\Delta R$:** Net runoff

Diurnal, weekly, and annual patterns of the urban water balance are closely linked to energy use in the city, particularly the water released by burning fossil fuels for heating and traffic.

**Piped Water ($I$):**

- Both diurnal and annual cycles of piped water usage are strictly linked to human activities.

**Land Cover and Runoff:**

Urbanization drastically increases the proportion of precipitation that becomes runoff due to the high fraction of impervious surfaces:

- **Forest:** 5% runoff
- **Low plants:** 15% runoff
- **Residential:** 30% runoff
- **Commercial:** 60% runoff

![[Pasted image 20260130101742.png]]


---
### Airflow

#### Isolated Buildings

The interaction between wind and a single building creates specific zones of pressure and turbulence:

- **Velocity Profiles:** Wind speed is reduced on the windward side and highly turbulent in the leeward wake.
- **Turbulent Kinetic Energy:** Intensity of turbulent motions (variance) is high along-wind, across-wind, and in vertical directions.

![[Pasted image 20260130101845.png]]
- **a) velocity profiles**
- **b) zones of the flow**
- **c) time-averaged u-velocity at different heights along the center line** ($u_{mean}$ is the undisturbed wind speed)

#### Building Arrays

The packing density—specifically building height ($z_H$) versus spacing—determines the flow patterns in urban street canyons:

- **Flow Patterns:** Cross-canyon vortex, helical flow, multiple stacked vortices, and channeling.

- **Intersections:** At a 4-way intersection with diagonal above-roof flow, helical flows generate an upwards-tilted "conveyor belt" that lifts pollutants to the above-roof level.    
- **T-junctions:** These exhibit increased wind speed in the receiving canyon, leading to a stronger "conveyor belt" effect.

a) Flow at a 4-way intersection on an  orthogonal street grid with above-roof flow diagonal to the grid → combination of helical flows in both streets generate upwards tilted conveyor belt → lifts pollutants to above-roof level b) Same, but at a T-junction → increased wind speed in receiving canyon → stronger conveyor belt 

#### Roughness and Momentum Transport

Wind profiles are dampened inside the urban canopy layer (UCL) and show an inflection point at the top of the canopy.

- **Log-law Adaptation:** Above the UCL, the profile adapts to the log-law in the roughness sublayer (RSL).
- **Momentum Flux:** Almost no momentum flux occurs at $1/2 z_H$. Momentum is transported by turbulent eddies in the RSL and inertial sublayer (ISL).
- **Sweeps and Ejections:** Sweeps bring high-velocity eddies downward (dominant in UCL and lower RSL), while ejections bring lower momentum upward (dominant in upper RSL and ISL).

a) Model pattern 
b) Almost no momentum flux at ½ zH (zH:  average building height) Reduced above zH = 1 (some tall buildings) 
c) Momentum is transported by turbulent eddies above in RSL and ISL Transport efficiency reduced in UCL
d) Sweeps bring eddies with higher velocity downwards (positive values, dominant in  UCL and lower RSL) Ejections bring lower momentum upwards (dominant in upper RSL, ISL) 

![[Pasted image 20260130102931.png]]

Wind speed at 15 m above ground with increasing roughness: 30% reduction 
Mixing increases with roughness → reduced gradients 

**Roughness Parameters:**

Increasing roughness can cause a 30% reduction in wind speed at 15 m above ground, while mixing increases.

- **Roughness Length ($z_0$):** Initially increases with density but then decreases as "skimming" occurs.
- **Displacement Height ($z_d$):** Increases with density until it reaches the average building height ($z_H$).

$$\frac{u_Z}{u_{zref}} = \frac{\ln((z-z_d)/z_0)}{\ln((z_{ref}-z_d)/z_0)}$$

![[Pasted image 20260130103621.png]]

Requirements: • high solar radiation input (day)/strong radiative cooling (night) → clear sky • very weak background wind, otherwise: plume instead of dome! (

---
### Urban heat island

#### UHI Circulation

A typical UHI circulation (urban breeze) develops under specific requirements: high solar radiation (day) or strong radiative cooling (night) with clear skies and very weak background wind. Otherwise, the city creates a plume rather than a dome.

#### UHI Characteristics

- **Daytime:** Surface temperature is higher in built-up areas, but air temperature is similar to rural areas. There is a pronounced surface UHI ($UHI_{Surf}$) but not a canopy layer UHI ($UHI_{UCL}$).

- **Nighttime:** Both surface and air temperatures in built-up areas are higher than in rural areas, showing pronounced $UHI_{Surf}$ and $UHI_{UCL}$.    

![[Pasted image 20260130103840.png]]

The UHI is closely linked to urban development, including the **shape**, **magnitude**, and **size** of the city. Background wind speed directly affects the magnitude and shape of the heat island.

![[Pasted image 20260130103911.png]]

**Canopy layer heat island ($UHI_{UCL}$)**
Causes:
- Surface geometry: increased surface area and closely spaced buildings
- Termal properties: building materials have greater capacity to store and release sensible heat.
- Surface state: surface waterproofing reduces soil moisture and surface wetness, convection favours sensible over latent heat flux, lower albedo in snow increases shortwave absorbtion in cities.
- Anthropogenic heat: Anthropogenic heat relases due to fuel combustion and electricity is much greater in city
- Urban "greenhouse effect": warmer, polluted and more moist urban atmosphere emits more downward longwave radiation to UCL

**Boundary layer heat island ($UHI_{UBL}$)

Causes:
- Pulluted boundary layer: Aerosol and gaseous pollutants result in grater absorption and emission of longwave
- Sensible heat flux: greater turbulent sensible heat flux from rougher, water city surface.
- Anthropogenic heat: Heat injected upward into UBL from chimneys and factory stacks
- Entrainment: stronger convection causes injection of warmer drier air from above capping inversion

---
# 💡 Key Takeaways

- **Urban Water Inputs:** Cities uniquely include piped water supply ($I$) and anthropogenic water release ($F$) from combustion in their water balance.

- **Runoff Sensitivity:** Moving from a forest to a commercial zone increases runoff by over 10 times (5% to 60%).
 
- **Flow Regimes:** Roughness length ($z_0$) does not increase infinitely with density; it peaks and then decreases as the flow begins to "skim" over the rooftop level.
   
- **UHI Timing:** The canopy layer heat island is primarily a nocturnal phenomenon, whereas surface heat islands are present during the day.

---
# 💭 Questions

- How do piped water supply ($I$) and water from combustion ($F$) change the standard water balance equation in a city?
    - By increasing the water input to the city, adding to the existing precipitation part.
- What is the difference between $UHI_{SL}$ and $UHI_{UCL}$ during the day and night?
    - idk they are the same in the picture
- Describe the behavior of roughness length ($z_0$) as urban density increases from low to very high.
    - Higher density equals more buildings and more roughness length
- Why does a commercial area produce 60% runoff compared to only 5% in a forest?
    - Due the non permeable surfaces used in the commercial area, it makes a big part of the precipitation go to runoff and only a small part in infiltration
- What are "sweeps" and "ejections" in the context of urban momentum transport?
    - idk
- Explain the role of weak background wind in the formation of an urban heat island dome.
	- idk
- Why is $Q_F$ (anthropogenic heat) often difficult to measure individually in energy balance studies?
    - Due the different sources 
- How does the Sky View Factor (SVF) contribute to the formation of the nocturnal Urban Heat Island?
    - The smaller the Sky View Factor the more difficult have the long wave radiation fo go out of the system, since the reflextions keep it trapped
- What is the difference between "sweeps" and "ejections" in urban momentum transport?
    - idk
- Contrast the urban water balance equation with the natural field water balance equation. What are the two unique urban inputs?
	- Combustion water vapour and pipeline water input

---
# 🐢 Definitions

- **Local Climate Zone (LCZ):** A classification system for urban and rural sites based on properties influencing local temperature.

- **Anthropogenic Water Release ($F$):** Water vapor released during the combustion of fossil fuels.
    
- **Skimming Flow:** A flow regime where wind primarily interacts with the tops of buildings, reducing momentum flux into the canyons.
    
- **Displacement Height ($z_d$):** The height at which the wind profile appears to begin, typically increasing with building density.
    
- **Roughness Length ($z_0$):** A parameter representing the aerodynamic roughness of the urban surface.

---
# 📅 Homework

- **Analysis:** Calculate the runoff volume for a commercial area versus a residential area for a 100 mm rainfall event.
    
- **Conceptual:** Draw the wind profile inside and above the Urban Canopy Layer (UCL) and label the inflection point.

