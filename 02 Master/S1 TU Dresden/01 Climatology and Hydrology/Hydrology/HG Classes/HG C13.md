---
Class: "[[Hydrology]]"
Date: 2026-02-02
Last Modified: Monday 2nd February 2026 11:13
---
# 📅 Monday 2nd February 2026

# 📒Class Summary

Today’s session focused on **Evapotranspiration (ET)**, analyzing its different components and the mechanisms driving water movement from the surface to the atmosphere. We examined the physics of free-water evaporation and transpiration, compared empirical and micrometeorological modeling approaches (including Penman and Penman-Monteith), and reviewed various measurement tools such as lysimeters and eddy-covariance systems.

---
# 📝 Notes

## 8. Evapotranspiration

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

---
# 💡 Key Takeaways

- **Dominant Component:** Transpiration accounts for over 70% of total evapotranspiration.

- **Potential vs. Actual:** $PET$ describes climate demand (unlimited water), while $ETR$ describes reality based on actual soil water availability.

- **Resistance Factors:** The Penman-Monteith equation is superior to the original Penman equation because it incorporates $r_s$ and $r_a$ to account for vegetative and aerodynamic resistances.

- **Crop Variations:** Different plants ($K_c$ factors) significantly alter the rate of water loss even under identical climate conditions.

---

# 💭 Questions

- **What is the difference between potential (PET) and actual (ETR) evapotranspiration?**
    
    - PET represents the theoretical atmospheric demand for water assuming unlimited supply. ETR is the real-world water loss limited by actual soil moisture availability.
        
- **What are the four main sub-components of ET and their typical distributions?**
    
    - Transpiration (70–75%), Evaporation from water/soil (10–15%), Interception evaporation (15%), and Sublimation (2–3%).
        
- **How does the Penman-Monteith equation improve upon the original Penman equation?**
    
    - By incorporating **surface resistance ($r_s$)**, which accounts for plant physiology (stomata) and **aerodynamic resistance ($r_a$)**, which accounts for wind-driven vapor transport.
        
- **Does an increase in temperature always lead to an increase in transpiration?**
    
    - No. While it increases initially, at very high temperatures plants close their stomata to prevent desiccation (mid-day depression), causing the rate to plateau or decrease.
        
- **What is the difference between $PET$ and $ET_0$?**
    
    - $PET$ is the theoretical demand for any surface. $ET_0$ (Reference ET) is a specific, standardized calculation for a well-watered, 12 cm tall grass surface.
        
- **List five measurement devices for transpiration and specify what they measure.**
    
    - 1. **Porometer** (stomatal conductance), 2. **Potometer** (water uptake), 3. **Sap Flow Meter** (stem water movement), 4. **Lysimeter** (mass balance), 5. **Eddy-Covariance** (turbulent vapor flux).
            
- **Explain the Water Balance method for calculating $ETR$ and its limitations.**
    
    - $ETR = P - R$. It is simple and direct but only accurate for long-term (annual) averages where storage changes are negligible, and it requires perfectly calibrated precipitation data.
        
- **How does the $K_c$ factor differ between crops like pineapple and cotton?**
    
    - $K_c$ scales the reference $ET_0$ to a specific crop. Pineapple ($K_c \approx 0.3$) is highly water-efficient, while Cotton ($K_c \approx 1.2$) has a water demand $20\%$ higher than the reference grass.
        
- **How do we estimate actual versus potential evapotranspiration?**
    
    - **Potential ET** is estimated via climate-based theoretical models (e.g., Penman). **Actual ET** is measured using physical systems like **Lysimeters** (mass change) or **Eddy-Covariance** (atmospheric fluctuations).
        
- **In the Eddy-Covariance method, which two atmospheric components are used to calculate $ETR$?**
    

---
# 🐢 Definitions

- **Evapotranspiration (ET):** The sum of evaporation from surfaces and transpiration from plants.
    
- **Vapour Pressure Deficit:** The difference between the amount of moisture the air can hold and how much it currently holds.
    
- **Potential Evapotranspiration (PET):** The amount of evaporation that would occur if water supply were unlimited.
    
- **Lysimeter:** A measuring device used to measure the actual evapotranspiration which is released by plants.
    
- **Initial Abstraction:** In the context of ET, it refers to the water intercepted by surfaces before reaching the soil.
---
# 📅 Homework
- **Exercise Review:** Solve for $PET$ using the radiation-based Priestley-Taylor equation assuming $\alpha_{PT} = 1.26$ for a humid region.
    
- **Case Study:** Compare the $ET_c$ of a citrus grove versus a pineapple field using the provided $K_c$ values.


