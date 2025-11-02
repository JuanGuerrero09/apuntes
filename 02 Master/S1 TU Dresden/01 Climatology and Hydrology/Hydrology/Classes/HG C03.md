---
Class: "[[Hydrology]]"
Date: 2025-10-27
Last Modified: Monday 27th October 2025 11:14
---
# Monday 27th October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

## The (River) Catchment

A **catchment** (or **drainage basin**) is an area of land where all **surface water** converges toward a single outlet point — such as a **river mouth**, **lake**, or **ocean**.  
It represents a **three-dimensional hydrological system**, while the **drainage area** is its horizontal projection.

A catchment is an **open hydrological system**: it exchanges **water, energy, and matter** with neighboring systems across its boundaries.  
Understanding and **accurately delineating catchment boundaries** is fundamental for any hydrological analysis.
![[Pasted image 20251027112219.png]]

---
### Surface Water Catchments

- Defined by **topographic divides**, which separate one drainage basin from another.
- Delineated using **contour maps** or **Digital Elevation Models (DEMs)** of appropriate resolution.
- Divides are drawn **perpendicular to contour lines**, starting from the selected river cross-section or outlet point.

---
### Groundwater Catchments

Groundwater basins are not necessarily aligned with surface catchments. They are shaped by **bedrock geometry** and **subsurface layers**, and often extend beyond surface boundaries.

Key aspects:

- **Impermeable layers** act as subsurface divides.
- **Groundwater catchments** may **exceed** the surface drainage area.
- **Hydrogeological divides** separate different aquifers.
- Mismatches between surface and groundwater catchments can **significantly affect water balance**, especially in small basins.

![[Pasted image 20251027112843.png]]

#### Multi-storey Groundwater Catchments

In **coastal regions** or areas with **confined aquifers**, multiple groundwater systems may exist vertically stacked — forming **multi-storey groundwater catchments** separated by impermeable layers.

---

### Estimating Long-term Average Precipitation

A basic estimation can be made using the **water balance**:

$$
P = R + ETR
$$
Given data for runoff RRR and precipitation PPP, evapotranspiration (ETR) can be estimated as the residual.

Example:
$$
\begin{gather}
P= 3000 mm/a
\\
R=209*10^3 m^3/s=6.6*10^{12} m^3/a
\\
R/Area = \frac{6600 km^3/a}{7 * 10^6 km^2} = 9.43*10^-4 km/a = 943 mm/a
\\ \\
ETR = P-R = 3000-943 = 2057 mm/a
\end{gather}$$
For large areas, use **mm/a** as preferred units.  
This example shows that, on average, **ETR ≈ ⅔ of precipitation**, while **runoff ≈ ⅓**.

---

### Structure of Catchments

#### Vertical Structure

Catchments consist of multiple interacting layers:

- **Surface:** rivers, lakes, and overland flow
- **Soil and vadose zone:** unsaturated zone where infiltration and percolation occur
- **Groundwater system:** saturated zone where flow is governed by hydraulic gradients
- **Bedrock:** underlying impermeable base limiting groundwater movement

#### Horizontal Structure

Spatial characteristics influencing hydrological behavior:

- **Geomorphology** and **topography**
- **River network structure**
- **Vegetation cover**
- **Soil types**

#### Classification Methods

Approaches for representing spatial variability:

- **Lumped models:** treat the entire catchment as one unit with averaged properties
- **Statistical approaches:** group similar hydrological characteristics
- **Hydrotopes / HRUs (Hydrological Response Units):** define zones with uniform hydrological behavior
- **Spatially explicit (raster-based):** represent properties cell by cell using GIS and databases

> For further reading: _Dingman (2008) – Physical Hydrology, Chapter 3: Climate, the Hydrological Cycle, Soils, and Vegetation._

## Hydrological Processes

### Hydrological Processes and Systems

The main hydrological processes describe the **movement and storage of water** across different components of the catchment:

- **Precipitation (P)**
- **Evapotranspiration (ETR)**
    - Interception (by vegetation)
    - Evaporation (from surfaces and soil)
    - Transpiration (from plants)
- **Runoff (R)**
    - Surface runoff
    - Subsurface (soil) runoff
    - Groundwater runoff
    - Snowmelt contribution
- **Infiltration (I)**
- **Storage (S)**
    - Soil moisture
    - Groundwater
    - Lakes and rivers
    - Interception
    - Snow and ice

---

#### Movement of Water

At the **catchment scale**, water moves through the system under changing **pressure, temperature, phase, and density**.  
The level of model detail depends on the investigation goal:

- **Low detail (lumped analysis):** for large-scale management such as flood control or reservoir operations — focuses on runoff time series.
- **High detail (distributed analysis):** for site-specific studies such as groundwater quality or drinking water protection — focuses on flow paths and residence times.

---

#### Runoff Generation

Runoff generation is the transformation of precipitation into streamflow.
![[Pasted image 20251027221049.png]]
Three main stages:

1. **Runoff formation:** precipitation reaching the ground and generating excess water (hillslope processes).
2. **Runoff concentration:** accumulation and routing of this water toward the catchment outlet.
3. **Flood propagation:** movement of water through the river channel system.

---
### Hydrological Modelling

Hydrological models simulate the interaction between **precipitation, evapotranspiration, infiltration, and runoff** to estimate how a catchment responds to rainfall or snowmelt.  
They can range from **conceptual** to **physically based**, depending on the desired level of realism and data availability.


---
# 🐢 Definitions

Lumped analysis: simplified method in thermal engineering that assumes a system has a uniform temperature throughout, allowing it to be treated as a single point for easier heat transfer calculations.


---
# 📅 Homework

- [ ] Tutorial of catchment delineation
- [ ] Exercise for catchment delineation
- [ ] Study Project - Water Balance Calculate the annual mean water balance for a catchment in your home region

