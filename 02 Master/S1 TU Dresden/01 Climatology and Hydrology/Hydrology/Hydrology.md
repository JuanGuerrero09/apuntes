---
Class: "[[01 Climatology and Hydrology]]"
Date: 2025-10-13
Last Modified: Monday 13th October 2025 11:03
Professor: Dr Thomas Wöhling
email: thomas.woehling@tu-dresden.de
tags:
  - hydrology
---

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

| Scale          | Typical Size      | Focus / Examples                                                              |
| -------------- | ----------------- | ----------------------------------------------------------------------------- |
| **Microscale** | 1 m² – 1 ha       | Field or lysimeter experiments; local infiltration; preferential flow.        |
| **Mesoscale**  | 1 ha – 10² km²    | Catchments and aquifers; spatial heterogeneity and hydrological connectivity. |
| **Macroscale** | 10² km² – 10⁶ km² | River basins, large watersheds, continental hydrology; links with GCMs.       |

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

- $NSE = 1$: Perfect fit.
- $NSE = 0$: The model is only as good as using the mean of the observed data.
- $NSE < 0$: The model is worse than just using the mean.

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
### 6.2 Precipitation Measurements

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
- **Why we don't put gauges higher:** Wind speed increases with height, which drastically increases the **systematic undercatch error**.
- WMO provides guidelines but not uniformly adopted.

---
### Measurement errors (~5–15% typical)

#### Systematic errors

- Evaporation
- Splashing / wetting
- Wind-induced errors
- Snow undercatch

#### Random errors

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

A crucial technical point: If the slope of a DMC changes, it indicates a **non-climatic** change (e.g., the gauge was moved, or a tall building was built nearby), not a change in climate

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

Note that for **short-duration convective storms** (high spatial variability), simple methods like the Arithmetic Mean are very poor; you need Radar or IDW/Kriging

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

- **Definition:** The simplest approach for calculating catchment precipitation, where the total rainfall depth is determined by taking the simple average of all measurements from stations located within or in the immediate vicinity of the catchment.
- **Application:** It is most effective in areas with a dense, uniform network of gauges and flat topography where rainfall is relatively homogeneous.
- **Limitation:** It fails to account for the spatial distribution of gauges or topographic influences, making it poor for capturing high-variability events like convective storms.

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
- **Definition:** A geometric method that assigns an "area of influence" to each rain gauge by creating polygons through the perpendicular bisectors of lines connecting adjacent stations.
- **Mechanism:** Every point within a specific polygon is assigned the rainfall value of the nearest station.
- **Equation:** The catchment average is calculated using an area-weighted sum:$$P = \frac{1}{A}\sum a_i p_i$$
    
    - $a_i$: The area of the polygon associated with station $i$.
    - $p_i$: The rainfall depth recorded at station $i$.
    - $A$: The total area of the catchment.
- **Advantage:** It accounts for the non-uniform distribution of gauges.

> CHECK EXERCISE 2 OPAL

---
##### Isohyetal Method

- **Definition:** This method involves drawing lines of equal rainfall depth, known as **isohyets**, across the catchment area based on point measurements.
    
- **Mechanism:** The average rainfall is determined by calculating the area between successive isohyets and weighting it by the average rainfall of those two lines.
    
- **Precision:** It is considered one of the most accurate deterministic methods because it allows the hydrologist to manually incorporate topographic and orographic effects (such as mountain ranges) into the lines.

![[Pasted image 20251111115153.png]]

---

##### Inverse Distance Weighting (IDW)

- **Definition:** A mathematical interpolation technique that estimates the rainfall at any unknown point $x$ by taking a weighted average of all nearby known stations.
    
- **Mechanism:** The influence of a station on the target point decreases as the distance between them increases. This is governed by the reciprocal of the distance ($d_{xi}^{-1}$).
    
- **Equation:**
    
    $$P_x = \frac{\sum p_i d_{xi}^{-1}}{\sum d_{xi}^{-1}}$$
    
    - $P_x$: The estimated rainfall at point $x$.
        
    - $d_{xi}$: The distance between the known station $i$ and the point $x$.
        
- **Key Feature:** IDW allows for a more continuous representation of the rainfall field compared to the "step-change" approach of Thiessen Polygons.
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

- **Definition:** These curves represent the relationship between **rainfall depth** (measured in mm), its **duration** (the time interval of the storm), and its **return period** (frequency of occurrence).
- **Usage:** They are primarily used to determine the total volume of water expected from a storm of a specific length (e.g., a 24-hour storm) that occurs once every 10, 50, or 100 years.
- **Key Property:** Rainfall depth increases with both duration and return period.

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
- Variance: $\sigma_p^2 = 34.8$
- Empirical standard deviation: $\sigma_p = 5.9$

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
![[Pasted image 20260208163924.png]]
These $P$ values populate the Depth–Duration–Frequency (DDF) tables used for design rainfall.

Fuente: Dingman: _Physical Hydrology_ (2nd Ed. 2014), Sec. 4.4.3, p. 185ff.

---

##### IDF (Intensity–Duration–Frequency Analysis)

- **Definition:** These curves describe the relationship between **rainfall intensity** (measured in mm/h or mm/min), **duration**, and **return period**.
- **Usage:** They are critical for urban stormwater engineering and small catchment modeling, where the peak flow (maximum intensity) is more important than the total volume.
- **Key Property:** Rainfall intensity decreases as the duration of the storm increases.

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


### 6.6 Snow and Snowmelt

Snow significantly influences the hydrological water cycle through two primary mechanisms:

