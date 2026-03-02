---
Class: "[[Hydrology]]"
Date: 2026-01-06
Last Modified: Tuesday 6th January 2026 12:13
---
# 📅 Monday 5th January 2026

# 📒Class Summary

Today's session covered **Precipitation** with a major focus on **Extreme Rainfall** and **Snow/Snowmelt dynamics**. We discussed how snow influences the hydrological cycle through storage and energy balance (albedo), the various methods and instruments for measuring snowpack properties, and the mathematical modeling of snowmelt using both **Energy Budget** and **Temperature Index** approaches.

---
# 📝 Notes

## 6. Precipitation

### 6.5 Extreme Rainfall

- Review Exercise 3 for practical application of extreme rainfall calculations.

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

---
# 💡 Key Takeaways

- **Hydrological Role:** Snow acts as a seasonal water storage and significantly changes surface albedo, affecting the global energy balance.
- **Measurement Diversity:** Measurement ranges from simple rulers for depth to complex snow tensiometers for diurnal meltwater fluxes.
- **Modeling Trade-offs:** The Energy Budget approach is mechanistic and accurate but data-intensive, while the Temperature Index approach is simple but lacks precision.
- **The Scaling Challenge:** Transferring point estimates to spatial averages for a catchment is the main challenge due to snow's heterogeneous and anisotropic distribution.

---
# 💭 Questions

- **How does the snow influence the hydrological water cycle?**
    
    - By acting as a seasonal water reservoir (storage) and by altering energy dynamics through its high albedo (0.8–0.9), which reflects the majority of net radiation.
        
- **How can we measure the snow depth ($h_s$)?**
    
    - Using rods (invasive/portable), rulers (stationary), or ultrasonic sonar (non-invasive/continuous).
        
- **In what ways does snow specifically influence the energy balance of a landscape compared to a forested area?**
    
    - Snow has a significantly higher albedo (0.8–0.9) than forests (0.05–0.18), meaning it reflects most solar radiation and remains cooler, whereas forests absorb most radiation.
        
- **Which are the phases of the snowpack dynamics?**
    
    - Accumulation, Settlement/Metamorphosis, and Melting.
        
- **Which are the phases of the melting phase of the snow?**
    
    - Warming, Ripening, and Output.
        
- **What is the main challenge in scaling point estimates of snowmelt to a catchment level?**
    
    - Transferring point estimates is difficult because snow distribution is extremely heterogeneous and anisotropic (spatially uneven).
        
- **Differentiate between the three sub-phases of the melting process (Warming, Ripening, and Output).**
    
    - **Warming:** Energy increases the snow temperature to $0^\circ\text{C}$.
        
    - **Ripening:** Energy melts ice to fill pore spaces until the snow reaches its maximum water retention capacity ($\theta_{ret}$).
        
    - **Output:** The snow is fully saturated; all additional energy produces free runoff.
        
- **Why is the Temperature Index approach more common in predictive modeling despite having lower accuracy?**
    
    - It has lower data requirements, relying only on air temperature ($T_a$), making it easier to implement in regions with limited meteorological stations.
        
- **How do invasive measurement tools like snow tubes differ in purpose from non-invasive tools like sonar?**
    
    - Snow tubes allow for gravimetric sampling to determine density and water equivalent ($h_m$), whereas sonar provides continuous depth measurements without disturbing the snowpack.
        
- **What defines the "ripening" stage?**
    
    - It is defined by the saturation of the snowpack, where the liquid water content reaches the maximum retention capacity.
        
- **Why is $h_m$ (water equivalent) often a more useful measurement for hydrologists than $h_s$ (snow depth)?**
    
    - $h_s$ changes due to settling and compaction without mass change. $h_m$ represents the actual mass of water available for runoff, which is consistent for mass balance.
        
- **Under what conditions is a Temperature Index approach preferable over an Energy Budget approach?**
    
    - When high-resolution meteorological data (radiation, wind, humidity) is unavailable.
        
- **How do factors like forest cover ($F$) and albedo ($\alpha$) mathematically adjust the melt factor ($B$)?**
    
    - $B$ is directly proportional to $(1-\alpha)$ (lower albedo increases melt) and inversely related to forest cover ($B \propto \exp(-4F)$) because trees provide shading.
        
- **How does heat input by rain ($HR$) contribute to the net energy exchange of a snowpack?**
    
    - It adds **advective sensible heat** to the system. Since rain is warmer than $0^\circ\text{C}$, it transfers heat to the snow, accelerating the melt process.

---
# 🐢 Definitions

- **Albedo:** The reflectivity of a surface; snow has a high albedo (0.8–0.9), meaning it reflects most solar radiation.
- **Snow Water Equivalent ($h_m$):** The equivalent depth of liquid water if the entire snowpack melted instantaneously.
- **Firn:** Partially compacted snow that has been left over from past seasons and has been recrystallized into a substance denser than settled snow.
- **Ripening Phase:** The stage where the snowpack reaches its maximum volumetric water content and becomes saturated.
- **Sublimation:** The phase change of snow directly into water vapor without passing through the liquid phase.

---
# 📅 Homework

- **Review:** Re-calculate the $Q_1$ and $Q_3$ examples from the notes to ensure you understand the energy demand for each phase.
- **Regionalization Research:** Investigate how point-scale model results are typically regionalized for catchment-scale predictions.

