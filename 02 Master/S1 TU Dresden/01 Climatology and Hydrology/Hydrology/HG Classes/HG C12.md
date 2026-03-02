---
Class: "[[Hydrology]]"
Date: 2026-01-26
Last Modified: Monday 26th January 2026 09:18
---
# 📅 Monday 26th January 2026

# 📒Class Summary

Today’s session focused on the mechanics of **Runoff**, specifically its components (base flow, interflow, and overland flow) and the factors that influence its formation. We explored the **SCS Curve Number (SCS-CN)** method for runoff formation, the **Unit Hydrograph** and **Linear Storage** models for runoff concentration, and the conceptual differences between various **Rainfall-Runoff (RR) modeling** types.

---
# 📝 Notes

## 7. Runoff

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


---
# 💡 Key Takeaways

- **Runoff Logic:** Modeling is a three-stage sequence: Formation (how much?), Concentration (when?), and Routing (downstream movement).
- **CN Sensitivity:** Runoff estimates are highly sensitive to CN selection; errors of 15-20% in CN can double or halve the estimated runoff.
- **Modeling Purpose:** Conceptual models are used for flood forecasting, while physically based models are required for process identification and groundwater studies.
- **Hydrograph Components:** Streamflow consists of base flow (groundwater), interflow (lateral subsurface), and overland flow (surface).

---
# 💭 Questions

- **What is the fundamental difference between base flow, interflow, and overland flow in terms of timing and physical path?**
    
    - **Overland flow:** Water traveling over the surface; near-instantaneous response. **Interflow:** Lateral flow through the unsaturated zone/macropores; intermediate response time. **Base flow:** Groundwater contribution; long-term, slow response that maintains streamflow during dry periods.
        
- **Name 5 catchment or atmospheric factors that significantly affect runoff formation.**
    
    - **Catchment:** Topography/Slope, Land Use/Vegetation, Soil Type, Geology, and Antecedent Moisture. **Atmospheric:** Rainfall Intensity and Rainfall Duration.
        
- **In the SCS-CN method, how does the Antecedent Moisture Condition (AMC) change the Curve Number?**
    
    - AMC shifts the CN to account for soil wetness before an event. Dry conditions (AMC I) lower the CN (less runoff), while wet conditions (AMC III) raise the CN (more runoff) relative to the average state (AMC II).
        
- **What are the three main conceptual assumptions of a Unit Hydrograph?**
    
    - **Stationarity:** The catchment response is time-invariant. **Proportionality:** Runoff scales linearly with effective rainfall. **Superposition:** The total hydrograph is the sum of responses from individual rainfall increments.
        
- **Why is the SCS-CN method considered highly sensitive regarding its results?**
    
    - Because the relationship is non-linear; a small percentage change (15-20%) in the CN value can result in a doubling or halving of the total estimated runoff volume.
        
- **What is the difference between Runoff Formation and Runoff Concentration?**
    
    - **Formation** determines the volume of "effective precipitation" (how much water becomes runoff). **Concentration** determines the temporal distribution (the shape of the hydrograph) at the outlet.
        
- **Describe the components of the Saint-Venant equations for physically based routing.**
    
    - 1. **Continuity Equation:** Represents the conservation of mass. 2. **Momentum Equation:** Represents the conservation of energy (balancing gravity, friction, and pressure forces).
            
- **In what scenarios are physically based (White Box) models preferred over conceptual (Grey Box) ones?**
    
    - When simulating internal catchment processes like groundwater-surface water interactions, contaminant transport, or the impacts of specific local land-use changes where measured physical parameters are available.

---
# 🐢 Definitions

- **Effective Precipitation ($P_e$):** The portion of precipitation that results directly in runoff (excluding storage and losses).
    
- **Initial Abstraction ($I_a$):** Water intercepted by vegetation or stored in surface depressions before runoff begins.
    
- **Hydrograph Separation:** The analytical or graphical process of dividing a total runoff hydrograph into baseflow and direct runoff.

- **Stationarity:** The assumption that a catchment's response properties remain constant over time.
    
- **Flow Routing:** Determining the timing and magnitude of a water wave as it moves down a stream.
    
- **Unit Hydrograph:** The hydrograph of direct runoff resulting from one unit of effective rainfall occurring uniformly over a watershed.

---
# 📅 Homework

- **Review Calculation:** Recalculate the storage capacity ($S$) for the example catchment using AMC Class III (Wet condition).
    
- **Modeling Research:** Identify a specific "White Box" model and explain one scenario where its complexity is justified over a "Grey Box" model.

