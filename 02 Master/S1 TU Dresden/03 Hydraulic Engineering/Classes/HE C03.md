---
Class: "[[03 Hydraulic Engineering]]"
Date: 2025-10-30
Last Modified: Thursday 30th October 2025 09:13
---
# Thursday 30th October 2025

# 📒Class Summary

Continuation of open channel hydraulics:
- Analytical discharge calculation methods (compound and vegetated channels).
- Introduction to sediment transport and bed shear stress concepts.
---
# 🕸️Resources

Lecture slides — Open Channel Hydraulics II  
(Discharge, vegetation influence, and sediment transport)
Lecture_MHSE06_WiSe_L3.pdf

---
# 📝 Notes

## Open Channel Hydraulics II

### Discharge Calculation in Open Channels

Flow discharge in open channels depends mainly on the **hydraulic radius** ($r_{hy}$) and the **energy slope** ($S_E$):

$$Q = A \cdot v_m \propto r_{hy}^{2/3} S_E^{1/2}$$

---

### Compound Channels

When a river overflows its main channel and extends onto the **floodplains**, the flow becomes **non-uniform**.  
Using a single roughness coefficient for the entire section leads to large errors since **velocity** in the floodplain and the main channel differ significantly.

The cross section is divided into **main channel**, **left bank**, and **right bank**.  
Hydraulic interaction between sub-sections can generate:

- Momentum transfer
- Interface vortices
- Secondary flow
- Shear layers
- Local velocity variations
$$
Q_{tot} = \sum ^n_{i=1} (V_{m, i} \;.\; A_i)
$$
![[Pasted image 20251030092834.png]]

This composite approach allows calculating discharge for **compound channels** more accurately.
### Channels with Vegetation

Vegetation increases resistance and decreases velocity.  
Dense or tall vegetation (trees, reeds) reduces flow efficiency and modifies turbulence patterns.  
If vegetation cannot be modeled directly, a **modified roughness coefficient ($K_{s,t}$)** is applied.
![[Pasted image 20251030093123.png]]
**Regions:**

- **Region I – Uninfluenced Zone:**  
    The flow is **not influenced by vegetation**. It occurs between $(b_v - b_m)$, close to the outer floodplain limit.
- **Region II – Transition Zone:**  
    The **current starts to be influenced** by vegetation. Flow velocity begins to increase toward the main channel.
- **Region III – Main Channel Zone:**  
    The flow becomes **fully influenced and stabilized** in the main channel.  
    Contains an **inflection point** where the velocity gradient changes before reaching the maximum $V(y)$ at the channel centerline.

---

## Sediment Transport

### Modes of Sediment Transport

Sediment moves in rivers depending on grain size, flow energy, and turbulence.

#### 1️⃣ Wash Load

- Fine material (silt and clay, < 0.0625 mm).
- Does **not** interact with the bed.
- Sourced from banks and watershed.
- Transported entirely in suspension.
#### 2️⃣ Bed Material Load

- Material that **interacts with the bed** and affects channel morphology.
- Divided into:
    - **Bed Load:**
        - Moves in contact with the bed (rolling, sliding, saltating).
        - Coarser material, low turbulence influence.
    - **Suspended Bed Material Load:**
        - Finer particles lifted by turbulence.
        - Occasional contact with bed.

![[Pasted image 20251030094832.png]]

![[Pasted image 20251030093848.png]]

---
### Morphological Forms

| Morphological form       | Condition                        | Meaning                                                                                                |
| ------------------------ | -------------------------------- | ------------------------------------------------------------------------------------------------------ |
| **Equilibrium state**    | ($G_z = G_T$)                    | Sediment input and transport capacity are balanced — no net erosion or deposition (the bed is stable). |
| **Erosive state**        | ( $G_z < G_T$ )                  | The flow can carry _more_ sediment than is available — it erodes the bed to reach capacity.            |
| **Sedimentation state**  | ( $G_z > G_T$ )                  | The flow carries _more_ sediment than it can transport — deposition occurs.                            |
| **Latent erosive state** | ( $G_z < G_T$ ) but near balance | Slight deficit in sediment load, erosion may begin but is not yet significant.                         |
Where:
- $G_z$ → **Actual sediment transport rate** (what’s currently being moved).
- $G_T$ → **Transport capacity** (maximum load flow can carry).
![[Pasted image 20251030103317.png]]
---
### Bed Shear Stress

