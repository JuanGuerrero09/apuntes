---
Class: "[[Climatology]]"
Date: 2026-01-15
Last Modified: Thursday 15th January 2026 19:53
---
# 📅 Friday 16th January 2026

# 📒Class Summary

Today's session focused on the **experimental determination of energy and mass exchange** between the Earth's surface and the atmosphere. The primary emphasis was on the **Eddy Covariance (EC)** method, its mathematical foundations (Navier-Stokes), instrumentation, and the extensive post-processing corrections required for accuracy. We also addressed the persistent "Energy Balance Gap" and explored alternative indirect measurement techniques like the Bowen-ratio and Profile methods.

---
# 📝 Notes

## 6. Experimental determination of energy and mass exchange

### Eddy Covariance

#### Definition
Eddy covariance is the primary direct method for measuring turbulent fluxes of heat, water vapor, and gases. It calculates the **statistical correlation** between the vertical wind speed fluctuations ($w'$) and the fluctuations of a scalar ($s'$)—such as temperature or gas concentration—originating from a large upwind area.

**Control Volume Approach – Conservation of a passive scalar $c$:**

$$
NEE_c = F_0(x, y) = \int_{z_g}^{z_m}\overline{S}\,dz =  \overline{(w'c')}_{z=z_m}
$$

- **Fundamental Assumptions:** For the mathematical model to be valid, the environment must exhibit:
	- Steady state (Removes storage change over time)
	- Homogeneous flow (Removes horizontal and vertical advection)
	- Isotropic Turbulence (Removes horizontal flux divergence)

- **Core Principle:** Turbulence consists of "eddies" (circular air movements). EC sensors measure the properties of every eddy passing through a fixed point in space.

- **Requirements:** To capture the smallest, fastest eddies, sensors must operate at high rates (**10–20 Hz**) with extreme precision.

| **Advantages**                                        | **Disadvantages**                                                                          |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Direct measurement; no empirical constants required.  | Highly sensitive to mathematical assumptions (most limiting homogeneity and steady-state). |
| Atmospheric flux measurements at **ecosystem scale**. | High financial cost (10k–50k €).                                                           |
| Non-invasive; does not disturb the ecosystem.         | Requires high expertise for set-up and data processing.                                    |

#### Instrumentation

- **Ultrasonic Anemometer ("Sonic"):** 
	- Measures the **3D wind vector** and **virtual temperature** by calculating the travel time of ultrasonic pulses.
	- Orthogonal vs non-ortogonal systems (for the measure direction)
- **Infrared Gas Analyzer (IRGA):** 
	- Measures **$H_2O$** and **$CO_2$** concentrations.
    - _Open-path:_ Sensors are exposed to the air.
    - _Closed-path:_ Air is pumped through a tube to an internal chamber.

**The Navier-Stokes Foundation:** The determination of turbulent fluxes is mathematically derived from the Navier-Stokes equations, which describe the motion of fluid substances.

The covariance between a scalar of interest ($x$) and vertical wind speed ($w$) is calculated using the following statistical formula:

$$\overline{x'w'} = \frac{1}{N - 1} \sum_{i} (x_i - \bar{x}) \cdot (w_i - \bar{w}) = \frac{1}{N - 1} \left[ \sum_{i} x_i \cdot w_i - \frac{1}{N} \left( \sum_{i} x_i \right) \left( \sum_{i} w_i \right) \right]$$
**Parameters:**
- **$x$**: Scalar of interest.
- **$w$**: Vertical component of 3d wind vector ($m \cdot s^{-1}$).
- **$N$**: Number of observations within averaging interval.

Obtaining:

- **Friction velocity:** $u_* = \sqrt{-\overline{u'w'}}$
- **Sensible heat flux:** $H = \rho \cdot c_p \cdot \overline{w'T'}$
- **Buoyancy flux:** $H_S = \rho \cdot c_p \cdot \overline{w'T_S'}$
- **Latent heat flux:** $E = \rho \cdot \lambda \cdot \overline{w'q'}$

> **Note:** Sonic temperature is very similar to virtual temperature.


#### Correction and quality assurance

Raw data must undergo corrections to account for real-world deviations from assumptions:

