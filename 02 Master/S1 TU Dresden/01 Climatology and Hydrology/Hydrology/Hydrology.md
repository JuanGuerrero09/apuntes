---
Class: "[[01 Climatology and Hydrology]]"
Date: 2025-10-13
Last Modified: Monday 13th October 2025 11:03
Professor: Dr Thomas Wöhling
email: thomas.woehling@tu-dresden.de
tags:
  - hydrology
---
# 👨🏽‍🏫Professor

PD Fr. habil. Thomas Wöhling


# 📖Summary

## Knowledge
- The hydrological cycle and the coupling to the energy cycle
- The water balance and its main components
- Hydrological processes and scales
- Hydrological data acquisition and analysis
- Human impact on water resources
- Specific hydrological situation of different regions

## Competences

- Catchment Delineation
- Areal precipitation
	- *A*: Storm rainfall estimation (DDF)
	- *A*: Direct runoff (SCS-CN)
	- *B*: Flood frequency estimation (design floods)
- Catchment water balance


# 🕸️Resources and Relevant Links

Books:
- Dingman S. L., (2008/2014): Physical Hydrology, Waveland Press.
- Brutsaert W. (2005/23): Hydrology – An Introduction, Cambridge University Press
- Herschy R. W. (1999): Hydrometry Principles and Practices, Wiley & Sons.
- Maidment D. R. (1992): Handbook of Hydrology,McGraw- Hill.

Online:
- Shaw (1994): Hydrology in Practice
- Chow et al. (1988): Applied Hydrology
# 📚Notes

# Part I: Hydrology

# 1. Introduction
_Hydrology_ is the scientific study of the *movement*, *distribution*, and *quality* of water on Earth. 
## Challenges
- Access to potable water
- Adequate sanitation
- Food security
- Flood Protection
- Water Resources Management
### Scope of Hydrology

Hydrology focuses on **quantifying the water cycle** at or near the Earth’s surface. 

Characteristics of hydrological processes:
- **Non-stationary** (change in time)
- **Interconnected** with other natural systems

Fundamental physical laws:

- **Conservation of mass**
- **Conservation of energy**

### Work Areas of Hydrology

- Measurement and analysis of hydrological processes
- Engineering tasks (design, infrastructure)
- Integrated water resources management
- Agriculture and food production
- Research

---

# 2. Hydrologic Cycle
## The Global Hydrological Cycle

Driven mainly by:

- **Solar radiation**
- **Gravity**
- (Optionally Earth’s rotation)

Connected to the **planet’s heat balance** and to other **biogeochemical cycles** (carbon, nitrogen, etc.).  
Hydrological processes vary in **space** and **time**.

Spatial variation:

- Local & regional differences in climate, soil, vegetation.

Temporal variation:

- Seasonal & annual dynamics of precipitation, evaporation, runoff, etc.

![[Pasted image 20251021222410.png]]

## Global hydrological cycle

The Global hydrological cycle works as a **natural pollution control** due: 

- **Evaporation & distillation in the atmosphere**
- **Physical filtration** in soils and surface water
- **Chemical and biological transformations**

![[Pasted image 20251021222605.png]]
#### Water reservoirs: residence times
- **Atmosphere** – 9 days
- **Rivers/Lakes** – 0.3–80 years
- **Soils** – ~0.5 years
- **Groundwater** – 100 to 10,000 years
- **Glaciers/Ice caps** – ~10⁵ years
- **Oceans** – 3,200 years

###  Global ocean conveyer belt

- Large-scale circulation of ocean water
- Driven by differences in density (temperature & salinity)
- Full cycle duration: ~1,000 years
- Important for **nutrient** and **CO₂** transport

# 3. Water Balance

## Water Balance Equation

### Conservation of Mass

Main components:

- **P** – Precipitation
- **ETR** – Evapotranspiration
- **R** – Runoff
- **ΔS** – Change in storage

General form:
$$\Delta S = P - ETR - R$$
To compare catchments, water balance is expressed in **mm** over a defined **area** (catchment) and **time period** (e.g. hydrological year).

### Different Spatial and Temporal Scales

- **Global annual average:**
    $P = ETR \quad (953 \, \text{mm/yr})$
- **Land surface (149 million km²):**
    $P = ETR + R = 758 = 490 + 268 \, \text{mm/yr}$

### Storage Components

Water can be stored in:
- Snow / ice
- Soil moisture
- Groundwater
- Surface water (lakes, rivers)

---

### Temporal Variation of Components

![[Pasted image 20251021224900.png]]