- **Water Storage:** Acts as a seasonal reservoir, influencing the seasonality of runoff.
- **Energy Balance Influence:** High albedo of snow (0.8–0.9) compared to forests (0.05–0.18) significantly affects energy exchange.

**Relevance of Snowmelt:**

- It is a major contributor to river flow.
- Changes in the snowpack determine water availability and hydroelectric power generation.
- Snow in Arctic areas heavily influences regional energy exchange.

#### Snow Characteristics

- **Snow Depth ($h_s$) [cm]:** A point measurement that is typically spatially heterogeneous.
- **Water Equivalent ($h_m$) [cm or mm]:** The depth of water resulting from melting a snow column.
- **Specific Water Content [mm cm⁻¹]:** Defined as the water depth per 1 cm of snow.
- **Snow Density ($\rho_s$) [kg m⁻³, g cm⁻³]:** Mass per unit volume; typically increases with depth and age.
    - Freshly fallen snow: ~10 – 150 kg m⁻³.
    - Settled snow: ~35 – 600 kg m⁻³.
    - Firn: 500 – 850 kg m⁻³.
    - Glacier ice: 700 – 900 kg m⁻³.

#### Snow Measurement Methods

Measurements are categorized as "invasive vs. non-invasive" and "portable vs. stationary".

- **Snow Depth ($h_s$):** Measured using rods (invasive), rulers (stationary), or sonar (non-invasive/continuous). Sonar data along transects combined with density data provides input for hydrological models.

- **Snow Tube:** Extracts gravimetric samples to measure $h_m$ and depth-averaged density.

- **Snowpit Observations:** Used to assess density changes and mechanical properties (e.g., avalanche prediction).

- **$h_m$ Sensors:** Pressure/load cell sensors like **Snow Pillows** (high maintenance) or hanging lysimeters.

- **Snowmelt Lysimeters:** Funnel meltwater to a collection pan measured by tipping buckets.

- **Snow Tensiometer:** Measures liquid water and air pressure in pore spaces to observe diurnal meltwater fluxes.

- **Additional Technology:** Dielectric sensors (volumetric water), Radar (layering), and Satellite products (large-area cover).

---
#### Mass and Energy Balance of a Snowpack

##### Mass Balance

The change in water equivalent ($\Delta h_m$) is calculated as:

$$\Delta h_m = P - M \pm LE_a$$

- $P$: Precipitation (snow or liquid).
- $M$: Meltwater.
- $LE_a$: Sublimation or condensation.

##### Energy Budget

The net energy exchange ($\Delta E$) is defined by:

$$\Delta E = RS + RL + H + LE + HR + G$$

- **RS:** Short wave radiation (function of albedo $a$).
- **RL:** Long wave radiation exchange.
- **H:** Sensible heat exchange.
- **LE:** Latent heat exchange.
- **HR:** Heat input by rain.
- **G:** Conductive sensible heat exchange with the subsurface.

##### Phases of Snowpack Dynamics

1. **Accumulation Phase:** Snowpack growth; requires spatial measurements due to wind relocation.
2. **Settlement/Metamorphosis:** Increasing density and layer generation driven by gravitation, vapor pressure, and melt-freeze cycles.
3. **Melting Phase:** Occurs when net energy balance becomes positive. Consists of three sub-phases:
    - **a) Warming:** Increases the **internal temperature** of the snow to $0^\circ\text{C}$ (melting point). No melt yet.
    - **b) Ripening:** Snow is at $0^\circ\text{C}$ but dry. Energy goes into **melting ice to fill pore spaces** with liquid water until saturation ($\theta_{ret}$).
    - **c) Output:** Snow is at $0^\circ\text{C}$ and saturated. All further energy creates **free runoff**.

---

#### Snowmelt

The estimation of snowmelt runoff is a multi-step process:

1. **Preparation of meteorological input data**: Includes parameters such as Precipitation ($P$), Temperature ($T$), Net Radiation ($R_n$), and wind velocity ($v$).
2. **Calculation of snowmelt rates and runoff**: Generating point estimates for specific locations.
3. **Estimation of catchment snowmelt runoff**: Aggregating point data to a larger spatial scale.

**Main Challenge**: Transferring point estimates to spatial averages for an entire catchment.

- Snow cover is spatially and temporally extremely **heterogeneous and anisotropic**.
- Snow distribution differs significantly from liquid precipitation.
- Models require high-resolution data to be effective.
- **Regionalization**: Involves using empirical relationships to scale point model results to larger regions.

---

#### Snowmelt modelling approaches

##### 1. Energy budget approach

- Mechanistic
- (relatively) accurate
- balances the available energy with the energy needed for the melting process
- high data requirements, high measurement frequency

**Phases:**

**Example data**

- $h_s$ = **snow depth** = $72 \text{ cm}$
- $h_m$ = **equivalent water depth** = $\rho_s / \rho_w \cdot h_s = 29 \text{ cm}$ (assuming $\rho_s = 0.4 \text{ g cm}^{-3}$)
- $c_i$ = **heat capacity of ice** = $2102 \text{ J kg}^{-1} \text{ °C}^{-1}$
- $\rho_w$ = **density of water** = $1,000 \text{ kg m}^{-3}$
- $T_s$ = **average snow temperature** = $-9 \text{ °C}$
- $T_m$ = **melting temperature** = $0 \text{ °C}$
- $\lambda_f$ = **latent heat of fusion** = $0.334 \text{ MJ kg}^{-1}$
- $\theta_{ret}$ = **max volumetric water content retained by snow**

a) **Warming Phase – Energy Demand ($Q_1$):

Energy required for **warming** of the snow cover

$$
Q_1 = -c_i \cdot \rho_w \cdot h_m (T_s - T_m)
$$