| **Limitation**                                  | **Correction/Measure**                                                                           |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Steady state conditions                         | Quality test, flagging/discarding data                                                           |
| No advection / horizontal & homogeneous surface | Suitable coordinate system (coordinate rotation),  quality test (Double Rotation or Planar Fit). |
| No density fluctuations                         | **WPL correction** (Webb-Pearman-Leuning).                                                       |
| Spectral resolution up to 20 Hz                 | **Spectral correction** (Moore-correction).                                                      |
| Averaging period 10-60 minutes                  | Quality test, ogive test if necessary                                                            |

# 📅 Friday 16th January 2026

# 📒 Class Summary

Today's session focused on the **experimental determination of energy and mass exchange** between the Earth's surface and the atmosphere. The primary emphasis was on the **Eddy Covariance (EC)** method, its mathematical foundations (Navier-Stokes), instrumentation, and the extensive post-processing corrections required for accuracy. We also addressed the persistent "Energy Balance Gap" and explored alternative indirect measurement techniques like the Bowen-ratio and Profile methods.

---

# 📝 Notes

## 6. Experimental determination of energy and mass exchange

### Eddy Covariance

#### Definition

Eddy covariance is the primary direct method for measuring turbulent fluxes of heat, water vapor, and gases. It calculates the **statistical correlation** between the vertical wind speed fluctuations ($w'$) and the fluctuations of a scalar ($c'$) originating from a large upwind area.

**Control Volume Approach – Conservation of a passive scalar $c$:**

$$NEE_c = F_0(x, y) = \int_{z_g}^{z_m}\overline{S}\,dz = \overline{(w'c')}_{z=z_m}$$

- **Fundamental Assumptions:** For the mathematical model to be valid, the environment must exhibit:
    
    - **Steady state:** Removes storage change over time.
        
    - **Homogeneous flow:** Removes horizontal and vertical advection.
        
    - **Isotropic Turbulence:** Removes horizontal flux divergence.
        
- **Core Principle:** Turbulence consists of "eddies" (circular air movements). EC sensors measure the properties of every eddy passing through a fixed point in space.
    
- **Requirements:** To capture the smallest, fastest eddies, sensors must operate at high rates (**10–20 Hz**) with extreme precision.
    

|**Advantages**|**Disadvantages**|
|---|---|
|Direct measurement; no empirical constants required.|Highly sensitive to mathematical assumptions (homogeneity and steady-state).|
|Atmospheric flux measurements at **ecosystem scale**.|High financial cost (10k–50k €).|
|Non-invasive; does not disturb the ecosystem.|Requires high expertise for set-up and data processing.|

#### Instrumentation

- **Ultrasonic Anemometer ("Sonic"):**
    
    - Measures the **3D wind vector** and **virtual temperature** via ultrasonic pulse travel time.
        
    - Systems can be **orthogonal** or **non-orthogonal** regarding measurement direction.
        
- **Infrared Gas Analyzer (IRGA):**
    
    - Measures **$H_2O$** and **$CO_2$** concentrations.
        
    - **Open-path:** Sensors exposed to air; sensitive to precipitation.
        
    - **Closed-path:** Air pumped through a tube to an internal chamber.
        

**The Navier-Stokes Foundation:**

The covariance between a scalar ($x$) and vertical wind speed ($w$) is calculated statistically:

$$\overline{x'w'} = \frac{1}{N - 1} \sum_{i} (x_i - \bar{x}) \cdot (w_i - \bar{w}) = \frac{1}{N - 1} \left[ \sum_{i} x_i \cdot w_i - \frac{1}{N} \left( \sum_{i} x_i \right) \left( \sum_{i} w_i \right) \right]$$

**Obtained Fluxes:**

- **Friction velocity:** $u_* = \sqrt{-\overline{u'w'}}$
    
- **Sensible heat flux:** $H = \rho \cdot c_p \cdot \overline{w'T'}$
    
- **Buoyancy flux:** $H_S = \rho \cdot c_p \cdot \overline{w'T_S'}$
    
- **Latent heat flux:** $E = \rho \cdot \lambda \cdot \overline{w'q'}$
    

> **Note:** Sonic temperature ($T_s$) is very similar to virtual temperature ($T_v$).

#### Correction and Quality Assurance

Raw data must undergo corrections to account for real-world deviations from assumptions:

|**Limitation**|**Correction/Measure**|
|---|---|
|**Steady state conditions**|Quality test, flagging/discarding data.|
|**Advection / Homogeneity**|Coordinate rotation (Double Rotation or Planar Fit).|
|**Density fluctuations**|**WPL correction** (Webb-Pearman-Leuning).|
|**Spectral resolution (20 Hz)**|**Spectral correction** (Moore-correction).|
|**Averaging period (10-60 min)**|Quality test, ogive test if necessary.|

##### Physical Corrections

Sonic temperature: 
- _Speed of sound:_ $c^2 = 403 T(1 + 0.32 e/p)$
- _Sonic Temperature:_ $T_s = T(1 + 0.32 e/p)$
- _Virtual Temperature:_ $T_v = T(1 + 0.38 e/p)$

Sonic anemometers do not measure the sensible heat flux ($w′T′$) but the buoyancy flux ($w′Tv′$) 

**Schotanus Correction:** Converts **buoyancy flux** ($\overline{w'T_v'}$) measured by sonics to **sensible heat flux** ($\overline{w'T'}$). (Schotanus et al. 1983) 

**Schotanus correction:**

$$\rho c_p(\overline{w'T'})_{c} = \rho c_p \frac{\left( \overline{w'T_S'} + \frac{2\bar{T}}{c^2} (\bar{u} \cdot \overline{u'w'} A + \bar{v} \cdot \overline{v'w'} B) \right)}{\left( 1 + \frac{0.51 \bar{T} c_p}{\lambda Bo} \right)}$$

Coefficients A and B need to be determined empirically for each type of anemometer

| **coefficient** | **CSAT3** | **USA-1** | **Solent**                    | **Solent-R2** |
| --------------- | --------- | --------- | ----------------------------- | ------------- |
| A               | $7/8$     | $3/4$     | $1 - 1/2 \cdot \cos^2\varphi$ | $1/2$         |
| B               | $7/8$     | $3/4$     | $1 - 1/2 \cdot \cos^2\varphi$ | $1$           |

**Coordinate rotation:**

- **Instrument coordinate:** Orthogonal system from the anemometer; absolute and independent of flow.

- **Natural wind coordinate ("double rotation"):**
    - Processes each 30-min interval individually.
    - x-axis is parallel to interval mean flow; z-axis is normal to the y-x plane.
    - Mean $v$ and $w$ are zero.

- **Planar fit coordinate:**
	- Uses mean flow field of a long-term record.
	- z-axis is perpendicular to the mean streamline plane; x-axis aligns with short-term (30 min) flow direction.
	- y-axis is perpendicular to z-axis and y-axis 

- **Natural wind vs. planar fit**
	• Planar fit overcomes some of the problems associated with the natural wind coordinate system (i.e., over-rotation, loss of information, degradation of data quality)
	• Planar fit requires a period of several weeks (without movement of anemometer!) to determine the mean streamline plane 
	• Sample dataset comparisons indicate that the natural wind system may lead to an  underestimation of the flux by ~9% 

**Spectral Correction (Moore-correction):**

- Corrects for signal loss due to instrument time constants, path lengths, and distance between instruments (Sonic – IRGA).
- High frequencies (small eddies) are recovered using comparison with model spectra.

**Correction of density fluctuations (Webb-Pearman-Leuning correction):** 

- **Problem:** Concentrations are measured per volume unit, which changes with density; critical for open-path IRGAs.
- **Application:** Used when turbulent fluctuations are small compared to mean concentration, or when absolute humidity ($e > 20\text{ hPa}$) and sensible heat fluxes are large.

Total flux of matter $c$ per unit mass ($F_c$) is defined by the following relationships:

$$F_c = \overline{\rho w q_c} = \overline{\rho w} \cdot \bar{q}_c + \overline{(\rho w)' q_c'}$$

With $\rho_c = \rho \cdot q_c$, it follows:

$$F_c = \overline{\rho w q_c} = \bar{w} \cdot \bar{\rho}_c + \overline{w' \rho_c'}$$

**Final Expansion:**

$$F_c = \overline{w' \rho_c'} + 1.61 \frac{\bar{\rho}_c}{\bar{\rho}_w} \overline{w' \rho_w'} + (1 + 1.61 \bar{q}) \frac{\bar{\rho}_c}{\bar{T}} \overline{w' T'}$$