Phases:

- **Water surplus**
- **Water deficit** (soil & groundwater depletion)
- **Subsurface recharge**

Hydrological year in Central Europe: **1.11 – 31.10**

---

### Factors Influencing Local Water Balance

- Climate (precipitation, temperature)
- Morphology (slope, elevation)
- Geology (permeability)
- Vegetation
- Soil characteristics

Variation of ETR and runoff depending on infiltration capacity:

- **Low infiltration capacity → high surface runoff, low ETR**
- **High infiltration capacity → high groundwater recharge, lower runoff**

---

### Generalized Water Balance for Any Land Area

$$P = ETR + \Delta S + SW_{out} - SW_{in} + GW_{out} - GW_{in}$$

Where:

- **SW** = Surface Water
- **GW** = Groundwater
- **in/out** = inflow or outflow

---

## Water and Heat Balance

Connection through **latent heat of vaporization (λ)**.

Energy balance:
$$R_n = G + H + LE \quad [W/m^2]$$
Where:

- **Rn** – Net radiation
- **G** – Ground heat flux
- **H** – Sensible heat flux
- **LE** – Latent heat flux = λ·E
- $\lambda \approx 2448 \, \text{kJ/m}^2$ to vaporize 1 mm of water

---

# 4. Catchment

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

# 5. Description of Hydrological Processes

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
## Hydrological Modelling

Hydrological modelling aims to describe how **precipitation (P)** is transformed into **runoff (R)** through a system of interacting processes such as infiltration, evapotranspiration, and storage. These models are key tools to **analyze**, **simulate**, and **forecast** hydrological behavior at multiple spatial and temporal scales.

Runoff generation involves three main stages:

- **Runoff formation** – precipitation reaching the surface and producing excess water.
- **Runoff concentration** – the routing of that water through the catchment.
- **Flood propagation** – movement through river channels toward the outlet.
---
### Model Scales

Models range from local field plots to continental basins, following the rule:

They follow the principle:

> “As simple as possible, as complex as necessary.”

|Scale|Typical Size|Focus / Examples|
|---|---|---|
|**Microscale**|1 m² – 1 ha|Field or lysimeter experiments; local infiltration; preferential flow.|
|**Mesoscale**|1 ha – 10² km²|Catchments and aquifers; spatial heterogeneity and hydrological connectivity.|
|**Macroscale**|10² km² – 10⁶ km²|River basins, large watersheds, continental hydrology; links with GCMs.|

> **Watershed vs River Basin:**  
> A _watershed_ drains into a local outlet (stream or wetland), while a _river basin_ aggregates multiple watersheds draining into a major river or sea.

Models at different scales must capture scale-dependent relationships and account for sub-scale effects.
#### Examples

- **Flood forecasting:** basin or catchment scale.
- **Self-cleaning mechanisms in rivers:** river reach scale.
- **Crop productivity and irrigation:** field or soil column scale.

---
### Modelling concepts

Hydrological models are abstractions — they focus on the dominant processes relevant to the research question.

> “All models are wrong, but some are useful.” – G. Box (1978)

![[Pasted image 20251103124616.png]]
They quantify **specific parts of the water cycle**, particularly rainfall–runoff relationships, by linking **inputs** (precipitation, ET, radiation, temperature) to **outputs** (runoff, infiltration, storage).

![[Pasted image 20251103174605.png]]

---
#### General structure of (hydrological) models

Hydrological models describe how **inputs** (precipitation, evapotranspiration, temperature, etc.) are transformed into **outputs** (runoff, infiltration, storage, etc.) through a system of **governing equations**:

$$\frac{\partial \theta}{\partial t} = \frac{\partial}{\partial z} \left(K \left(\frac{\partial h}{\partial z} + 1\right)\right) - S$$

Where:
- $\theta$ = soil water content
- $K$ = hydraulic conductivity
- $h$ = hydraulic head
- $S$ = sink term (e.g., root water uptake)

System description includes:
- Parameters and parameter models
- Submodules or process representations
- Spatial discretization (model grid)
- Equation solvers (analytical or numerical)
Models can be **analytical** or **numerical**, **lumped** or **distributed**, and always subject to simplification.

---
#### ⚙️ Model Inputs and Outputs

- **Inputs:** precipitation ($P$), potential evapotranspiration (ETP), temperature ($T$), radiation, soil data.
- **Outputs:** runoff, infiltration, evapotranspiration, storage, travel times.

Hydrological models transform these inputs using **physical laws** (mass and energy conservation) and **empirical relationships**.

---

