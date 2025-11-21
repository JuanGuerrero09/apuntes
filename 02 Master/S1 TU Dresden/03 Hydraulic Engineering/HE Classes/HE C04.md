---
Class: "[[03 Hydraulic Engineering]]"
Date: 2025-11-06
Last Modified: Thursday 6th November 2025 09:24
---
# Thursday 6th November 2025

# 📒Class Summary

Fundamentals of sediment transport: initiation of motion, critical shear stress, the Shields parameter, sediment size classification, bed-load transport formulas, bed forms, and scour processes around hydraulic structures.

---
# 📝 Notes

## Sediment Transport

Sediment transport describes how particles on the channel bed (sand, gravel, silt) begin to move, under which flow conditions motion occurs, and how bed forms and erosion patterns evolve.

The driving force is the **bed shear stress**, which depends on the flow energy:$$
\tau_0 = \rho_w g \frac{A}{P}\sin\alpha = \rho_w g\, r_{hy}\, S_E$$
where:
- $\rho_w$ = water density
- $g$ = gravity
- $A$ = wetted area
- $P$ = wetted perimeter
- $r_{hy}$ = hydraulic radius
- $S_E$ = energy slope

---

### Sediment Classes

Sediments originate from mechanical weathering of rock.

- **Very coarse soil** — boulders, cobbles, coarse gravels
- **Coarse soil (granular)** — sands and gravels
- **Fine soil (cohesive)** — silts and clays dominated by electrochemical bonding

---
### Critical Shear Stress

The **critical shear stress** is the minimum shear needed to initiate particle motion.  
It depends on grain size, shape, density, cohesion, and flow regime.

Two dimensionless groups are relevant:

- **Sedimentological Froude Number** → indicates interaction of flow velocity with bed-form wave propagation.

- **Sedimentological Reynolds Number** → determines whether viscosity or turbulence dominates at the grain scale.    

---
### Bed Load Motion

Bed load motion occurs when the **Shields parameter** $\tau_*$ exceeds its critical value:
$$\tau_* = \frac{u_*^2}{(s-1)g d_S} = \frac{\tau_0}{(\rho_s - \rho_w) g\, d_S}$$
where:

- $u_*$ = shear velocity
- $s = \rho_s / \rho_w$ = relative density of sediment
- $d_S$ = characteristic grain size

Condition for motion:

$$\tau_* > (\tau_*)_c$$
#### Explanation of the Shields Diagram

The **Shields diagram** is a fundamental tool to determine the onset of sediment motion.  
It relates:

- **x-axis:** particle-scale Reynolds number
$$Re_* = \frac{u_* d}{\nu}​$$
- **y-axis:** Shields parameter $\tau_*$

The curve $(\tau_c, Re)$ marks the threshold for incipient motion.

Interpretation:

- Fine sediments → viscous effects dominate → higher $(\tau_*)_c$.    
- Coarse sediments → turbulent regime → $(\tau_*)_c$ approaches ~0.045 (almost constant).
- If $\tau_* < (\tau_*)_c$ → **no movement**.
- If $\tau_* > (\tau_*)_c$ → **sediment begins to move**, accelerating as shear increases.
---
### Sediment Transport Curve

**Meyer–Peter Müller (MPM)**

Bed-load transport rate:

$$
m_G = \frac{8}{\sqrt{\rho_w}} \cdot \frac{\rho_s}{(\rho_s-\rho_w)\cdot g}\cdot (\rho_w\cdot g \cdot r_{hy}\cdot I - 0.047 \cdot (\rho_s-\rho_w) \cdot g \cdot d_{65})^{3/2}
$$
Interpretation:

- If the term in parentheses is **positive**, there is excess shear → **sediment moves**.
- If the term is **negative**, the square root is undefined → **no transport**.

![[Pasted image 20251106095411.png]]

The four diagrams shown represent:

1. **Discharge–duration curve**
2. **Discharge–stage curve**
3. **Sediment transport–duration curve**
4. **Sediment transport curve**