**Variables:**

- **$F_c$**: Total flux of matter $c$ per unit mass
- **$q_c$**: Specific content of matter $c$
- **$\rho_c$**: Partial density of matter $c$

---
#### Quality assurance

##### Test for steady state conditions
This test determines the **stationarity** of the flow by comparing fluxes calculated over different time intervals.

- **Methodology**: It compares the 30-minute average of short-term (5-minute) fluxes against a single 30-minute long-term flux:
    - $(\overline{x'y'})_i = \frac{1}{N-1} \left[ \sum_j x_j \cdot y_j - \frac{1}{N} (\sum_j x_j \cdot \sum_j y_j) \right]$
	- $[\overline{x'y'}]_{5 \text{ min}} = \frac{1}{M} \sum_i (\overline{x'y'})_i$
	- $[\overline{x'y'}]_{30 \text{ min}} = \frac{1}{M \cdot N - 1} \left[ \sum_i (\sum_j x_j \cdot y_j)_i - \frac{1}{M \cdot N} \sum_i (\sum_j x_j \cdot \sum_j y_j)_i \right]$

- **Criteria**: If the difference between these two values is **less than 30%**, steady-state conditions can be safely assumed for the measurement period.

##### Test for sufficiently developed turbulence:

This test ensures that the atmospheric conditions are turbulent enough for the Eddy Covariance method to be physically valid.

- **Methodology**: Measured **integral turbulence characteristics** are compared with theoretically modeled ones for diabatic stratification. These characteristics include:
    - $\frac{\sigma_{u,v,w}}{u_*} = c_1 \cdot (\frac{z}{L})^{c_2}$
    - $\frac{\sigma_T}{T_*} = c_1 \cdot (\frac{z}{L})^{c_2}$

| **parameter**  | **z/L**               | **c1​** | **c2​** |
| -------------- | --------------------- | ------- | ------- |
| $\sigma_w/u_*$ | $0 > z/L > -0.032$    | 1.3     | 0       |
|                | $-0.032 > z/L$        | 2.0     | 1/8     |
| $\sigma_u/u_*$ | $0 > z/L > -0.032$    | 2.7     | 0       |
|                | $-0.032 > z/L$        | 4.15    | 1/8     |
| $\sigma_T/T_*$ | $0.02 < z/L < 1$      | 1.4     | -1/4    |
|                | $0.02 > z/L > -0.062$ | 0.5     | -1/2    |
|                | $-0.062 > z/L > -1$   | 1.0     | -1/4    |
|                | $-1 > z/L$            | 1.0     | -1/3    |

- **Criteria**: Differences of **less than 30%** between measured and modeled characteristics indicate good data quality. The specific coefficients ($c_1, c_2$) vary depending on the stability parameter ($z/L$).

##### Footprint analysis: 

Important when different  land-covers are nearby 
- Test how much of the flux is originating from the target land-use 
- Set threshold to discard intervals with, e.g. less than 80% originating from target land-use 
##### QA Criterion and Valuation

| **criterion **                     | **valuation **                                                                                                    |
| ---------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Area of application                | Basic research and expensive continuous measurement programs                                                      |
| Financial expense                  | 10 – 50 k€ per system                                                                                             |
| Personal expense                   | Continuous scientific and technical support                                                                       |
| Education                          | Good micrometeorological and measurement technique knowledge                                                      |
| Error                              | Depending on micrometeorological conditions 5-10 %                                                                |
| Sampling interval                  | 10 – 20 Hz                                                                                                        |
| Temporal resolution of fluxes      | 10 – 60 minutes                                                                                                   |
| Application for chemical compounds | Selected inert gases (gas analyzers with high time resolution)                                                    |
| Restrictions in the application    | Sufficient homogeneous footprint area & turbulent conditions  necessary, possibly precipitation (open-path IRGAs) |

---
### Energy Balance Gap

**Definition** The energy balance gap refers to the systematic failure of measured energy fluxes to account for all available net radiation. In an ideal system, the energy entering a surface must equal the energy leaving it.