So
$$Q_1 = -2102 \text{ J kg}^{-1} \text{ °C}^{-1} \cdot 1000 \text{ kg m}^{-3} \cdot 0.29 \text{ m} \cdot (-9 \text{ °C} - 0 \text{ °C})$$
$$Q_1 = 5.5 \text{ MJ m}^{-2}$$

**b) Ripening Phase – Energy Demand ($Q_2$):**

Is the estimate energy required to saturate the snow pack and complete the **ripening** phase

Using empirical estimation (Goto et al. 2012): $\theta_{ret} = 3 \cdot 10^{-10} \cdot \rho_s^{3.23}$.

$$
Q_2 = \theta_{ret}\cdot h_s \cdot \rho_w \cdot \lambda_f
$$

For $\rho_s = 400 \text{ kg m}^{-3} \rightarrow \theta_{ret} = 0.077 \text{ m}^3 \text{ m}^{-3}$.

$$Q_2 = 0.077 \cdot 0.72 \text{ m} \cdot 1000 \text{ kg m}^{-3} \cdot 0.334 \text{ MJ kg}^{-1}$$
$$Q_2 = 18.5 \text{ MJ m}^{-2}$$

**c) Output Phase – Energy Demand ($Q_3$):**

Energy required for output water from the snow cover:

$$
Q_3 = (h_m - \theta_{ret} \cdot h_s) \cdot \rho_w \cdot \lambda_f
$$

$$Q_3 = (0.29 \text{ m} - 0.077 \cdot 0.72 \text{ m}) \cdot 1000 \text{ kg m}^{-3} \cdot 0.334 \text{ MJ kg}^{-1}$$

$$Q_3 = 78 \text{ MJ m}^{-2}$$

**Daily Meltwater Output Approximation ($\Delta h_m$):**

$$\Delta h_m \approx \frac{\Delta Q}{\rho_w \cdot \lambda_f}$$

Given an energy input of $10.8 \text{ MJ m}^{-2} \text{ d}^{-1}$:

$$\Delta h_m = \frac{10.8 \text{ MJ m}^{-2} \text{ d}^{-1}}{1000 \text{ kg m}^{-3} \cdot 0.334 \text{ MJ kg}^{-1}} = 0.032 \text{ m d}^{-1}$$

**Time to Output ($t_{out}$):**

$$t_{out} = 78 \text{ MJ m}^{-2} / 10.8 \text{ MJ m}^{-2} \text{ d}^{-1} = 7.22 \text{ d}$$

---

##### 2. Temperature Index Approach

This empirical relationship is based on the heat budget but considers **only temperature**. It has lower accuracy but is widely used in models due to its ease of use.

**Governing Equation**:

$$\Delta w = B(T_a - T_m) \qquad \text{for } T_a \geq T_m$$
$$\Delta w = 0 \qquad \text{for } T_a < T_m$$

**Parameters**:

- $\Delta w$: Snowmelt per time step.
- $B$: **Melt factor**. Standard value $\approx 0.36 \text{ cm d}^{-1} \text{ °C}^{-1}$.
- $T_m$: Melting temperature.

**Melt Factor ($B$):** This is a calibration parameter that accounts for site-specific conditions. In densely forested areas, the value of $B$ is significantly lower than in open fields because the canopy shades the snow from short-wave radiation and reduces wind speeds (limiting sensible heat exchange).

**Melt Factor ($B$) detailed calculation**:

$$B = 0.4 (1-\alpha) \exp(-4F) f_{sl}$$

- $\alpha$: **Albedo**.
- $F$: **Forest cover**.
- $f_{sl}$: **Slope factor**.
# 7. Runoff

**Runoff** is defined as the surface and subsurface flow originating from a catchment, typically measured at a specific river cross-section. It is the most reliably determined component of the water balance equation:

$$P = ETR + R$$

_(where $P$ is precipitation, $ETR$ is actual evapotranspiration, and $R$ is runoff)_.

**Key Concepts:**

- **Discharge ($Q$):** The volume of flow measured in a stream at the catchment outlet.
- **Runoff Hydrograph:** A time-series representation of runoff.
- **Hydrograph Analysis:** Used to quantify fast and slow flow components, droughts, flow duration curves, and cumulative mass diagrams.

---

### 7.1 Runoff Measurements

#### Importance of Accurate Data

- Quantification of water resource availability for sustainable management and Climate Change (CC) impact assessment.
- Adequate system characterization.
- Integration into decision support systems via hydrological modeling.

#### Site Selection Criteria

To establish a stable relationship between river stage ($h$) and flow ($Q$), a site must have:

- A consistent point of reference.
- A straight river section with a constant slope.
- No obstructions, weeds, or backwater effects.

#### Measurement Types

- **Discrete Data:** Single values used for specific investigations like differential stream-loss gauging.
- **Continuous Data:** Generates a full hydrograph for flood forecasting or reservoir operations.

---

#### Methodology

##### 1. Measuring Stage ($h$)

The **stage** is the water level measured above a fixed reference point, known as the **gauge zero**.

- **Staff Gauge:** A manual, non-recording graduated plate fixed in the stream or on a structure.
- **Mechanical Float Gauge:** Provides continuous recording ($hydrograph$) via a float-driven transmission.
- **Pneumatic Gauge / Pressure Sensor:** Measures hydraulic pressure based on:$$p = \rho \cdot g \cdot h$$
    - Continuous recording; less susceptible to frost than floats.
    - Reliable in rivers with low to medium sediment loads.
- **Other Sensors:** Bubble gauges (gas-purge systems) and non-contact water-level sensors (radar/ultrasonic).

