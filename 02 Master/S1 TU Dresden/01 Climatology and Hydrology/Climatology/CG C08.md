---
Class: "[[Climatology]]"
Date: 2025-12-19
Last Modified: Friday 19th December 2025 09:20
---
Here is the consolidated version of your notes for **Friday 19th December 2025**, following your established format and incorporating the transcription of the exercises and case studies.

# 📅 Friday 19th December 2025

# 📒 Class Summary

The session was dedicated to the practical application of surface energy balance and microclimatology principles through a series of **computational and analytical exercises**. We focused on calculating radiation emissions, heat fluxes, and wind profiles over different surface types (bare soil vs. vegetated), while also interpreting real-world ecosystem data to identify land-cover types and their responses to drought stress.

---

# 📝 Notes

## Exercises Day: Data Interpretation and Calculations

### Case Study: Central Europe Interannual Comparison

Analyzing two August days (2003 and 2005) at the same site in Central Europe:

1. **Name the quantities that are shown in each subplot:**
    
    - **Top Subplot:** Energy fluxes including $R_{net}$ (Net Radiation), $G$ (Ground heat flux), $H$ (Sensible heat flux), and $\lambda E$ (Latent heat flux).
    - **Middle Subplot:** NEE (Net Ecosystem Exchange) of $CO_2$ flux.
    - **Bottom Subplot:** $m_{soil}$ (%) representing Soil moisture.

2. **Guess the land cover, give two arguments:**
    
    - **Response:** Grassland or Crop.
        
    - **Arguments:**
        
        - **Photosynthetic Activity:** The daytime NEE drops to significant negative values (~-20 to -25), which is characteristic of fast-growing low vegetation.
            
        - **Energy Partitioning:** During the moist year (2005), latent heat ($\lambda E$) is dominant over sensible heat ($H$), a typical behavior for healthy, non-water-stressed vegetation.
            
3. **Describe and interpret the differences between the two days:**
    
    - **2003 (Drought Year):** Very low soil moisture (<10%) causes water stress; plants increase stomatal resistance ($r_c$), forcing Sensible Heat ($H$) to become the dominant energy sink while CO2 uptake (NEE) is inhibited.
        
    - **2005 (Normal Year):** Higher soil moisture (~18%) allows for free transpiration and efficient CO2 sequestration.
        

---

### Computational Exercises

**Exercise 1:** Calculate the amount of radiation that is emitted by the Earth with a surface temperature of $30$ °C, assuming that the Earth is a black body.

> _Hint: Use the Stefan-Boltzmann law:_ $I = \epsilon_0 \sigma T_0^4$.

**Exercise 2:** Convert the following 30-min covariances in kinematic units into sensible and latent heat fluxes in energetic units and calculate the Bowen ratio:

- $\overline{w'T'} = 0.2 \text{ K m s}^{-1}$
    
- $\overline{w'e'} = 0.2 \text{ hPa m s}^{-1}$
    
- $T = 295 \text{ K}$
    
- $p = 1000 \text{ hPa}$
    

**Exercise 3:** Calculate the roughness length over a non-vegetated surface from the following measurements:

- $u_* = 0.4 \text{ m s}^{-1}$
    
- $u(10 \text{ m}) = 6 \text{ m s}^{-1}$
    

**Exercise 4:** Calculate the wind speed at $10$ m above the surface over a grassland with vegetation height $z_B = 0.9$ m.

- $u_* = 0.4 \text{ m s}^{-1}$
    

**Exercise 5:** Estimate the latent heat flux from vertical profile measurements of temperature and water vapor pressure and a sensible heat flux measurement from a sonic anemometer:

- $\partial T = 1.5 \text{ K}$
    
- $\partial e = 2 \text{ hPa}$
    
- $H = 150 \text{ W m}^{-2}$
    
- $\gamma = 0.667 \text{ hPa K}^{-1}$
    

**Exercise 6:** Over $0.9$ m tall grass, the horizontal wind speed is $3 \text{ m s}^{-1}$ at $2$ m above the ground. Calculate the wind speed at $10$ m above the ground.

---

# 💡 Key Takeaways

- **The Bowen Ratio ($\beta$):** A fundamental tool to identify land-cover; $\beta < 1$ usually suggests moist vegetated surfaces or water, while $\beta > 1$ suggests dry or water-stressed environments.
    
- **Stomatal Control:** As seen in the 2003 vs 2005 case, plants actively "tune" the local climate by closing stomata during droughts, shifting energy from $Q_E$ to $Q_H$.
    
- **Aerodynamic Scaling:** Calculating wind above vegetation (Exercises 4 & 6) requires the use of the zero plane displacement height ($d$), shifting the logarithmic profile upward.
    

---

# 💭 Questions

- Which types of special characteristic of different land-cover are?
    
- What effects do those characteristics have on local climate?
    
- How to identify the land-cover based on measurements?
    
- **In Exercise 1, how would the emission change if the emissivity ($\epsilon$) was 0.95 instead of a perfect black body?**
    
- **Why is the CO2 flux (NEE) considered "negative" during the daytime for healthy vegetation?**
    

---

# 🐢 Definitions

- **Stefan-Boltzmann Law:** Describes the power radiated from a black body in terms of its temperature.
    
- **NEE (Net Ecosystem Exchange):** The net flux of $CO_2$ between an ecosystem and the atmosphere.
    
- **Stomatal Resistance ($r_c$):** The physiological resistance exerted by plants to regulate gas and water vapor exchange.
    
- **Zero Plane Displacement Height ($d$):** The height above the ground where the wind speed theoretically becomes zero due to the canopy momentum sink.
    

---

# 📅 Homework

- **Numerical Completion:** Perform the actual calculations for Exercises 1 through 6 using $k = 0.4$ (von Kármán constant).
    
- **Data Interpretation:** Re-examine the Graswang and Fendt graphs; list two specific reasons why Graswang is likely grassland and not a dense forest based on the $Q_G$ and $CO_2$ data.
    
- **Synthesis:** Draft a short paragraph explaining the relationship between soil moisture ($m_{soil}$) and the partitioning of sensible vs. latent heat flux.

