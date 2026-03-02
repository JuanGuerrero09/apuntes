---
Class: "[[Hydrology]]"
Date: 2026-01-12
Last Modified: Monday 12th January 2026 11:11
---
# 📅 Monday 12th January 2026

# 📒Class Summary

Today's session focused on **Runoff and Discharge**, exploring the fundamental components of river flow and the methodologies for data collection. We covered site selection criteria, techniques for measuring water stage (gauges and sensors), and various methods for determining stream flow velocity (area-velocity, ADCP, and tracers). Finally, we analyzed the **stage-discharge relationship** and the complexities of establishing accurate flow rating curves in non-uniform river systems.

---
# 📝 Notes

## 7. Runoff

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

---
# 💡 Key Takeaways

- **Reliability:** Runoff ($R$) is the most reliably determined part of the water balance equation ($P = ETR + R$).
- **Stability:** Accurate discharge measurement requires a stable cross-section and a straight river reach to ensure a consistent stage-discharge relationship.
- **Velocity Integration:** The Area-Velocity method remains the standard for manual gauging, while ADCP provides high-resolution 3D velocity profiles.
- **Hysteresis:** In non-uniform flows, the stage-discharge curve is not a simple line but often a loop (hysteresis), requiring frequent recalibration.

---
# 💭 Questions

- **Which measurement methods are used for runoff?**
    
    - Runoff is determined by measuring water stage (Staff gauges, mechanical floats, or pressure sensors) and combining it with velocity measurements (Area-velocity method, ADCP, or tracers) or structural conversions (Weirs and Flumes).
        
- **Why is accurate runoff data collection vital for hydrological studies?**
    
    - It is essential for adequate system characterization, sustainable water resource management, flood and drought risk assessment, and evaluating the impacts of Climate Change (CC).
        
- **What are the main criteria for selecting a site for technically reliable discharge measurements?**
    
    - A straight river section with a constant slope, a stable cross-section (to ensure a consistent stage-discharge relationship), and the absence of obstructions, weeds, or backwater effects.
        
- **Name and describe the different types of gauges used for measuring water stage.**
    
    - **Staff Gauge:** A manual, non-recording graduated plate. **Mechanical Float:** Provides continuous recording via a float-driven transmission. **Pneumatic Gauge/Pressure Sensor:** Measures hydraulic pressure to calculate stage via $p = \rho g h$.
        
- **What is the difference between discrete and continuous runoff data, and when is each used?**
    
    - **Discrete data** consists of single-point values used for specific investigations (e.g., stream-loss gauging). **Continuous data** provides a full hydrograph, which is necessary for flood forecasting and reservoir operations.
        
- **How does a pressure sensor determine the water stage, and what is its advantage over a float gauge?**
    
    - It measures the hydrostatic pressure of the water column ($p = \rho g h$). Its main advantages are that it allows for continuous recording and is significantly less susceptible to frost than mechanical floats.
        
- **Describe the Area-Velocity Method for deriving discharge.**
    
    - The river cross-section is divided into segments. For each segment, the area ($A_i$) is calculated ($width \times depth$) and multiplied by the measured mean velocity ($v_i$). Total discharge ($Q$) is the sum of all segments.
        
- **What are some alternative flow measurement methods besides the area-velocity method?**
    
    - Hydraulic structures (Weirs and Flumes), Tracer (dilution) methods using salt or fluorescent dyes, and ADCP (Acoustic Doppler Current Profiler).
        
- **What does a stage-discharge curve represent, and what are its theoretical assumptions?**
    
    - It represents the empirical relationship between the water stage ($h$) and the discharge ($Q$). It theoretically assumes **steady uniform flow**, where the water surface is parallel to the riverbed.
        
- **What is hysteresis in the context of a stage-discharge curve?**
    
    - It is the phenomenon where the stage-discharge relationship follows different paths during the rising limb (steeper slope/higher $Q$) and the falling limb (shallower slope/lower $Q$) of a flood event.

---
# 🐢 Definitions

- **Runoff ($R$):** The total surface and subsurface water flow leaving a catchment area.
- **Discharge ($Q$):** The volumetric flow rate of water, usually expressed in $m^3/s$ or $L/s$.
- **Stage ($h$):** The height of the water surface above a specified vertical datum (gauge zero).
- **Hysteresis:** The phenomenon where the stage-discharge relationship follows different paths during the rising and falling limbs of a flood.
- **Rating Curve:** An empirical curve showing the relation between the stage and the discharge of a stream at a given cross-section.

---
# 📅 Homework

- **Calculation:** Using the Bernoulli rectangular weir formula, calculate the discharge if the water head ($h$) is $0.5\text{ m}$, the width ($b$) is $2\text{ m}$, and $C_d$ is $0.62$.
    
- **Analysis:** Review your local catchment's hydrograph. Can you identify periods of baseflow versus quickflow (storm runoff)?

