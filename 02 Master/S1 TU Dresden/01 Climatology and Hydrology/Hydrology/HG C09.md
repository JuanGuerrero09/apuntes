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

##### **Mass Balance**

The change in water equivalent ($\Delta h_m$) is calculated as:

$$\Delta h_m = P - M \pm LE_a$$

- $P$: Precipitation (snow or liquid).
    
- $M$: Meltwater.
    
- $LE_a$: Sublimation or condensation.
    

##### **Energy Budget**

The net energy exchange ($\Delta E$) is defined by:

$$\Delta E = RS + RL + H + LE + HR + G$$

- **RS:** Short wave radiation (function of albedo $a$).
    
- **RL:** Long wave radiation exchange.
    
- **H:** Sensible heat exchange.
    
- **LE:** Latent heat exchange.
    
- **HR:** Heat input by rain.
    
- **G:** Conductive sensible heat exchange with the subsurface.
    

##### **Phases of Snowpack Dynamics**

1. **Accumulation Phase:** Snowpack growth; requires spatial measurements due to wind relocation.
    
2. **Settlement/Metamorphosis:** Increasing density and layer generation driven by gravitation, vapor pressure, and melt-freeze cycles.
    
3. **Melting Phase:** Occurs when net energy balance becomes positive. Consists of three sub-phases:
    
    - **a) Warming:** Raising temperature to the melting point.
        
    - **b) Ripening:** Saturation of the snowpack.
        
    - **c) Output:** Generation of meltwater.

---

#### **Snowmelt**

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

##### 1. Energy Budget Approach Examples

**Variables and Example Values**:

- $h_s$ = **snow depth** = $72 \text{ cm}$
    
- $h_m$ = **equivalent water depth** = $\rho_s / \rho_w \cdot h_s = 29 \text{ cm}$ (assuming $\rho_s = 0.4 \text{ g cm}^{-3}$)
    
- $c_i$ = **heat capacity of ice** = $2102 \text{ J kg}^{-1} \text{ °C}^{-1}$
    
- $\rho_w$ = **density of water** = $1,000 \text{ kg m}^{-3}$
    
- $T_s$ = **average snow temperature** = $-9 \text{ °C}$
    
- $T_m$ = **melting temperature** = $0 \text{ °C}$
    
- $\lambda_f$ = **latent heat of fusion** = $0.334 \text{ MJ kg}^{-1}$
    
- $\theta_{ret}$ = **max volumetric water content retained by snow**
    

**1a) Warming Phase – Energy Demand ($Q_1$):**

$$Q_1 = -2102 \text{ J kg}^{-1} \text{ °C}^{-1} \cdot 1000 \text{ kg m}^{-3} \cdot 0.29 \text{ m} \cdot (-9 \text{ °C} - 0 \text{ °C})$$

$$Q_1 = 5.5 \text{ MJ m}^{-2}$$

**1b) Ripening Phase – Energy Demand ($Q_2$):**

Using empirical estimation (Goto et al. 2012): $\theta_{ret} = 3 \cdot 10^{-10} \cdot \rho_s^{3.23}$.

For $\rho_s = 400 \text{ kg m}^{-3} \rightarrow \theta_{ret} = 0.077 \text{ m}^3 \text{ m}^{-3}$.

$$Q_2 = 0.077 \cdot 0.72 \text{ m} \cdot 1000 \text{ kg m}^{-3} \cdot 0.334 \text{ MJ kg}^{-1}$$

$$Q_2 = 18.5 \text{ MJ m}^{-2}$$

**1c) Output Phase – Energy Demand ($Q_3$):**

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

This empirical relationship is based on the heat budget but considers only temperature. It has lower accuracy but is widely used in models due to its ease of use.

**Governing Equation**:

$$\Delta w = B(T_a - T_m) \qquad \text{for } T_a \geq T_m$$

$$\Delta w = 0 \qquad \text{for } T_a < T_m$$

**Parameters**:

- $\Delta w$: Snowmelt per time step.
    
- $B$: **Melt factor**. Standard value $\approx 0.36 \text{ cm d}^{-1} \text{ °C}^{-1}$.
    
- $T_m$: Melting temperature.
    

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

- How does the snow influences the hydrological water cycle?
- How can we measure the snow?
- In what ways does snow specifically influence the energy balance of a landscape compared to a forested area?
- What is the main challenge in scaling point estimates of snowmelt to a catchment level?
- Differentiate between the three sub-phases of the melting process (warming, ripening, and output).
- Why is the Temperature Index approach more common in predictive modeling despite having lower accuracy than the Energy Budget approach?
- How do invasive measurement tools like snow tubes differ in purpose from non-invasive tools like sonar?
- What are the three sub-phases of the melting process, and what defines the "ripening" stage?
- Why is $h_m$ (water equivalent) often a more useful measurement for hydrologists than $h_s$ (snow depth)?
- Under what conditions is a Temperature Index approach preferable over an Energy Budget approach despite its lower accuracy?
- How do factors like forest cover and albedo mathematically adjust the melt factor ($B$) in empirical modeling?
- How does heat input by rain ($HR$) contribute to the net energy exchange of a snowpack?

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