The **bed shear stress ($\tau_0$)** represents the **tangential force per unit area** exerted by the flow on the channel bed.  
It controls sediment motion, erosion, and channel stability.
$$\begin{gather}
\tau_0 \cdot p \cdot \Delta x = \rho_w \cdot g \cdot A \cdot \sin\alpha \cdot \Delta x \\
\tau_0 = \rho_w \cdot g \cdot \frac{A}{p} \cdot \sin\alpha = \rho_w \cdot g \cdot r_{hy} \cdot S_E
\\
b \gg h \quad \Rightarrow \quad \tau_0 = \rho \cdot g \cdot h \cdot S_E
\end{gather}
$$

|Symbol|Definition|Units|
|:--|:--|:--|
|$\tau_0$|Bed shear stress|[Pa] or [N/m²]|
|$p$|Wetted perimeter|[m]|
|$\Delta x$|Channel reach length|[m]|
|$\rho_w$|Density of water (≈1000 kg/m³)|[kg/m³]|
|$g$|Acceleration due to gravity (≈9.81)|[m/s²]|
|$A$|Cross-sectional area|[m²]|
|$\alpha$|Channel bed slope angle|[° or rad]|
|$r_{hy}$|Hydraulic radius = $\dfrac{A}{p}$|[m]|
|$S_E$|Energy slope|[–]|
|$b$|Channel width|[m]|
|$h$|Mean water depth|[m]|
|$\rho$|Fluid density|[kg/m³]|

---
### Shear Velocity ($v^*$)

The **shear velocity** is an indirect measure of the flow’s ability to move sediment:

$$ v^* = \sqrt{\frac{\tau_0}{\rho}} = \sqrt{g \cdot r_{hy} \cdot S_E} $$

- Indicates the **intensity of turbulence near the bed**.
- Cannot be measured directly but is fundamental for sediment transport formulas.
- Expressed in [m/s].
---
### Critical Velocity and Critical Shear Stress

Sediment motion depends on both **particle size** and **flow strength**.

- **Too small grains:** Cohesion dominates → difficult to move.
- **Medium grains:** Most mobile → easily entrained.
- **Large grains:** Heavy → resistant to motion.

![[Pasted image 20251030104727.png]]  
_Hjulström diagram_

![[Pasted image 20251030104949.png]]  
_Dou Go-Zen_

![[Pasted image 20251030105040.png]]  
_Shields diagram_

$d_{50}$ = mean grain diameter (used when no detailed distribution is available).

---
# 💡 Questions

- Why does vegetation reduce flow velocity in compound channels?
- What is the main difference between wash load and bed material load?
- What happens when $G_z > G_T$?
- How can the shear velocity ($v^*$) be interpreted physically?
- Why do fine particles resist movement despite their small size?

---
# 🐢 Definitions

**Wash Load:** Fine sediment (<0.0625 mm) carried entirely in suspension, independent of bed processes.  
**Bed Load:** Coarse sediment moving along the bed by rolling, sliding, or saltation.  
**Suspended Load:** Sediment maintained in suspension by turbulence.  
**Bed Shear Stress ($\tau_0$):** Tangential force exerted by flow on the bed surface.  
**Shear Velocity ($v^*$):** Velocity scale related to the intensity of turbulence near the bed.  
**Transport Capacity ($G_T$):** Maximum sediment mass a flow can carry under given hydraulic conditions.  
**Actual Sediment Transport ($G_z$):** Real amount of sediment being transported at a given moment.

---

# 📅 Homework

Revise **Hjulström and Shields diagrams**, focusing on identifying critical shear stress for different sediment sizes.  
Prepare one example estimating $\tau_0$ and $v^*$ for a rectangular channel using real dimensions.