#### Model Errors and Uncertainty

Uncertainties arise from:

- Data quality and measurement errors
- Spatial/temporal resolution limits
- Structural simplifications
- Parameter calibration error

Uncertainty is typically analyzed using **sensitivity analysis** or **Monte Carlo simulations** to quantify prediction reliability.

---
#### 🧭 The Modelling Process — Good Modelling Practice (GMP)

1. **Research question → Hypothesis**
2. **Conceptualization:** Identify key processes, spatial/temporal resolution, and required data.
3. **Model selection and development:** Choose model structure (conceptual, empirical, or physically based) according to data and objectives.
4. **Parameter estimation (calibration):** Define objective function, select optimization method (manual, local, global, or stochastic).
5. **Model evaluation (testing):** Validate using independent datasets.
6. **Uncertainty assessment:** Quantify the effect of parameter and input variability.
7. **Model application:** Use for forecasting, scenario analysis, or management.
---
#### Model types: Overview

#### 🟤 Black-box (Empirical) Models

Relate inputs and outputs statistically without describing internal processes.  
**Pros:** simple, fast, reproduces observed behavior.  
**Cons:** poor transferability, no process understanding.

---
#### 🟠 Grey-box (Conceptual) Models

Combine empirical and physical components.

**Example – Linear Storage Model:**  
Storage–outflow relationship:  
$q = \frac{1}{K} S$
Continuity equation:  
$p = q + \frac{\partial S}{\partial t}$

By substitution:  
$p = q + K\frac{\partial q}{\partial t}$

**Analytical solution:**  
For constant input $p(t)$, the outflow $q(t)$ follows an **exponential response**:  
$q(t) = q_0 e^{-t/K} + p(1 - e^{-t/K})$

where $K$ is the **storage constant**, representing the **time scale of catchment response** (larger $K$ → slower drainage).

![[Pasted image 20251103175619.png]]

**Pros:** efficient and interpretable, flexible for catchments.  
**Cons:** requires calibration; validity limited to data range.

---

#### White-box (Physically Based) Models

Derived from fundamental conservation laws for mass, energy, and momentum (e.g., Richards or Saint-Venant equations).

**Example:** PDE-based flow and transport models (e.g. Richards or Saint-Venant equations).

**Pros:** physically interpretable, transferable, spatially explicit.  
**Cons:** high data and computational demands, sensitive to sub-grid variability.

---

#### Stochastic Models

Incorporate randomness in inputs or parameters to estimate **probability distributions** of outcomes (e.g. *Monte Carlo* methods).

**Applications:**

- Reservoir design using stochastic rainfall series.
- Contaminant plume arrival time in random $K$-fields.

**Pros:** explicit uncertainty quantification.  
**Cons:** requires many simulations (high CPU time).

##### Monte Carlo Methods

Monte Carlo simulation is the most common stochastic technique. It runs the model many times with random input samples to produce a **distribution of outputs**.

1. Randomly sampling input variables (e.g. precipitation, hydraulic conductivity, or parameters).
2. Running the model repeatedly — often **thousands of times** — with these samples.
3. Analyzing the resulting distribution of outputs (e.g. runoff, water table depth).

This produces probabilistic estimates such as confidence intervals, exceedance probabilities, or risk levels.

---

#### Machine Learning Models

Modern data-driven models capable of capturing nonlinear relations between hydrological variables.  
They include **Random Forests (RF)**, **Multi-Layer Perceptrons (MLP)**, and **Long Short-Term Memory (LSTM)** networks.

- **RF:** ensemble of decision trees; robust and fast.
- **MLP:** feedforward neural network; captures nonlinear mappings.
- **LSTM:** recurrent model; retains temporal dependencies, ideal for streamflow or groundwater forecasting.

**Pros:** high predictive performance, scalable.  
**Cons:** require large datasets; limited interpretability.

![[Pasted image 20251103180326.png]]

---
#### Conceptual Models vs Physically based models

| Conceptual Models               | Physically Based Models                    |
| :------------------------------ | :----------------------------------------- |
| Rainfall–runoff                 | Groundwater–surface water interactions     |
| Catchment water balance         | Soil–plant–atmosphere systems              |
| Reservoir operations and design | Contaminant transport, saltwater intrusion |
| Estimation of design values     | Climate change and WRM studies             |
| Operational forecasting         | Mechanistic process simulation             |

---
### Model Calibration

Calibration adjusts model parameters to match observed data. It is part of steps 2–5 in GMP.
#### Parameter Types

