---
Class: "[[04 Hydrochemistry]]"
Date: 2025-11-03
Last Modified: Monday 3rd November 2025 19:06
---
# Monday 3rd November 2025

# 📒Class Summary

Introduction to **colligative properties** of aqueous solutions — those that depend only on the **number of dissolved particles** and not on their chemical nature. Covered topics include **vapor pressure lowering**, **freezing point depression**, **boiling point elevation**, and **osmotic pressure**.  
We also discussed the **van’t Hoff factor** as a measure of dissociation, the connection between these phenomena, and examples such as the use of **salts in cooling or deicing**.


---
# 📝 Notes

## 2. Properties of Aqueous Solutions

### 🔹 Colligative Properties

Colligative properties are properties of solutions that depend solely on the **number of solute particles** in a solvent — _not on their identity_.  
This means that adding 1 mol of NaCl or 1 mol of glucose affects the solvent similarly if they both contribute the same number of dissolved particles.

Main colligative properties:

- Vapor pressure lowering
- Freezing point depression
- Boiling point elevation
- Osmotic pressure

---
### 🔹 Vapor Pressure Lowering

The **vapor pressure (VP)** of a pure liquid is the pressure exerted by its vapor when in equilibrium with its liquid phase 
When a **non-volatile solute** (like salt) is added, **some surface water molecules are replaced by solute particles**, meaning fewer water molecules can evaporate.  
This results in a **lower vapor pressure**.

For **non-dissociated solutes**, Raoult’s law gives:

$$
x_2 = \frac{p_{01} - p_{1}}{p_{01}}= \frac{\Delta p}{p_{01}}
$$
where

$$
x_2= \frac{n_2}{n_1+n_2}
$$
- $p_{01}​$: vapor pressure of pure solvent
- $p_1$: vapor pressure of solution
- $x_2$​: mole fraction of solute
- $n_1, n_2$​: moles of solvent and solute, respectively

➡️ This relation is valid **only for non-dissociated solutes**, i.e. substances that remain as single molecules in solution (no ionic splitting).

---

### 🔹 van’t Hoff Factor $(i)$

When solutes **dissociate into ions**, each formula unit produces more particles.  
The **van’t Hoff factor $i$** accounts for this:

$$
i = 1 + (v-1)\alpha
$$

where:

- $v$: number of ions formed per solute molecule (e.g. NaCl → 2)
- $\alpha$: degree of dissociation (fraction between 0 and 1)

If fully dissociated ($\alpha = 1$), then $i = v$.

Thus, for dissociating solutes:


$$
x_2= \frac{i\cdot n_2}{n_1+i\cdot n_2}
$$

---

#### Example – CaCl₂ in Water

**Question:** What is the relative lowering of vapor pressure if 1 mol of CaCl₂ is added to 1 L of water? Given:

- M_{H2O} = 18 \, \text{g/mol}
- \rho = 1 \, \text{g/cm}^3
- \alpha = 1

$$\begin{gather}n_{H2O} = \frac{1000}{18} = 55.56 \text{ mol}, \quad i = 3 \\
\frac{\Delta p}{p^0} = \frac{i n_2}{n_1 + i n_2} = \frac{3(1)}{55.56 + 3(1)} = 0.0513\end{gather}$$

➡️ **Relative lowering:** 5.1 %

**Note:**  
“**Dissociates**” means the solute splits into ions in water.  
$\text{CaCl}_2 \rightarrow \text{Ca}^{2+} + 2 \, \text{Cl}^-$→ 3 total particles, so it reduces vapor pressure more than a non-dissociated solute.

---
### 🔹 Phase Diagram Explanation

In the phase diagram, adding a solute shifts the equilibrium lines:

- The **vapor pressure curve** moves downward because solute particles reduce the escaping tendency of solvent molecules.
- The **freezing point** decreases — the system requires a lower temperature for solid–liquid equilibrium.
- The **boiling point** increases — the liquid needs more heat to reach a vapor pressure equal to the external pressure.