##### 2. Measuring Stream Flow and Velocity ($v$)

Discharge is typically derived from flow velocity measured at several depths and locations.

- **Area-Velocity Method:**
    The cross-section is divided into segments where:
$$A_i = w_i \cdot d_i$$
    _(where $w$ is width and $d$ is depth)_.
- **Current Meters:** Rotational sensors (mechanical or electromagnetic) that count rotations over time to determine velocity.

**Alternative Methods:**

- **Weirs and Flumes:** Structures where stage measurement is directly converted to discharge.
    - _Bernoulli-based formulas:_
        - **Rectangular Weir:** $Q = \frac{2}{3} \cdot C_d \cdot b \cdot \sqrt{2g} \cdot h^{3/2}$
        - **V-notch (Triangular) Weir:** $Q = \frac{8}{15} \cdot C_d \cdot \tan(\frac{\theta}{2}) \cdot \sqrt{2g} \cdot h^{5/2}$

- **Tracer (Dilution) Methods:** Analyzing the breakthrough curve of a salt or fluorescent tracer.$$Q = \frac{V_1 \cdot C_1}{\int (C_2 - C_b) dt}$$
- **ADCP (Acoustic Doppler Current Profiler):** Emits acoustic signals scattered by particulate matter. The frequency shift of reflected signals determines flow velocity.

---

##### 3. The Stage-Discharge Relationship

The **flow rating curve** is used to determine $Q$ for a given $h$ based on the geometry and hydraulics of the cross-section.

- **Theoretical Assumption:** Assumes **unsteady uniform flow** (variable in time but constant parameters in space).
- **Reality:** River flow is often **unsteady and non-uniform**, leading to a **hysteresis loop** in the rating curve where the same stage may correspond to different discharges depending on whether the water level is rising or falling.

**The Power Function:** Most rating curves follow a power-law relationship: $Q = a(h - h_0)^b$.

- $h_0$ is the stage of "zero flow."
- $b$ usually ranges between 1.5 and 2.5 depending on the cross-section shape (e.g., $b=1.5$ for rectangular, $b=2.5$ for triangular).


### 7.2 Hydrograph analysis

Hydrograph analysis is essentially a **time series analysis** used to derive useful statistics for catchment management.

- **Statistics derived:** Mean discharge ($MQ$), low/peak flows, mass curves, flood volumes, and flood duration curves.
- **Mass Curve:** The time integral of the hydrograph:$$S_Q = \int_{t0}^t Q(t) dt = \Delta t \cdot \sum Q$$
    - The **slope** of the mass curve represents $\Delta t \cdot \sum MQ$.
    - The vertical distance between the **Inflow Mass Curve** and the **Outflow Mass Curve** at any point $t$ represents the required **storage volume** ($V$) in a reservoir. If the slope of the outflow curve is constant, it represents a "constant yield" or draft rate from the reservoir.
- **Reservoir Operation Applications:**
    - Inflection points indicate (local) maximum or minimum reservoir storage/release.
    - The difference between inflow and outflow mass curves defines the **storage or release** for an interval, which is significant for reservoir design.

#### Flood Volume ($F$)

Flood volume is calculated by integrating the flood hydrograph from a critical flow or water level to the peak discharge ($Q_s$):

$$F = \int_{RQ}^{Q_s} Q(t) \cdot dt$$

- **Relevance:** Crucial for flood protection and reservoir design (e.g., limiting a 200-year event to a 100-year peak flow).

#### Flow duration curve

**Definition:**

- A cumulative frequency curve showing how often river flow exceeds a given threshold level.
- Shows the flow level that is exceeded at a given frequency.
- Derived from the integral of the frequency diagram.

**Relevance:**

- **Design criteria:** Flood re-occurrence probability, navigability of waterways.
- **Economy:** Power generation, water usage.
- **Ecology:** Minimum/maximum flow, inundation areas.

**Estimation Method:**

1. Sort by size or bin (daily) discharge for a time period (year) $\rightarrow$ frequency diagram.
2. Calculate cumulative frequency = duration curve.

![[Pasted image 20260126105035.png]]

![[Pasted image 20260126105049.png]]

**Main Assumptions:**

- Continuous data record (bias, variance).
- Observed fluctuations are randomly distributed with a stable mean.
- Annual variation and periodic processes are caused by climate alone.

**F Values:**
![[Pasted image 20260126105258.png]]
- Duration curve, non-exceedance: $F$.
- Duration curve, exceedance: $1-F$.
- Median: $F = (1-F) = N/2$ (where $p=0.5$).

**Trend Analysis:**

![[Pasted image 20260126105315.png]]

- Analysis of trends and extremes (dry/wet years).
- Low/peak flow frequency and droughts.

**Comparison of Flow Regimes:**

![[Pasted image 20260126105348.png]]

---
### 7.3 Floods and droughts

**Definitions:**

- **Flood:** River discharge rising to a multiple of the average discharge over a **short** period.
- **Drought:** River discharge falling below a critical limit over **extended** periods.

#### 7.3.1 Floods

**Reasons for Floods:**

- **Meteorological extremes:**
    - Extreme precipitation (e.g., Vb weather situation).
    - Snowmelt.
    - Ice/log jams.
    - Storm surge / springtide.
- **Catastrophic events:**
    - Failure of dams.
    - Earth-/seaquakes.

**Design of flood protection structures** The design of structures is based on several **criteria** depending on the objective:

- **Peak water level:** Essential for maps of inundation areas, navigation, and construction in flood-prone areas.
- **Flood peak discharge:** Used for canal capacity, river training, and relief facilities.
- **High water duration:** Critical for dike safety and flood damage assessment.
- **Discharge sum:** Necessary for the design of retention basins and storage reservoirs.