- **Empirical:** statistical or fitting parameters with no physical meaning.
- **Physical:** measurable parameters (e.g. $K_s$, porosity), may be transferred across sites.
- **Hyperparameters:** govern the calibration process itself (e.g. learning rate, step size).

Parameters may be **lumped** (catchment-average) or **distributed** (spatially variable).
#### Classical parameter estimation in hydrosystem modelling
![[Pasted image 20251103180914.png]]

Model calibration is formulated as an **optimization problem**:  
$p_{opt} = \min f(p)$
where $f(p)$ is an **objective function** measuring model performance.

A common criterion is the **Nash–Sutcliffe Efficiency (NSE):**  
$NSE = 1 - \frac{\sum (Q_{obs} - Q_{sim})^2}{\sum (Q_{obs} - \bar{Q}_{obs})^2}$
Values close to 1 indicate a good fit.

![[Pasted image 20251103181021.png]]

#### Optimization Methods

- **Manual calibration** – iterative visual adjustment.
- **Automatic methods:**
	- _Gradient-based:_
	    - **Gauss–Newton** – fast near optimum.
	    - **Levenberg–Marquardt** – stable hybrid approach.
	    - **Steepest Descent** – moves along the negative gradient, robust but slow.
	- _Global search:_ Genetic Algorithms, Monte Carlo, Simulated Annealing.
There is a **trade-off** between **robustness** (finding the global optimum) and **efficiency** (computational cost).
---
#### Model Complexity

- **Too simple:** oversimplifies processes → poor realism.
- **Too complex:** overfits → poor predictive performance.

Hence, models should always be “**as simple as possible but as complex as necessary**.”

# 6. Precipitation


Precipitation is the **primary input** to the hydrological cycle and determines the **water balance** of any basin.  
It occurs in various forms:
- Rain
- Fog
- Snow, sleet
- Hailstones
- Freezing rain
Every precipitation event is characterized by:
- **Volume or depth** (mm)
- **Duration** (minutes to days)
- **Intensity** (mm/hr)
- **Return period** (statistical recurrence)

---
### 6.1 Formation of precipitation

The formation of precipitation depends on three major processes: **cooling**, **condensation**, and **droplet growth**.

#### 1) Cooling of moist air to dew-point temperature
Air must be cooled until it reaches saturation. Cooling can occur through:
- **Radiation:** heat loss to the atmosphere, especially during nighttime
- **Conduction:** transfer of heat to a colder surface
- **Mixing:** warm moist air mixing with cold dry air
- **Adiabatic cooling:** temperature drop caused by vertical uplift and expansion of air
Of all these mechanisms, **adiabatic cooling is the most significant**, because strong cooling rates occur mainly when air rises in the atmosphere.

#### 2) Condensation
Once air reaches dew point, water vapor condenses into small droplets.
- Droplet diameter: $\phi = 0.001–0.2\ \text{mm}$
- Fall velocity: $v < 0.7\ \text{m/s}$
- Requires **condensation nuclei** (dust, salt, smoke, pollen)
    - Typical diameter: $> 10^{-4}\ \text{mm}$
Condensation nuclei are essential because water vapor alone cannot easily form droplets; the nuclei reduce the energy barrier required for condensation.

#### 3) Droplet growth
For precipitation to occur, droplets must grow large enough to fall.
- Droplet diameter: $\phi = 0.4–4\ \text{mm}$
- Fall velocity: $v > 1\ \text{m/s}$
- Growth mechanisms include:
    - Collision and coalescence
    - Ice-crystal processes
    - Continued condensation

![[Pasted image 20251111112019.png]]

---

### Meteorological uplift situations

Uplift mechanisms force air to rise, cool, and ultimately condense.

#### Convective lifting

- Warm moist air rises due to surface heating    
- Air expands and cools adiabatically
- Forms cumulonimbus clouds
- Generates short-duration, high-intensity rainfall
- Spatially limited
- Produces showers, intense rainfall, and hail
#### Orographic lifting

- Occurs when moist air encounters a mountain barrier
- Air rises up the slope → cools → condenses → precipitation
- Influenced by:
    - Wind speed
    - Acclivity (steepness)
    - Elevation
- Can produce large intensity and long-duration rainfall
- Leeward side becomes dry due to **rain shadow**
#### Frontal lifting

Precipitation associated with atmospheric fronts and cyclonic systems.
- **Warm front:**
    - Warm moist air glides over cold dense air
    - Produces uniform, widespread rainfall of moderate intensity
- **Cold front:**
    - Cold air pushes under warm moist air, forcing rapid uplift
    - Produces intense, short-lived precipitation events