Thus, the **liquid phase region broadens** between the freezing and boiling points.

![[Pasted image 20251103200542.png]]![[Pasted image 20251103200551.png]]


---
### 🔹 Freezing Point Depression

When solute is added, ions disrupt ice crystal formation, making freezing more difficult.

For **non-dissociated solutes**:
$$
\Delta T_f = bK_{Kr}
$$

For **dissociated solutes**:
$$
\Delta T_f = i\cdot b \cdot K_{Kr}
$$

General form:
$$
\Delta T_f =  K_{Kr}\sum_i b_i
$$
where:

- $K_{Kr} = -1.86 \, \text{K·kg·mol}^{-1}$ (cryoscopic constant for water)
- $b$: molal concentration
- $i$: van’t Hoff factor

Hence, if 1 mol solute is added to 1 kg of water, the freezing point lowers by **1.86 K** (for ideal, non-dissociated solutes).

---

### 🔹 Boiling Point Elevation

Analogous to freezing point depression, but in the opposite direction:

$$\Delta T_{b} = i \, b \, K_{eb}$$

where  
$K_{eb} = 0.513 \, \text{K·kg·mol}^{-1}$

Adding solute raises the boiling point since the vapor pressure must reach atmospheric pressure at a higher temperature.
#### Example

**Given:** $b = 2 \, \text{mol/kg}, \, i = 2$

$$\begin{gather} 
\Delta T_b = 0.513 \times 2 \times 2 = 2.05 \, K \\
\Delta T_f = -1.86 \times 2 \times 2 = -7.44 \, K
\end{gather}
$$

---
### 🔹 Endothermic Dissolution — Beer Cooling Example 🍺

When **salt (NaCl or CaCl₂)** is added to ice, it lowers the freezing point so the ice melts.  
Melting requires **absorbing heat** from the surroundings (endothermic), cooling nearby bottles.  
CaCl₂ is more efficient because each molecule produces **3 ions**, enhancing the effect.

---

### 🔹 Osmosis and Osmotic Pressure

**Osmosis**: movement of solvent through a **semipermeable membrane** into a solution with higher solute concentration.  
The pressure required to stop this flow is the **osmotic pressure ($\pi$)**.
![[Pasted image 20251103205157.png]]
>Works for gases as well

For non-dissociated solutes:
$$\pi = cRT$$
For dissociated solutes:
$$\pi = i \, cRT$$
General form:
$$\pi = RT \sum_i c_i$$
where:

- $\pi$: osmotic pressure
- $R = 0.083145\, \text{bar·L·K}^{-1}\text{·mol}^{-1}$
- $T$: absolute temperature (K)
- $c$: molar concentration
---
### 🔹 Reverse Osmosis

If **external pressure** > osmotic pressure, solvent is forced out of the solution — used in **desalination** and **purification** systems.
![[Pasted image 20251103205527.png]]
Higher salt concentration → higher osmotic pressure → more pressure required.
![[Pasted image 20251103205651.png]]
#### 🔹 Example – Osmotic Pressure of Seawater

**Question:**  
Estimate the **osmotic pressure** ($\pi$) of seawater at 25 °C, assuming it contains the following ions:

|Ion|Concentration (mmol L⁻¹)|
|---|---|
|Na⁺|479.7|
|Mg²⁺|54.4|
|Cl⁻|559.5|
|SO₄²⁻|28.9|

Given:  
$R = 0.083145\ \text{bar·L·K}^{-1}\text{·mol}^{-1}$, $T = 298\ \text{K}$

---

**Solution:**

1. Convert all ionic concentrations to mol/L and sum:
$$\sum_i c_i = 0.4797 + 0.0544 + 0.5595 + 0.0289 = 1.1225\ \text{mol·L}^{-1}i$$

