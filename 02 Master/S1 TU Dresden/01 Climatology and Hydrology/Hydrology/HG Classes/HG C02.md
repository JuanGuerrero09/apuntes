---
Class: "[[Hydrology]]"
Professor:
Date: 2025-10-20
Last Modified: Monday 20th October 2025 11:15
---
# Monday 20th October 2025

# 📒Class Summary

Introduction to the **water balance equation** derived from the **law of conservation of mass**.  
The lecture covered the **main hydrological components** — precipitation ($P$), evapotranspiration ($ETR$), runoff ($R$), and storage ($\Delta S$) — across **different spatial and temporal scales**.  
It also introduced the **link between water and heat balance**, emphasizing that **energy drives phase changes** and thus connects both hydrological and thermal processes.


---
# 📝 Notes

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

- **Water surplus** (P > ETR)
- **Water deficit** (soil & groundwater depletion) (ETR > P)
- **Subsurface recharge** (P > ETR)

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
- **LE** – Latent heat flux = λ·E (where E is the evaporation rate)
- $\lambda \approx 2448 \, \text{kJ/m}^2$ to vaporize 1 mm of water

---
# 🐢 Definitions

- **Water Balance Equation** – Relationship between precipitation (P), evapotranspiration (ETR), runoff (R), and change in storage (ΔS):
$$\Delta S = P - ETR - R$$
- **Evapotranspiration (ETR)** – Combined process of evaporation (from water/soil) and transpiration (from plants).
- **Runoff (R)** – Water that flows on the surface (surface runoff) or underground (baseflow) out of a catchment.
- **Storage (S)** – Water stored as snow, ice, soil moisture, groundwater, lakes, etc.
- **Hydrological Year** – Time frame for hydrological measurements. In Central Europe: **1 November – 31 October**.
- **Latent Heat of Vaporization (λ)** – Energy needed to convert 1 mm of water into vapor (~2448 kJ/m²).
- **Net Radiation (Rn)** – Balance between incoming and outgoing radiation at the Earth’s surface.
- **Ground Heat Flux (G)** – Heat flow into the ground.
- **Sensible Heat Flux (H)** – Heat transferred by air movement and temperature gradients.
- **Latent Heat Flux (LE)** – Energy used for evaporation:
$$LE = \lambda \cdot E$$

---
# 💡 Key Takeaways

- The **water balance equation** is the quantitative expression of **mass conservation** in hydrology.
- Precipitation ($P$) represents the **input**, while evapotranspiration ($ETR$) and runoff ($R$) represent the **outputs**; their imbalance defines **storage change** ($\Delta S$).
- **Spatial and temporal variability** of $P$, $ETR$, and $R$ reflects climate, topography, soil, and vegetation.
- **Infiltration capacity** determines whether precipitation becomes **runoff** or **groundwater recharge**.
- The **energy balance** and **water balance** are coupled through **latent heat ($\lambda$)** — the energy required for evaporation and condensation.
- About **2.45 MJ/m²** (≈2448 kJ/m²) are needed to evaporate **1 mm of water**, linking hydrological fluxes with surface energy fluxes.
- Understanding both balances is essential for modeling **climate–land–water interactions** and managing **water resources** under changing conditions.

---

# 💭 Questions

- What is the latent heat of vaporization?
 Is the energy needed to vaporize 1 mm of water (around 2448 $kJ/m^2$)
 
- Why is the water balance equation considered an application of the conservation of mass?
Because it accounts for every unit of water entering (input), leaving (output), or staying (storage) within a defined boundary, ensuring no mass is 'lost' or 'created' without explanation.

- How does the water balance differ between humid and arid regions?
In humid regions, energy (radiation) often limits $ETR$ because water is abundant. In arid regions, water availability limits $ETR$, and $P$ is often much lower than potential evaporation, leading to high water deficits.

- What happens to $\Delta S$ if $P < ETR + R$ over a hydrological year?
The water stored in the system (in form of GW, snow, etc) decreases due a water shortage

- How does increasing vegetation cover influence $ETR$ and $R$?
More vegetation increases the plants transpiration, and decreases the runoff (for same precipitation scenario)

- Using the general form $P = ETR + \Delta S + SW_{out} - SW_{in} + GW_{out} - GW_{in}$,  
	how would you identify whether a basin is a **net exporter or importer of water**?
A basin is a **net exporter** if the sum of $(SW_{out} + GW_{out}) > (SW_{in} + GW_{in})$. It is an **importer** if the inflow terms are greater than the outflow terms.

- In the energy balance $R_n = G + H + LE$, what physical process links $LE$ with the water balance term $ETR$?
The ETR consist in both E + TR, and the Latent heat flux (LE) is obtained by the product of the latent heat of vaporization and the evaporation E ->  $LE = \lambda E$

---
# 📅 Homework

_Calculation Check_: If a catchment receives $800\,\text{mm}$ of rain per year, has an $ETR$ of $500\,\text{mm}$, and the storage decreases by $50\,\text{mm}$, what is the total Runoff ($R$)?

- _Logic_: $\Delta S = P - ETR - R \Rightarrow -50 = 800 - 500 - R \Rightarrow R = 350\,\text{mm}$.