#### Convergence

- Occurs when air flows together into a low-pressure region
- Air is forced upward
- Common in tropical storms and cyclones

![[Pasted image 20251111112719.png]]

---
### 6.2 Precipitation measurements

#### Precipitation regimes

The table classifies global precipitation regimes and their seasonal patterns.
Interpretation of abbreviations:
- **Wi** = Winter
- **Su** = Summer
- **max** = Maximum precipitation in that season
- **dry / wet** = Seasonal dryness or wetness

| --- | Climate                | Precipitation                   |
| --- | ---------------------- | ------------------------------- |
| A   | Equatorial             | All year, max 2 seasons         |
| B1  | Tropical (inner, 10º)  | Wi dry, Su wet, 2 summer max    |
| B2  | Tropical (outer, 23º)  | 1 summer max, longer dry season |
| C   | Monsoon                | high Su max, long dry season    |
| D   | Subtropical (23-30º)   | dry (desert) very little rain   |
| E   | Mediterranean (30-40º) | Wi rain, Su dry                 |
| F   | Mid-latitudes          | all seasons                     |
| G   | Polar                  | all seasons, small amounts      |
Clarification:  
"Summer max" means **summer has the highest rainfall of the year**.  
"Wi dry" means **winter is dry**, "Su wet" means **summer is wet**, etc.

---
#### Point measurements

##### Rainfall depth
Total accumulated precipitation during an event or time interval (mm).
##### Rainfall intensity
Rate of precipitation:
- $[\text{mm/min}]$
- $[\text{mm/hr}]$
Intensity is especially important for stormwater design and runoff modeling.
##### Rainfall duration
Total time over which precipitation occurs.
##### Rain yield factor
Units: $\text{mm·s}^{-1}\text{·ha}^{-1}$  
Used to estimate the volume of stormwater generated from rainfall over a catchment.  
Less common today but still appears in older hydrological references.

#### Rainfall depth, intensity, duration, rain yield factor

- **Rainfall depth [mm]**  
    Observed accumulated precipitation during a specific event or period (daily, monthly, annual).
- **Rainfall intensity**  
    Precipitation depth per unit time:
    - $[\text{mm}/\Delta t]$
    - $[\text{mm/min}]$, $[\text{mm/hr}]$        
- **Rainfall duration**  
    Total time interval over which rainfall is recorded.
- **Rain yield factor** $[\text{mm·s}^{-1}\text{·ha}^{-1}]$  
    Used in stormwater engineering to calculate runoff volumes; less common today but still referenced in older hydrological practice.

---

#### Rain gauge installation — Resolution

Real measurements are aggregated into fixed time intervals:
$$P(t) = \frac{1}{\Delta t}\sum P_{\Delta t}(t)$$    Example intervals: 1h, 3h, 6h, 12h…
![[Pasted image 20251110113800.png]]

---
#### Gauge types

##### Non-recording storage gauges
- Funnel + collecting vessel
- Provide only summation/averages over long periods
- Common in mountains and remote sites
- Incomplete for extreme intensities → cannot measure short bursts
---

##### Conventional recording gauges

###### Float recorder (Hellmann)

- Receiving area: 200 cm²    
- Measuring range: 0–10 mm
- Drum rotates daily or weekly
- Collecting vessel: ~70 mm
- Provides continuous recording of rainfall depth over time

![[Pasted image 20251110114145.png]]

###### Example: Float recorder graph

Questions usually involve:
1. Rainfall amount in a given period
2. Maximum intensity based on curve slope

![[Pasted image 20251110114215.png]]
Example: Franz Josef, NZ (extreme rainfall)

- Annual mean: 5500 mm
- Daily max: 400 mm
- Over 90 years of record

![[Pasted image 20251110114248.png]]

---

###### Tipping-bucket gauge
- Mechanical/electronic
- Each “tip” = fixed rainfall volume
- Good accuracy for ΔP > 0.1 mm
- Low maintenance

![[Pasted image 20251110114304.png]]

---
###### Weighing gauge (pluviometer)
- Measures weight of collected rain
- Works for liquid and solid precipitation (snow/hail)
- Can include heating ring
- No moving parts → high reliability
- Higher cost

![[Pasted image 20251110114327.png]]

---

##### Unconventional recording gauges

###### Capacitance rain sensor
- Detects precipitation through changes in electrical capacitance or vibration/sound
- Distinguishes “precipitation vs. no precipitation”
###### Disdrometers
Measure **drop size distribution**.
- **Acoustic disdrometer:** sound of drops hitting a surface (hydrophones)
- **Displacement disdrometer:** measures drop impact displacement
    - Indirect measurement → subject to inaccuracies during heavy rain
