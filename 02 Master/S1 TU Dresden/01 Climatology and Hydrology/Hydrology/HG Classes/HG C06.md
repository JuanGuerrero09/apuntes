---
Class: "[[Hydrology]]"
Date: 2025-11-10
Last Modified: Monday 10th November 2025 09:14
---
# Monday 10th November 2025

# 📒Class Summary

This lecture covers precipitation measurement techniques, types of rain gauges, sources of measurement error, methods for detecting and correcting inconsistent precipitation data, and techniques for spatial interpolation of rainfall. The class also discusses deterministic and statistical approaches for converting point measurements into spatially averaged precipitation, along with homogeneity tests and error correction methods.

---
# 📝 Notes

## 6. Precipitation

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
why we don't put gauges higher, the answer is that **wind speed increases with height**, which drastically increases the **systematic undercatch error**

- WMO provides guidelines but not uniformly adopted

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
# 💡 Key Takeaways

- Rain gauges vary widely in accuracy and purpose.
- All precipitation measurements contain systematic errors; wind is the major contributor.
- Consistency checks and corrections are crucial for long-term hydrological data.
- Gap filling methods include station averages, regression, IDW, and kriging.
- Spatial interpolation converts point rainfall into basin-wide averages.
- The Richter method is essential to correct wind-induced undercatch.

---

# 💭 Questions



---
# 🐢 Definitions

- **Theissen polygons**: geometric partitions assigning each area to the nearest station.
- **double mass curve**: cumulative comparison of one station with a reference group to detect inconsistencies.
- **kriging**: geostatistical interpolation using spatial autocorrelation.
- **undercatch**: precipitation not captured due to wind or aerodynamic effects.
- **variogram**: function describing spatial dependence.
- **outlier**: observation significantly deviating from expected behavior.
- **normal-ratio method**: gap-filling method weighted by annual averages.
- **pluviometer**: weighing-type precipitation gauge.
- **consistency analysis**: detection and correction of inconsistencies in precipitation records.


---
# 📅 Homework

- Apply Pettitt or Craddock test to a rainfall series.
- Compute Thiessen polygon precipitation for a catchment.
- Compare IDW and kriging interpolation for a rainfall field.

