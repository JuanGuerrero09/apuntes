---
Class: "[[Hydrology]]"
Date: 2026-01-22
Last Modified: Monday 19th January 2026 10:05
---
# 📅 Monday 19th January 2026

# 📒Class Summary

Today's session focused on **Hydrograph Analysis** and the statistical characterization of **Floods and Droughts**. We explored various tools for time series analysis, including mass curves and flow duration curves, and discussed the methodologies for estimating design floods (HQ) based on different data record lengths. Additionally, we categorized the types and criteria for droughts and emphasized the importance of statistical analysis in hydraulic structure design and water management.

---
# 📝 Notes

## 7. Runoff

### 7.2 Hydrograph analysis

Hydrograph analysis is essentially a **time series analysis** used to derive useful statistics for catchment management.

- **Statistics derived:** Mean discharge ($MQ$), low/peak flows, mass curves, flood volumes, and flood duration curves.
- **Mass Curve:** The time integral of the hydrograph:$$S_Q = \int_{t0}^t Q(t) dt = \Delta t \cdot \sum Q$$
    
    - The **slope** of the mass curve represents $\Delta t \cdot \sum MQ$.
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

- **Flood:** River discharge rising to a multiple of the average discharge over a short period.
- **Drought:** River discharge falling below a critical limit over extended periods.

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
    
2. Determine the **empirical non-exceedance probability** using the Gringorten (1963) formula:
    
    $$P_{U, Gringorten} = \frac{i - 0.44}{n + 0.12}$$
    
3. **Fit the Gumbel (EV1) distribution** to the sample:
    
    $$P_{U, Gumbel} = e^{-e^{-\frac{x - u}{\alpha}}} \qquad \text{where } \alpha = \frac{s_x \sqrt{6}}{\pi} \text{ and } u = \bar{x} - 0.5772 \cdot \alpha$$
    
4. **Test Goodness of Fit** via the Kolmogorov-Smirnov test:
    
    $$d_{1,i} = |P_{U, Gumbel}(x_i) - P_{U, Gringorten}(x_i)|$$
    
    $$d_{2,i} = |P_{U, Gumbel}(x_i) - P_{U, Gringorten}(x_{i-1})|$$
    
    The fit is valid if $c > \max([d_1 \ d_2])$.
    
5. **Calculate $HQ(R)$** for specific return periods using: $R = 1 / (1 - P_U)$.
    

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


---
# 💡 Key Takeaways

- **Hydrograph Statistics:** Mass curves are time integrals useful for reservoir design, while duration curves show exceedance frequencies for economic and ecological criteria.
    
- **Flood Design:** Estimating extreme events is challenging due to limited record lengths and non-stationarity.
    
- **Drought Progression:** Droughts progress from meteorological (precipitation deficit) to agricultural (soil moisture) and finally hydrological (stream/groundwater levels) stages.

---
# 💭 Questions

- What is a **design flood** and what is it used for?
    
- Name different meteorological and catastrophic reasons for a flood.
    
- What are the different types of droughts?
    
- What are the main reasons for a drought to occur?
    
- Name the different flood criteria used for the design of protection structures.
    
- What are the main assumptions of the **Flow Duration Curve**?
    
- How do you estimate design floods for ungauged cross-sections?
    
- Name the different criteria used to define a drought.

---
# 🐢 Definitions

- **Mass Curve:** A time integral of the hydrograph used to calculate storage or release.
    
- **Flow Duration Curve:** A cumulative frequency curve showing how often river flow exceeds a threshold.
    
- **Flood Volume:** The integration of the flood hydrograph to determine total water volume during an event.

- **Design Flood**: A hypothetical hydrograph or peak discharge used as a benchmark for the engineering of hydraulic structures.
    
- **$HQ$ (High Quality/Flow)**: Peak discharge, specifically the annual maximum flow.
    
- **$7Q10$**: A common low-flow index representing the minimum $7$-day average flow expected once every $10$ years.
    
- **Reference $HQ$-Method**: A method to estimate floods in ungauged areas by comparing them to gauged areas with similar physical characteristics.
    
- **$Q_{95}$**: The flow magnitude that is exceeded $95\%$ of the time, often used as a baseline for ecological minimum flow.

---
# 📅 Homework

- **Review**: Re-read the derivation of the Gumbel distribution parameters ($\alpha$ and $u$) from Exercise 4.
    
- **Comparison**: Prepare a brief table comparing the **Gumbel** and **GEV** distributions for extreme value analysis.