###### Optical disdrometer
- Uses infrared/laser beams
- Measures drop size, velocity, type of precipitation
- Highly accurate (0.001 mm resolution, ~5%)
- Autonomous and low-maintenance
- High cost

---
### DWD – German Weather Service

~1897 stations measuring daily precipitation → ~1 station per 184 km².

---
### Point measurements (summary)

- Represent **small samples** of a continuous rainfall field
- Used to **validate indirect measurements** like radar and satellites (TRMM)
- No global standards for gauges
- DWD standard:
    - Hellmann gauge
    - Height = 1 m
    - Area = 200 cm²
    - Daily measurement at 7am
- WMO provides guidelines but not uniformly adopted

---
#### Measurement errors (~5–15% typical)

##### Systematic errors

- Evaporation
- Splashing / wetting
- Wind-induced errors
- Snow undercatch

##### Random errors

- Reading mistakes
- Data transcription errors

Wind-induced undercatch is often the **largest source of error**, especially for snow.

---

### 6.3 Analysis and Correction of Precipitation Data

![[Pasted image 20251110115702.png]]

#### Consistency

Tasks:
- Remove non-plausible values (outliers)
- Fill missing data gaps

![[Pasted image 20251110115748.png]]

##### Outliers come from:

- Human data entry errors
- Instrument malfunction
- Dummy placeholder values
- Natural extreme events

Outliers are not always “bad”; hydrology must keep genuine extremes.

---
#### Detection Methods

- **Extreme value analysis**, e.g.
    $$z_i = \frac{x_i - \mu}{\sigma}$$
- **Probabilistic models**
- **Clustering techniques**
- **Distance or density-based methods**

---
#### Methods for data supplementation

##### Single station
- Replace gaps with historical averages
    - Only reasonable for _monthly or annual_ values
##### Multiple stations
- **Station average** − simple mean of nearby stations
- **Regression method** − weights based on correlation
- **Normal-ratio method** − weights based on long-term annual averages
- **Inverse Distance Weighting (IDW)** − weights based on distance
- **Kriging / external drift kriging** − uses spatial variance and auxiliary variables

---

#### Homogeneity tests

##### Absolute tests (single time series)
- Pettitt break-point test
- Mann–Whitney U-test
- Abbe test
##### Relative tests (multiple series)
- Craddock test (cumulative ratios)
- Double mass curve
- Autocorrelation method

---

#### Double Mass Curve

Used to detect **inhomogeneities** across long-term rainfall records.

Guidelines:
- Significant change requires ≥ 5-year trend
- Must test statistical significance (t-test or Mann–Kendall)
- If possible, discard data before the breakpoint
- Otherwise, multiply past values by a correction factor $K$

---

#### Systematic measurement errors

Example: Hellmann gauge

- Wetting error: +5–10%
- Evaporation: +1–3%
- Wind undercatch:
    - Rain: +2–15%
    - Snow: +15–55%
- Total errors can exceed 50%

---

#### The Richter (1995) Correction Method

Richter proposed empirical correction factors to compensate for **wind-induced undercatch**.

General form:
$$P_c = P_m \cdot K(W, T)$$
Where:

- $P_c$: corrected precipitation
- $P_m$: measured precipitation
- $K$: correction factor ( >1 )
- $W$: wind speed near gauge
- $T$: air temperature (rain vs. snow)

Corrections are larger for snow (can be ×2.0+) and smaller for heavy rainfall.

---
### 6.4 Spatial Interpolation Methods

Rainfall varies in space and time. Point data must be converted into **catchment-wide averages**.

Spatial variability depends on:

- Precipitation type
- Topography
- Wind direction
- Time interval length

Accuracy depends on:

- Station density
- Measurement error
- Selected interpolation method

---

#### Methods Overview

- **Spatial measurements**: radar, TRMM, IMERG
- **Interpolation from point measurements**: deterministic and statistical

Choice depends on:

- Accuracy requirements
- Time scale
- Station distribution
- Physical factors

---

#### Deterministic methods

##### Arithmetic Mean

Example:

|Station|Rainfall (mm)|
|---|---|
|P2|20|
|P3|30|
|P4|40|
|P5|50|

Average = 35 mm

---

##### Thiessen Polygons

$$P = \frac{1}{A}\sum a_i p_i$$
- $a_i$: polygon area
- $p_i$: rainfall at station $i$