Example:

> Sediment transported at $Q = 200\ \mathrm{m^3/s}$ → approx. **2 kg/s** (from the supplied curve).

---
### Characteristic Sediment Diameter

Diámetro característico ponderado:

$$d_{ch} = \frac{\sum_{i=1}^n(\Delta p_i \cdot d_{k,i})}{100\%}$$
---
### Bed Shear Stress ↔ Bed Form

Las formas del fondo dependen de la tensión de arrastre:

- Flat
- Ripples
- Ripples on dunes
- Dunes
- Flat dunes
- Flat bottom
- Antidunes
![[Pasted image 20251106100926.png]]
> _Ripples only appear if $d_{50}$ is fine (sand)._

---
### Influence of Geometric Changes on Sediment Transport

Geometric changes in the channel alter shear stress, which affects sediment transport, bar formation (sandbanks), and scour patterns.

![[Pasted image 20251106102852.png]]

- **Sandbank for LWL** → formation of shallow bars during low-water levels
- **Scour** → erosion due to local increases in flow velocity or turbulence
---
### Scouring at Piers/Bridges
Types of scour:

- **Local scour** – erosion occurring directly around bridge piers or abutments due to flow acceleration and vortex formation. This is the most common scour mechanism.
    - **Clear-water scour** – no sediment from upstream enters the scour zone.
    - **Live-bed scour** – sediment is continuously supplied to the scour zone from upstream.
- **Contraction scour** – erosion caused by narrowing of a river or channel, which increases the flow velocity and the sediment transport capacity.
- **General scour** – overall degradation of the riverbed across the bridge site, often due to long-term or natural changes in the flow regime.

---
#### Calculation Approach

$$d_S = K_{yW} K_I K_d K_s K_\theta K_G$$
where:

- $d_S$ → depth of scour
- $K_{yW}$ → parameter for the effect of water depth
- $K_I$ → parameter for flow intensity (based on $v_{crit}$)
- $K_d$ → parameter accounting for sediment particle characteristics
- $K_s$ → parameter for pier shape
- $K_\theta$ → parameter for flow angle
- $K_G$ → parameter for geometrical effects of the pier

---
# 💡 Key Takeaways

- Sediment motion begins when the Shields parameter exceeds its critical value $(\tau_*)_c$.
- The Shields diagram is fundamental to determining initiation of motion and interpreting sediment stability.
- Transport formulas like Meyer-Peter Müller estimate bed-load based on the **excess shear stress** above the critical threshold.
- Bed shear stress controls both sediment motion and bedform development (ripples → dunes → antidunes).
- Scour around piers is a major structural risk and must be evaluated through correction factors representing flow intensity, sediment, geometry, and flow angle.

---

# 💭 Questions

- How does the Shields parameter physically represent the competition between fluid forces and particle weight?
    
- Why does $(\tau_*)_c$ decrease for larger grain sizes in turbulent regimes?
    
- What geomorphological processes explain the transition from dunes to antidunes?
    
- Under what hydraulic conditions does clear-water scour transition to live-bed scour?
    
- How does the contraction of a river section amplify scour depth?

---
# 🐢 Definitions

- **Bed shear stress ($\tau_0$)**: Force per unit area exerted by the flow on the bed.
    
- **Shields parameter ($\tau_*$)**: Dimensionless shear stress comparing bed shear to submerged particle weight.
    
- **Critical shear stress ($\tau_c$)**: Minimum stress needed to initiate particle movement.
    
- **Bed load**: Sediment moving in contact with the bed (rolling, sliding, saltation).
    
- **Scour**: Localized erosion caused by accelerated flow or vortices.
    
- **Dunes/Ripples/Antidunes**: Bedforms generated under different flow regimes and shear stresses.
---
# 📅 Homework

- Review Shields diagram for a given sediment size distribution and compute $(\tau_*)_c$.
    
- Apply Meyer-Peter Müller formula for three different hydraulic radii and compare the resulting transport rates.