**Design flood:** A hypothetical flood hydrograph or peak discharge used for the design of a hydraulic structure or river control.

- **Example:** A flood with a 100-year return period.
- **Challenges:** Estimation of extreme events is challenging due to the limited length of the flow record and non-stationarity.
- **Question:** How to handle ungauged cross-sections or ungauged catchments?

---

**Skillset: Designing a Reservoir for Flood Protection**

To effectively design a hydraulic structure for flood mitigation, a hydrologist must integrate several analytical components:

- **Catchment Delineation**: Defining the spatial boundaries of the contributing area.
- **Precipitation ($P$) Analysis**: Collecting station data and performing spatial interpolation.
- **Path A (Rainfall-Runoff Modeling)**:
    - **Storm Rainfall Estimation**: Utilizing Depth-Duration-Frequency (**DDF**) curves.
    - **Direct Runoff Estimation**: Applying methods like the **SCS-CN** (Soil Conservation Service Curve Number).
- **Path B (Statistical & Water Balance)**:
    - **Flood Frequency Estimation**: Determining statistical **design floods**.
    - **Catchment Water Balance**: Accounting for all inflows, outflows, and storage changes.

---

**Estimation of Design Floods ($HQ$) by Data Availability**

The methodology for determining the peak discharge of a design flood depends on the length and quality of the available flow records:

**1. For Short Data Records (Gauged Cross-Sections)**

- **Correlation Analysis**:
    - Evaluate if the target gauge shares similar discharge characteristics with neighboring gauges.
    - Use a **reference gauge** with a significantly longer data record to extrapolate a longer time series for the target site.

**2. For Ungauged Cross-Sections**

- **Reference $HQ$-Method**: This approach assumes the ungauged site behaves similarly to a gauged "donor" catchment based on:
    - Similar physical characteristics (morphology, soil types, land-use).
    - Similar flood probability distributions (comparable flow duration curves).
    - Establishing a simple relation between the reference flood and catchment parameters, such as drainage area.

**3. For Long Data Records**

- **Statistical Analysis of the Hydrograph**:
    - Extract the **Annual Maximum Flow ($HQ$)** or identify peaks above a specific threshold from the observed or simulated time series.
    - Conduct a **consistency test** on the data.
    - Calculate the **empirical non-exceedance probability ($F$)**.
    - Fit a **theoretical probability distribution** to the data.
    - Select the target **return period ($R$)**, where:
$$R = \frac{1}{1-F}$$
    - Determine the corresponding design flood magnitude, **$HQ(R)$**.

---

#### Exercise 4: Flood Frequency Analysis (Protocol)

**Objective**: Determine the Design flood discharge—the maximum flow passed without damaging or threatening engineering structures—for return periods $R = 10, 50, \text{ and } 100$ years.

**Case Study**: Elbe River at Aken

- **Catchment Size**: $70,093 \text{ km}^2$.
- **Historical Reference**: $NQ = 82.5, MQ = 435, HHQ = 4,490 \text{ m}^3\text{/s}$.
- **Input**: Annual peak flows ($HQ$) from $1936\text{--}1965$.

**Methodological Steps**:

1. Calculate the sample **mean ($\bar{x}$)** and **standard deviation ($s_x$)** of the $HQ$ record.
2. Determine the **empirical non-exceedance probability** using the Gringorten (1963) formula:$$P_{U, Gringorten} = \frac{i - 0.44}{n + 0.12}$$
3. **Fit the Gumbel (EV1) distribution** to the sample:
$$P_{U, Gumbel} = e^{-e^{-\frac{x - u}{\alpha}}} \qquad \text{where } \alpha = \frac{s_x \sqrt{6}}{\pi} \text{ and } u = \bar{x} - 0.5772 \cdot \alpha$$
    
5. **Test Goodness of Fit** via the Kolmogorov-Smirnov test:
$$d_{1,i} = |P_{U, Gumbel}(x_i) - P_{U, Gringorten}(x_i)|$$$$d_{2,i} = |P_{U, Gumbel}(x_i) - P_{U, Gringorten}(x_{i-1})|$$
    The fit is valid if $c > \max([d_1 \ d_2])$.
    
6. **Calculate $HQ(R)$** for specific return periods using: $R = 1 / (1 - P_U)$.
    

**Common Theoretical Distributions**:

- **Gumbel (EV1)**: $F(x) = \exp[-\exp(-\frac{x-\xi}{\alpha})]$.
- **Generalized Extreme Value (GEV)**: $F(x) = \exp\{-(1 - \frac{\kappa(x-\xi)}{\alpha})^{1/k}\}$.
- **Log Pearson Type 3 (LP3)**: $F(x) = \frac{G(\alpha, \frac{x-\xi}{\beta})}{\Gamma(\alpha)}$.
- **Lognormal**: $F(x) = \frac{1}{\sqrt{2\pi}\sigma} \int_{0}^{x} \frac{1}{t} e^{-\frac{(\ln(t)-\mu)^2}{2\sigma^2}} dt$.

---

#### 7.3.2 Droughts

**Definition**: A drought occurs when river discharge falls below a critical limit—defined by ecological needs or abstraction targets—for extended periods.

**Types of Drought** (Sequential Progression):

1. **Meteorological Drought**: A prolonged deficit in precipitation, often exacerbated by high temperatures, high solar radiation, and low humidity.
2. **Agricultural Drought**: Resulting unusually low soil moisture and a lack of groundwater recharge.
3. **Hydrological Drought**: A decline in stream discharge, lake/reservoir levels, and groundwater tables below critical thresholds.