> CHECK EXERCISE 2 OPAL

---
##### Isohyetal Method

![[Pasted image 20251111115153.png]]

---

##### Inverse Distance Weighting (IDW)

General form:

$$P_x = \frac{\sum p_i d_{xi}^{-1}}{\sum d_{xi}^{-1}}$$

---

#### Statistical methods

##### Kriging

- Ordinary kriging: accounts for spatial autocorrelation
- Produces best linear unbiased estimate
- External drift kriging uses auxiliary variables (elevation, etc.)

#### Classification of spatial estimation methods from point observations

![[Pasted image 20251111115404.png]]

---
 How to perform rainfall–runoff modelling?

Key components needed:
- precipitation input,
- catchment characteristics,
- hydrological model selection,
- transformation of rainfall into runoff.
### 6.5 Extreme Rainfall

Skillset required for designing a reservoir for flood protection:

- **Catchment delineation**
- **Precipitation data collection**, station identification, spatial interpolation
- **Storm rainfall estimation**, especially through DDF methods
- **Direct runoff modelling** (e.g., SCS–Curve Number)
- **Flood frequency estimation** (design floods)
- **Catchment water balance** estimation

These elements combine to produce a complete representation of flood behaviour for design.

---

#### Flood Design: BHQ1 / BHQ2

![[Pasted image 20251117112103.png]]

Using **DIN 19700**, two design floods are required:
- **BHQ1:** overflow and spillway design
- **BHQ2:** global dam stability (extreme safety verification)

Both depend on:
- dam category
- reservoir volume

Critical questions:
- What is an extreme event?
- What is the maximum possible precipitation?
- How can a reservoir be protected from extreme floods?

Two approaches exist for design flood estimation:
1. from discharge statistics,
2. from rainfall statistics + rainfall–runoff model.

![[Pasted image 20251117112449.png]]

#### Probable Maximum Precipitation (PMP)

“**The greatest depth of precipitation for a given duration that is physically possible at a specific location.**”

Two major approaches:

##### Estimation based on _storm area_ (indirect approach)

A group of storms is collected across a meteorologically homogeneous region. The procedure:

1. Identify largest storms and their statistical factor $K_m$
2. **Enveloping**: determine upper envelope for various durations
3. **Transposition**: transpose storm magnitude to target site
4. Compute PMP:$$PMP|P_t = \bar{P_n} + K_m S_m$$