**Surface energy balance**
$$
R_{net} - (G + S_a + S_b + S_g) = H + \lambda E
$$
- **$S$ (Storage terms):** Represents energy stored in **a**ir, **b**iomass, and **g**round.

**Imbalance ($I$) Calculation**

$$
I = 1- \frac{ \lambda E}{R_{net} - (G + S_a + S_b + S_g)}
$$


- An imbalance value of **$0$** indicates perfect closure, while positive values indicate a "gap" where measured turbulent fluxes ($H, \lambda E$) are smaller than the available energy.

**Four Groups of Reasons for the Closure Gap**

- **Instrument Error:**
    - Systematic errors in soil heat flux, radiation, or humidity measurements.
    - **Footprint Mismatch:** While it contributes to non-closure at individual sites, it cannot explain the systematic global gap.
- **Data Processing Error:**
    - Systematic errors within correction algorithms.
    - Uncertainties introduced by the averaging operator.
- **Additional Sources of Energy:**
    - **Canopy and Biomass Heat Storage:** Energy temporarily held within the vegetation.
    - **Biochemical Energy Storage:** Energy consumed by photosynthesis.
    - **Potential Energy of Water:** Vertical transport of energy via water movement.
- **Sub-mesoscale Transport / Secondary Circulations:**
    - Involves horizontal flux divergence and vertical or horizontal advection.
    - **Dispersive Fluxes:** Energy transported by large-scale structures not captured by standard Eddy Covariance.



**Footprint Mismatch**

- This mismatch can contribute significantly to the energy balance non-closure at an individual site.
- However, footprint mismatch alone cannot explain the systematic gap in measurements observed worldwide.


**Dispersive fluxes**

Dispersive fluxes represent energy transport by large-scale atmospheric structures that are not captured by standard local measurement techniques.

|**Feature**|**Turbulent Organized Structures (TOS)**|**Thermally-induced Mesoscale Circulations (TMC)**|
|---|---|---|
|**Scale**|Very large turbulent eddies that span the entire boundary layer vertically.|Circulations driven by horizontal surface differences.|
|**Trigger**|These structures develop randomly.|Induced by thermal surface heterogeneity, such as differences in surface albedo or cooling through evaporation.|
|**Environment**|These can occur even over **homogeneous** surfaces.|These do **not** occur over homogeneous surfaces.|


 **Advection**

- The **Control Volume Approach** addresses the conservation of a passive scalar $c$.
- To achieve accuracy in complex environments, this approach must include **horizontal advection** and **vertical advection** in addition to vertical turbulent exchange.

---

#### Alternatives to Eddy Covariance (Indirect Methods)

- **Profile Methods:** 
	- These involve the measurement of atmospheric profiles.
	- Fluxes are determined by applying **flux-gradient similarity theory** (specifically **Monin-Obukhov Similarity Theory** or **MOST**).
	- The simplest version is the **bulk approach**, which considers only two measurement heights and uses bulk coefficients.
	- This method is associated with **rather high errors**.
	- **Application**: Typically used over water surfaces or in modeling when no other approaches are available.

**Bowen-ratio Method**

- This method requires the measurement of air temperature and humidity at two different heights, combined with radiation balance and ground heat flux measurements.

- **Assumptions**:
    - Requires a **closed energy balance**; the method is not applicable if this is not fulfilled.
    - Assumes the **same exchange coefficients** for both heat and humidity.
- **Requirements**:
    - The ratio of measurement heights must be **$> 4$**, which often requires a rather tall tower.
    - Horizontal wind speed must be **$> 1 \text{ m s}^{-1}$**.
    - The Bowen ratio ($Bo$) must not be equal to **$1$**.
- **Application**: Often used in applied research as it is cheaper than the Eddy Covariance method.

Governing Equations:

- Energy Balance: $Q^* = Q_H + Q_E + Q_G$
- Bowen Ratio: $Bo = \frac{Q_H}{Q_E}$ and $Bo = 0.667 \cdot \frac{\Delta T}{\Delta e}$
- Derived Fluxes: $Q_H = (-Q^*_S - Q_G) \frac{Bo}{1 + Bo}$ and $Q_E = \frac{-Q^*_S - Q_G}{1 + Bo}$
- **Modified Bowen-ratio Method**: A sonic anemometer can be added to directly measure sensible heat flux ($Q_H$) and overcome some standard limitations, though this is more expensive.
    - Corrected $Q_H$ using Schotanus: 