It is vital to understand that these droughts are **causally linked**. A _Meteorological_ drought (atmosphere) causes an _Agricultural_ drought (soil), which eventually leads to a _Hydrological_ drought (groundwater/streamflow). This time lag between the lack of rain and the drying of a river is known as **Hydrological Propagation**.

**Drought Assessment Criteria**:

- **Low Flow ($Q_{crit}$) and Duration ($D$)**: E.g., **$7Q10$** (the 7-day low flow with a 10-year return period).
- **Low Water Level**: Specific elevation thresholds.
- **Deficit Volume**: Total water volume missing to meet reservoir targets.
- **Exceedance Frequency**: E.g., **$Q_{95}$** (the flow level exceeded $95\%$ of the time).
- **Severity ($S$)**: Cumulative deviation below the critical level.
- **Intensity ($I$)**: The magnitude of the drought, calculated as $I = S / D$.

**Estimation Methods**:

- **Long Records**: Statistical analysis of annual $7$-day minimum flows or cumulative days below $Q_{crit}$.
- **Unobserved Catchments**: Regional analysis using correlation or **Reference $LQ$-methods**.

### 7.4 Runoff components

Streamflow is a combination of three distinct components:

- **Base flow:** Long-term groundwater contribution to the stream.
- **Interflow:** Lateral flow of water in the **vadose zone** (unsaturated) or through **macropores** (root holes, cracks) above the main water table. It travels faster than groundwater but slower than surface flow.. 
- **Overland flow:** Saturated flow that travels over the soil surface to the channel.

_Note:_ It is important to normalize flow when comparing different catchments.

![[Pasted image 20260126111258.png]]

![[Pasted image 20260126111419.png]]

**Factors Affecting Runoff:**

- **Catchment:** Shape, size, topography, soils, and geology.
- **Land Surface:** Urban areas, vegetation, and antecedent wetness.
- **Atmospheric:** Rainfall patterns and climate.

**Hydrograph separation***
- **Graphical:** Semi-log recession lines.
- **Analytical:** Unit hydrograph method and filtering (fixed/sliding intervals).
- **Tracers:** Chemical, isotopes, and EMMA.
- **Rating curves:** Establishing relations between groundwater levels and stream flow.

**Hydrological System Analysis Approach:**

1. **Runoff Formation:** Determines the proportion of areal precipitation that becomes runoff.
![[Pasted image 20260126112313.png]]
2) **Runoff Concentration:** Determines the temporal distribution of that water at the outlet gauge.
![[Pasted image 20260126112421.png]]
3) **Flow Routing:** Focuses on wave attenuation and propagation (retention) in the river reach.
![[Pasted image 20260126112410.png]]

---
### 7.5 Runoff Formation

Runoff formation asks: _Which proportion of precipitation actually runs off?_

- **Equation:** $\text{Precipitation} = \text{Effective Precipitation} (P_e) + \text{Storage} + \text{Losses}$.
- **Effective Precipitation ($P_e$):** Also known as direct runoff ($Q_D$); it consists of overland flow and interflow.

#### SCS Curve Number Method (SCS-CN)

Developed by the USDA Soil Conservation Service, this method is used to estimate $P_e$ for agricultural watersheds and small to medium-sized ungauged catchments worldwide. It assumes an empirical relationship between storage capacity and runoff.

**Fundamental Assumption:** $P_e = Q_D$.

**Method Steps:**

1. Estimate the **Curve Number (CN)** based on soil, land use, etc.
2. Adjust the CN for **Antecedent Moisture Condition (AMC)**.
3. Compute the **Storage Capacity ($S$)**.
4. Determine $P_e$ (direct runoff, $Q_D$).

##### The SCS-CN Equations

- **Continuity Equation:**

$$
P - I_a = F + QD
$$
- **Proportionality Assumption**:

$$
\frac{F}{S} = \frac{QD}{P-I_a}
$$
From those two fundamental equations:

- **Direct Runoff (Effective Precipitation):**

$$
\frac{P-I-QD}{S} = \frac{QD}{P-I_a}
$$
$$
QD = P_e = \frac{(P-I_a)^2}{P-I_a+S}
$$
Where:
- $Q_D$: Direct runoff / Effective precipitation.
- $P$: Total precipitation.
- $S$: Maximum storage capacity.
- $I_a$: Initial abstraction ($\lambda \cdot S$, with $0 < \lambda < 0.3$).
- $F$: Infiltration.

**Standard Simplification:**

Assuming $I_a = 0.2 \cdot S$ (standard initial abstraction):

$$Q_D = \frac{(P-0.2S)^2}{P+0.8S}$$

_Key Insight:_ **More storage capacity ($S$) results in less runoff ($Q_D$)**.

**Storage and Curve Number Relation:**

The storage capacity ($S$) is related to the Curve Number (CN), where $1 < \text{CN} \le 100$:

- **In inches:** $S = \frac{1000}{\text{CN}} - 10$
- **In mm:** $S = 254 \cdot \left(\frac{100}{\text{CN}} - 1\right)$

The CN is determined by soil type, vegetation, and hydrologic condition. 

![[Pasted image 20260126120615.png]]

Curve numbers for hydrologic soil groups:
![[Pasted image 20260126120637.png]]

**Antecedent Moisture Condition (AMC):** CN depends on the soil moisture state before the event. There are three AMC classes with standard conversion tables:

![[Pasted image 20260126120720.png]]

- **Dry (Class I):** $CN_I = \frac{4.2 \cdot CN_{II}}{10 - 0.058 \cdot CN_{II}}$
$$
CN_I=\frac{4.2 \cdot CN_{II}}{10-0.058\cdot CN_{II}}
$$