Where:
- $\bar{P_n}$ = mean annual maxima
- $S_m$ = standard deviation
- $K_m$ = statistical factor (# of std deviations added)
---
##### Generalized Estimation

- Identify a high-efficiency observed storm
- Apply moisture maximization
- Transpose storm to area of interest
- Envelope all maximized storms
- Derive PMP

---
##### Estimation based on watershed area (direct approach)
Used for reservoir design.

Steps:
1. Define storm model
2. Maximize moisture
3. Obtain PMP
4. Estimate PMF (Probable Maximum Flood)
Reference: **WMO Manual for PMP (2009)**.
---
##### Local Estimation of Storm Rainfall (Rain Gauge)

Used for most engineering applications because PMP is too conservative.

Goal: **estimate rainfall depths for different durations and selected return periods.**

Two tools:

- **DDF** — Depth-Duration-Frequency
- **IDF** — Intensity-Duration-Frequency

---
#### Depth–Duration–Frequency (DDF) Curves

![[Pasted image 20251117114254.png]]


A **formal statistical method** to estimate extreme rainfall.

##### Steps to Derive DDF Curves

1. **Obtain rainfall time series**  
    Ideally ≥30 years. Shorter series introduce uncertainty.
2. **Aggregate rainfall for multiple durations**  
    Examples: 10 min, 1 h, 6 h, 24 h.
3. **Select annual maxima**  
    For each duration.
    Alternatively: **peaks over threshold** (POT).
4. **Create empirical PDF**  
    ![[Pasted image 20251117115845.png]]
    Values are normalized so the integral = 1.
5. **Compute empirical CDF**    
    Sum of PDF bars from left to right.
6. Compute probability of exceedance:
    $P_e = 1 - F$
7. Fit a theoretical distribution (for extrapolation):  
    Common choices: **Gumbel, Lognormal, Weibull**.


e.g. 80% of the values are not exceeded in the image
![[Pasted image 20251117120308.png]]

---
##### Fit theoretical probability distribution

Empirical distribution: no extrapolation possible.  
The empirical CDF only describes what happened in the available record. It **cannot** predict values outside the observed range (e.g., 100-year events if only 20 years exist).  
Therefore, it is necessary to **fit a theoretical probability distribution** to the observed annual maxima.

The idea is:

1. Compute the empirical CDF from the data (ranking → $F$).
2. Select a suitable probability distribution (Gumbel, lognormal, Weibull, …).
3. Fit its parameters to the data.
4. Use the fitted model to estimate quantiles for selected return periods.

---

###### Select a distribution

Common choices for extreme rainfall:

- **Gumbel (EV1)** → very common in hydrology
- Lognormal
- Weibull
- Generalized Extreme Value (GEV)

For Gumbel (Extreme Value Type I), the CDF is:
$$F(x) = \exp\Bigl[-\exp\Bigl(-\frac{x-u}{\alpha}\Bigr)\Bigr]$$
where:
- $u$ is a location parameter
- $\alpha$ is a scale parameter

---

###### Derive parameters (method of moments)

To fit the Gumbel distribution to the rainfall sample, the **method of moments** can be used.

Moments of the Gumbel distribution:

- Mean:
$$\mu_x = \int_{-\infty}^{\infty} x \, f(x) \, dx = u + \gamma_e \alpha
$$
- Variance:
$$\sigma_x^2 = \int_{-\infty}^{\infty} (x - \mu_x)^2 \, f(x) \, dx = \frac{\pi^2}{6}\alpha^2
$$
Where:

- $\gamma_e = 0.5772$ (Euler–Mascheroni constant)

Using **empirical moments** from the sample:

- Sample mean: $\mu_p$
- Sample variance: $\sigma_p^2$

Then:

$$\alpha = \sqrt{6}\, \sigma_p \,/\, \pi \quad u = \mu_p - \gamma_e \alpha$$

Esto permite ajustar la distribución Gumbel a cualquier duración de lluvia (1 h, 3 h, 6 h, …).

---

###### Test of fit

Before using the fitted distribution for design purposes, perform a goodness-of-fit test:

- **Kolmogorov–Smirnov test**
- **Chi-square ($\chi^2$) test**

These tests indicate whether the theoretical distribution adequately represents the sample.

---

###### Example (duration 1 hour)

Given:

- Empirical mean: $\mu_p = 14.1$    
- Empirical standard deviation: $\sigma_p = 3.48$

From the method of moments:

- $\alpha = 4.6$
- $u = 11.4$

Once parameters are known:

$$F(P) = \exp\left[-\exp\left(-\frac{P-u}{\alpha}\right)\right]$$

For a **return period $R$**, the non-exceedance probability is:

$$F = 1 - \frac{1}{R}​$$

To compute rainfall depth $P$ corresponding to a given $R$, invert the CDF:
$$P = u + \alpha \left[ -\ln\left( -\ln\left( \frac{R-1}{R} \right) \right) \right]
$$
Este es el procedimiento usado para generar tablas de lluvia extrema.

![[Pasted image 20251117120905.png]]

---

###### Deriving $P$ for selected return periods

- Use $F = 1 - 1/R$ in the Gumbel quantile formula.
- Compute $P$ for $R = 2, 10, 50, 100$ años.

![[Pasted image 20251117121136.png]]

![[Pasted image 20251117121143.png]]  
![[Pasted image 20251117121157.png]]

These $P$ values populate the Depth–Duration–Frequency (DDF) tables used for design rainfall.

Fuente: Dingman: _Physical Hydrology_ (2nd Ed. 2014), Sec. 4.4.3, p. 185ff.

---

##### IDF (Intensity–Duration–Frequency Analysis)

The IDF approach expresses rainfall in terms of **intensity**, not depth.

Relationship:
$$
i(D, R) = \frac{P(D, R)}{D}​$$
Where:

- $i$ = rainfall intensity (mm/h)
- $P$ = rainfall depth for duration $D$ (mm)
- $R$ = return period

Once the DDF table is obtained:

1. For each duration $D$, compute intensity $i = P/D$.
2. Plot intensity vs. duration on log–log or semi-log axes.
3. Fit a power-law curve:

$i(D, R) = a \, D^k$ Or equivalently: $P(D, R) = a \, D^k$

As shown in the DDF example figure, plotting in log scale results in nearly straight lines, making curve fitting easier.

This curve is used in:

- Urban drainage design
- SCS-CN and unit hydrograph rainfall inputs
- Stormwater models (SWMM, MIKE URBAN, etc.)
- Flood protection design

# 7. Runoff

# 8. Evapotranspiration

# 9. Regional Aspects of Hydrology