$$Q_H = \rho c_p(\overline{w'T'})_{c} = \rho c_p \frac{\left( \overline{w'T_S'} + \frac{2\bar{T}}{c^2} (\bar{u} \cdot \overline{u'w'} A + \bar{v} \cdot \overline{v'w'} B) \right)}{\left( 1 + \frac{0.51 \bar{T} c_p}{\lambda Bo} \right)}$$
    - Resulting Latent Heat: $Q_E = \frac{Q_H}{Bo}$

**Hyperbolic Relaxed Eddy Accumulation (HREA)**

- This technique involves the collection of air in two different chambers assigned to **upward-moving** or **downward-moving** air parcels.
    
- It utilizes **flux variance similarity** so that the concentration of the resulting gas can be used without weighing individual parcels by their corresponding wind speed, making it an indirect method.
    
- **Thresholds**:
    
    - Vertical wind speed thresholds are added because valves cannot react fast enough to very small fluctuations.
        
    - Concentration thresholds are used because gas analyzers may not detect very small concentration differences.
        
- This method can be very accurate if applied carefully but requires significant micrometeorological and metrological expertise.

**#### **Disjunct Eddy Covariance Method (DEC)**

- This method involves a significant reduction of the sampling rate, typically sampling only every **$1 \text{ to } 10 \text{ seconds}$**.
    
- The analysis occurs between sampling times.
    
- **Application**: Primarily used for substances for which no fast-response (high-frequency) gas analyzers are available.


---

# 💡 Key Takeaways

- **EC is the "Gold Standard":** It is the most direct ecosystem-scale measurement, but it relies on strict assumptions of homogeneity and stationarity.
- **Data is not raw:** Extensive post-processing (WPL, Schotanus, Spectral) is mandatory to convert raw sensor signals into physically meaningful fluxes.
- **The Missing Energy:** The global energy balance gap is likely caused by large-scale transport (dispersive fluxes) that single towers are too small to capture.
- **Sonic Temperature $\neq$ Air Temperature:** Sonics measure the speed of sound, which is influenced by humidity; hence, the Schotanus correction is required to find sensible heat.

---

# 💭 Questions

- Which conditions have to be true for the control volume approach for the Eddy covariance?
- Name two advantages and disadvantages for the eddy covariance measurements.
- Which instruments are used to measure eddy covariance and what do they measure?
- Which limitations and corrections can be done to the measurements?
- How to convert buoyancy flux to sensible heat flux, why do we need to do that in the first place?
- **Exercise (Schotanus):** Using the coefficients for a CSAT3 anemometer, calculate the correction term for a buoyancy flux measurement where $\bar{u} = 5\text{ m/s}$ and $\bar{T} = 293\text{ K}$.
- **Exercise (WPL):** Why does an open-path IRGA require WPL correction while a closed-path system (if temperature is stabilized) might not?
- Explain why the Planar Fit coordinate rotation is considered superior to Double Rotation for long-term datasets.
- Differentiate between TOS and TMC in terms of their triggering mechanisms.
- What are the specific height and wind speed requirements for the Bowen-ratio method to be accurate?
- How do biochemical energy storage and canopy heat storage influence the energy balance closure?
- Compare **HREA** and **DEC**. Which method is better suited for substances where gas analyzers cannot react to very small concentration differences?

---

# 🐢 Definitions

- **Eddy Covariance:** A micrometeorological method that uses high-frequency wind and scalar data to directly calculate vertical turbulent fluxes.
    
- **WPL Correction (Webb-Pearman-Leuning):** A correction for air density fluctuations caused by heat and water vapor fluxes that distort gas concentration measurements.
    
- **Dispersive Fluxes:** Energy transport related to large, organized structures or circulations that are not captured by local turbulence measurements.
    
- **Isotropic Turbulence:** Turbulence that has the same statistical properties in all directions.
    

---

# 📅 Homework

- **Review:** Re-read the WPL correction logic. Why is it more critical for open-path IRGAs than closed-path systems?
    
- **Calculation:** Using the provided Schotanus equation, explain how an increase in humidity affects the difference between Sonic temperature and actual air temperature.