- **Average (Class II):** Standard value from tables.

- **Wet (Class III):** $CN_{III} = \frac{23 \cdot CN_{II}}{10 + 0.13 \cdot CN_{II}}$
$$
CN_{III}=\frac{23 \cdot CN_{II}}{10-0.13\cdot CN_{II}}
$$
**Application Notes:**

- **Advantages:** Easy to use, accessible data, adequate for ungauged catchments.
- **Disadvantages:** In Central Europe, CN-Values are often underestimated by 10-30%.
- **Sensitivity:** A major weakness is the sensitivity to CN selection. Changes of 15-20% in the CN can double or halve total estimated runoff (Boughton, 1989).

**Calculation Example:** Weighted CN for a mixed-use catchment:

1) Calculate the CN-value for the given catchment, a given  landuse, and soil type (silt loam, group B). The precipitation  during the 5 preceding days was 38 mm (wet season). 
2) How does the CN-value change, if the precipitation of the  5 preceding days is assumed to be 76 mm? 
3) Calculate the effective precipitation for  the given rainfall event and for average  initial soil moisture (AMC class II).  


$$
CN = \frac{1}{A_{total}}\sum A_i CN_i = \sum a_i CN_i
$$

|**Land Use**|**Area Fraction (ai​)**|**CN**|**Weighted CN%**|
|---|---|---|---|
|Pasture (fair)|0.4|69|27.6|
|Fallow bare soil|0.3|86|25.8|
|Meadow|0.2|58|11.6|
|Crops, forage crop|0.05|76|3.8|
|Woods (fair)|0.05|60|3.0|
|**Total**|**1.0**|**CN**|**71.8**|

**Resulting CN:** 72. **Storage S (mm):** $S = 254 \cdot \left(\frac{100}{72} - 1\right) = 98.78 \text{ mm}$.

---
### 7.6 Runoff Concentration

Runoff concentration describes the streamflow response as water moves from contributing areas along surface and subsurface paths to the outlet gauge.

#### **Unit Hydrograph**

The characteristic response of a catchment to a **unit volume** (e.g., 1 mm or 1 cm) of effective precipitation.

- **Instantaneous Unit Hydrograph (IUH):** Unit volume applied instantaneously to allow a continuous mathematical concept for the transfer function.

**Fundamental Assumptions:**