2. Apply the osmotic pressure equation for ideal, dissociated solutes:
$$\pi = R\,T\,\sum_i c_i$$

3. Substitute the values:
$$\pi = 0.083145 \times 298 \times 1.1225 = 27.76\ \text{bar}$$

---

✅ **Answer:**  
The osmotic pressure of seawater is **$\pi = 27.76\ \text{bar}$**.

> The high value results from the large number of **dissociated ions** in seawater, which increases the total number of particles and therefore the osmotic pressure.


> For osmotic pressure (no phase transition), use **molar** concentration ($c$).  
> For freezing/boiling (phase transitions), use **molal** concentration ($b$).

---

### 🔹 Osmotic Coefficient

In non-ideal solutions, real osmotic pressure is lower than ideal predictions.  
The **osmotic coefficient ($\theta$)** expresses this deviation:

$$\theta = \frac{\pi_{real}}{\pi_{ideal}}$$

For seawater with 35 g/kg:  
$\theta = 0.90$ (0 °C) – $0.91$ (30 °C)

---

## Summary of Colligative Properties

|Property|Expression (ideal)|Constant|Effect|
|---|---|---|---|
|Vapor pressure lowering|$\frac{\Delta p}{p^0} = x_2$|—|↓ VP|
|Freezing point depression|$\Delta T_f = i,b,K_{Kr}$|$K_{Kr} = -1.86$|↓ $T_f$|
|Boiling point elevation|$\Delta T_b = i,b,K_{eb}$|$K_{eb} = 0.513$|↑ $T_b$|
|Osmotic pressure|$\pi = i,cRT$|—|↑ $\pi$|

---

# 💡 Key Takeaways

- Colligative properties depend **only** on the number of solute particles, not their type.
- Ionic compounds increase effect magnitude via the **van’t Hoff factor ($i$)**.
- Dissociation produces more particles → stronger changes in VP, $T_f$, and $T_b$.
- These relationships hold for **ideal dilute solutions**; deviations appear in concentrated systems.
- Osmotic pressure and gas law share the same mathematical structure.
- Reverse osmosis applies the concept in reverse for **desalination**.

---

# 💭 Questions

1. Sketch the changes in vapor pressure, boiling point, and freezing point in a phase diagram for an aqueous solution.
2. How to calculate the relative changes of vapor pressure, boiling point, freezing point, and osmotic pressure depending on molal concentration, both with and without dissociation?
3. Why does CaCl₂ cool more efficiently than NaCl when mixed with ice?
4. Explain why $\pi = cRT$ is analogous to the ideal gas law.

---

# 🐢 Definitions

- **Colligative properties:** Solution properties depending only on solute particle number.
- **Vapor pressure lowering:** Decrease in solvent vapor pressure due to solute presence.
- **Freezing point depression:** Lowering of freezing temperature by solute addition.
- **Boiling point elevation:** Increase in boiling temperature by solute addition.
- **Osmosis:** Flow of solvent through a semipermeable membrane toward higher solute concentration.
- **Osmotic pressure ($\pi$):** Pressure needed to stop osmotic flow.
- **Reverse osmosis:** Process using pressure > $\pi$ to remove solvent from a solution.
- **van’t Hoff factor ($i$):** Accounts for number of particles from solute dissociation.
- **Degree of dissociation ($\alpha$):** Fraction of solute molecules that dissociate into ions.
- **Cryoscopic constant ($K_{Kr}$):** Proportionality constant for freezing point depression.
- **Ebullioscopic constant ($K_{eb}$):** Proportionality constant for boiling point elevation.
- **Osmotic coefficient ($\theta$):** Ratio $\pi_{real}/\pi_{ideal}$ for non-ideal solutions.

---

# 📅 Homework

- Solve Exercise 2 and 3 numerically.
- Sketch the full phase diagram showing how $T_f$ and $T_b$ change with solute concentration.
- Review relationships between molal and molar concentrations for different phase transition contexts.