1. **Stationarity:** The transfer function $h(t)$ is time-invariant (the catchment response doesn't change over time).
2. **Proportionality:** The response scales linearly with effective precipitation ($P_e$). Shape and duration are independent of the volume.
3. **Superposition:** The total response at time $t$ is the summation of individual outputs at $t$ from previous increments.

**Convolution Integral:**

$$q(t) = \int_0^t p(\tau) \cdot h(t-\tau) d\tau$$

**Discretized Form:**

For numerical application, the convolution is expressed as:

$$q_n = \sum_{m=1}^{n} p_m \cdot u_{n-m+1}$$

- $n$: time step.
- $m$: time step.
- $p_m$: effective precipitation at time $m$.
- $u$: unit response ordinate.

**Linear Storage Model**

A conceptual model where the catchment is treated as a reservoir.

- **Storage Equation:** $S = k \cdot Q$.
- **Continuity Equation:** $I - Q = \frac{dS}{dt}$.
- **Linear Differential Equation:** $I - Q = k \frac{dQ}{dt}$.
- **Analytical Solution (Impulse Response):** $h(t) = \frac{1}{k} e^{-t/k}$.

---
### 7.7 Flow Routing

Determines wave propagation and retention as a water wave moves through a river reach.

**Model Concepts:**

- **Black-Box:** Based on regression and statistical methods.

- **Conceptual:** Includes linear storage, translation functions, and the **Muskingum method**.

- **Physically Based:** Solves the **Shallow Water Equations (Saint-Venant)**, typically in 1D, integrating mass (continuity) and momentum (energy) balance.

**Saint-Venant Equations:**

1. **Continuity (Mass Balance):**$$\frac{\partial A}{\partial t} + \frac{\partial Q}{\partial x} = q_l$$
2. **Momentum (Energy Balance):**$$\frac{\partial Q}{\partial t} + \frac{\partial}{\partial x} \left( \frac{Q^2}{A} \right) + gA \left( \frac{\partial h}{\partial x} - S_0 + S_f \right) = 0$$

---

### 7.8 Rainfall-Runoff Modelling

RR models transform rainfall into runoff by simulating runoff formation, concentration, and flow routing.

**Model Types:**

- **Empirical (Black box):** Purely statistical input-output relationships.
- **Conceptual (Grey box):** Uses simplified physical concepts like reservoirs and translation.
- **Physically Based (White box):** Based on fundamental laws (Richards Eq, Darcy's Law, St-Venant).
- **Stochastic:** Includes random variables and probability.

**Applications:**

- **Conceptual Models:** Flood forecasting, water balance calculations, land use/climate change impact studies.
- **Physically Based Models:** Groundwater-surface water interactions, contaminant transport, process identification.

# 8. Evapotranspiration


Evapotranspiration is the combined process of water loss through plant transpiration and surface evaporation.
### Types of evapotranspiration

![[Pasted image 20260202111959.png]]

**Distribution Percentages:**
- **Transpiration:** 70–75%.
- **Evaporation (rivers, lakes, bare soil):** 10–15%.
- **Evaporation from Interception (vegetative surfaces):** 15%.
- **Sublimation (snow and ice):** 2–3%.
---
### 8.1 Free-water evaporation, E
Free-water evaporation is primarily driven by water and energy balances.

- **Measurement:** Pan evaporation ($E_{pan}$) is a common standard measurement. Is a direct measurement of the atmospheric demand for water, quantifying the amount of moisture evaporated from an open, standardized water pan (typically a Class A pan) over a specific period, usually 24 hours.

- **Penman Equation:** The most common equation for open-water evaporation.$$E = \frac{\Delta R_n + \rho_a C_p (e_s - e_a) / r_a}{\lambda_v (\Delta + \gamma)}$$
### 8.2 Transpiration, T

Transpiration is the diffusion of water vapor from the stomata to the atmosphere.

- **Drivers:** It is driven by available energy and the **vapour pressure deficit**.
- **Pressure Gradient:** Pressure in the soil is near zero, while in the atmosphere, it is significantly lower than zero.

Transpiration is driven by a massive **Water Potential Gradient**. While soil water potential is near 0 MPa, dry air at 50% humidity can have a potential of **-100 MPa**. Plants are essentially "wicking" water along this gradient.

**Air Water Potential ($\Psi_{air}$):**


$$
\Psi_{air} = \frac{R_g\cdot T_b\cdot ln(RH/100\%)}{V_m}
$$
- $R_g$: Gas constant ($8.31 \text{ J mol}^{-1}\text{K}^{-1}$).
- $V_m$: Partial molar volume of water ($18 \times 10^{-6} \text{ m}^3\text{/mol}$).
- $T_b$: Dry bulb temperature.
- $RH$: Relative humidity.

**Rate of Transpiration vs. Parameters:**

- **vs. Temperature:** Increases linearly then stays constant; higher temperatures do not always imply more transpiration.
- **vs. Wind Velocity:** Higher velocity increases transpiration in an almost linear correlation.
- **vs. Humidity:** Stays constant for small humidity values, then decreases linearly as outside $H_2O$ concentration increases, finally leveling off.
---
### 8.3 Measurement devices

Various tools are used to quantify different aspects of ET:

- **Porometer:** Measures stomatal conductance.
- **Potometer:** Measures the rate of water uptake by a leafy shoot.
- **Climate Chamber:** Controlled environment for plant studies.
- **Weighing Container:** Directly measures water loss by mass.
- **Sap Flow Meter:** Measures the movement of water through the plant stem.

---
### 8.4 Potential evaporation PET

**Definition:** ET from an area uniformly covered with vegetation with unlimited access to soil water and without advection or heat-storage effects.

- **Climate Evaporative Demand:**
    - **Empirical:** Based on temperature and radiation.
    - **Micrometeorological:** Dependent on solar radiation, humidity, wind velocity, and temperature.

- **Reference Evapotranspiration ($ET_0$):** Transpiration by a short green crop (well-watered Bermuda grass, $12 \text{ cm}$) completely shading the ground.    

**Calculations:**

1. **Temperature Based:**

$$
PET = 29.8 \cdot D \cdot \frac{e_s(T_a)}{T_a+273.2}
$$
2. **Radiation Based(Priestley-Taylor):**
$$
PET = \frac{\alpha_{PT}\Delta \, R_n}{\rho_w\lambda_v(\Delta + \gamma)}
$$
- Humid regions: $\alpha_{PT} = 1.26$.

2. **Penman-Monteith Equation:** _The improvement over Penman is the addition of surface resistance ($r_s$) to account for plant physiology_.

$$
 PET = \frac{\Delta (R_n-G) + \rho_a C_p (e_s - e_a) / r_a}{\lambda_v \Delta + \gamma(1+r_s/r_a)}
$$

- $G$: Net ground heat flux.
- $r_a$: **Aerodynamic resistance** ($f(u)$). :Describes how difficult it is for water vapor to move from the leaf surface into the bulk air. It decreases as **wind speed** increases.
- $r_s$: **(Bulk) surface resistance** ($f(\text{stomata, } CO_2, \text{ light})$). Describes the physiological control by the plant (stomata). It increases when the plant is **stressed** or CO₂ levels are high.

for a well-watered Bermuda grass (12 cm)

**Grass Reference ($ET_0$) and Pan Correlation:**

$$ET_0 = \frac{0.408 \Delta (R_n - G) + \gamma \frac{900}{T + 273} u_2 (e_s - e_a)}{\Delta + \gamma(1 + 0.34 u_2)}$$
$$ET_0 = \alpha E_{pan} \text{ (where } \alpha = 0.5 \text{ to } 0.85\text{)}$$

**Crop Evapotranspiration ($ET_c$):**

$$ET_c = K_c \cdot ET_0 \quad \text{or with stress: } ET_c = K_c K_s ET_0$$

- **$K_c$ Examples:** Pineapple (0.3), Citrus (0.7), Peaches (0.9), Cotton (1.2).

---
### 8.5 Actual Evapotranspiration, ETR

Calculated based on available water rather than potential demand.

**Land Surface Water Balance:**

$$ETR = P - R$$

- Used for long-term averages.    
- Errors in $P$ (precipitation) data must be corrected.

**Estimation Methods:**

- **Lysimeters:** Directly measure water balance in a soil volume.$$ETR = P - D - \Delta S$$
    _(where $D$ is drainage water and $\Delta S$ is storage change)_
- **Eddy-Covariance Measurements:** Turbulent flux measurements using high-frequency wind and humidity data.
$$ETR = \frac{\rho_a}{\rho_w} \cdot \overline{u_a' \cdot q'}$$
  
_(where $u_a'$ is the vertical wind component and $q'$ is the vertical humidity component)_

# 9. Regional Aspects of Hydrology


