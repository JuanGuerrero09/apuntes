---
Class: "[[04 Hydrochemistry]]"
Date: 2026-01-11
Last Modified: Sunday 11th January 2026 19:12
---
# 📅 Monday 5th January 2026

# 📒Class Summary

Today's session covered **Precipitation and Dissolution Equilibria** in aquatic systems. We explored the qualitative "Rules of Thumb" for solubility and established the mathematical relationship between the **Solubility Product Constant ($K_{sp}$)** and **Molar Solubility ($c_s$)**. We also analyzed how secondary factors—specifically **Ionic Strength** and **Side Reactions (pH)**—influence the actual solubility of minerals in complex water matrices.

---
# 📝 Notes

## Reaction Equilibria in Aquatic Systems 

### Precipitation and Dissolution

Dissolution occurs when a solid solute dissociates into ions within a solvent. Precipitation is the phase separation where dissolved ions unite to reform a solid lattice.

#### Relevance of Dissolution / Precipitation Equilibria

- **Hydrosphere**: These processes act as major input/output pathways for water constituents such as calcium (hardness), heavy metals, and carbonates.
- **Water Treatment**: Used for targeted removal, such as eliminating phosphates or heavy metals through chemical precipitation.

#### Rules of thumb to estimate the solubility (qualitative)

- **Well Soluble**: Almost all Alkali metals ($Li, Na, K$, etc.), $NH_4^+$, and Nitrates ($NO_3^-$). Most Chlorides and Sulfates (with exceptions below).
- **Poorly Soluble**:
    - **Halides**: $Ag^+, Pb^{2+}, Hg^+$ halides and $CuCl_2$.
    - **Fluorides**: $BaF_2, MgF_2, PbF_2$.
    - **Sulfates**: $CaSO_4, BaSO_4, PbSO_4, SrSO_4$.
    - **Hydroxides**: Transition metals ($Fe, Co$) and $Al$.
    - **Others**: Most Sulfides, Carbonates ($CaCO_3$, etc.), Chromates, and Phosphates.

#### Solubility Product vs Solubility 

- **Solubility Product ($K_{sp}$)**: A thermodynamic equilibrium constant specific to temperature and pressure. It represents the mathematical limit of the ion product.
- **Molar Solubility ($c_s$)**: The actual concentration of a solute in a saturated solution. It is highly sensitive to side reactions and other water constituents.


**Solubility Product Equation**

$$K^*_{sp} = a^m(C^{n+}) \cdot a^n(A^{m-}) \qquad pK^*_{sp} = -\lg K^*_{sp}$$

**Being:**

- **C:** Cation
- **A:** Anion
- **m and n:** Stoichiometric factors
- **$K_{sp}$:** Thermodynamic equilibrium constant
- **$a$:** Activity

**Solubility Products of Selected Solids**

|**Solid**|**pKsp∗​**|**Solid**|**pKsp∗​**|
|---|---|---|---|
|$\text{CaSO}_4$|4.3|$\text{Fe(OH)}_2$|16.3|
|$\text{CaHPO}_4$|6.7|$\text{FeS}$|18.1|
|$\text{CaCO}_3$|8.5|$\text{FePO}_4$|21.9|
|$\text{MgCO}_3$|5.2|$\text{Fe(OH)}_3$|33.7|
|$\text{FeCO}_3$|10.5|$\text{Al(OH)}_3$|38.7|

**Rule of Thumb:**

- **Poorly soluble:** $K^*_{sp} \leq 1 \iff pK^*_{sp} \geq 0$
- **Well soluble:** $K^*_{sp} > 1 \iff pK^*_{sp} < 0$

---


**Exercise 1**

**Statement:** Compute the $\text{Ca}^{2+}$ and $\text{F}^-$ ions concentration of a saturated solution. How many grams of $\text{CaF}_2$ ($M=78\text{ g/mol}$) are present in $100\text{ mL}$ of this solution at $25^\circ\text{C}$? $K_{sp} = 3.9 \cdot 10^{-11}\text{ mol}^3/\text{L}^3$ ($25^\circ\text{C}$).

**Assumptions:** $c(\text{Ca}^{2+}) = 0.5 \cdot c(\text{F}^-)$ and $c_s = \text{solubility}$.**Parameters:** $m = 1$, $n = 2$.

**Calculation:**

$$c_s = \sqrt[3]{\frac{K_{sp}}{4}} = \sqrt[3]{\frac{3.9 \cdot 10^{-11}}{4}} = 0.000213\text{ mol/L}$$

- **Mass concentration:** $0.000213\text{ mol/L} \cdot 78\text{ g/mol} = 0.0166\text{ g/L}$
    
- **Mass in 100 mL:** $0.0166\text{ g/L} \cdot 0.1\text{ L} = \mathbf{0.001666\text{ g}}$
    
- **Ion concentrations:** $c(\text{Ca}^{2+}) = c_s = 2.13 \cdot 10^{-4}\text{ mol/L}$; $c(\text{F}^-) = 2c_s = 4.26 \cdot 10^{-4}\text{ mol/L}$.


**Exercise 2**

**Statement:** Groundwater can contain $\text{Fe}^{2+}$ and $\text{Fe}^{3+}$ ions of geogenic origin. In waterworks drinking water is treated to precipitate such ions. Which pH is needed for the precipitation to reach Fe-concentrations of below $0.1\text{ mg/L}$? Based on your results: explain why in waterworks $\text{Fe}^{2+}$ oxidized with oxygen to $\text{Fe}^{3+}$ and afterwards precipitated.

- $K_{sp} (\text{Fe(OH)}_2) = 5 \cdot 10^{-15}\text{ mol}^3/\text{L}^3$
- $K_{sp} (\text{Fe(OH)}_3) = 6 \cdot 10^{-38}\text{ mol}^4/\text{L}^4$
- Atomic mass $\text{Fe} = 55.8\text{ g/mol}$
$$c_s = \sqrt[m+n]{\frac{K_{sp}}{m^m \cdot n^n}}$$

! DONT SOLVE IT

---
#### Influence of Ionic Strength

When other non-participating salts are present, the **Ionic Strength ($I$)** increases. This decreases the **activity coefficients ($\gamma$)** to $< 1$, effectively "shielding" the ions and allowing _more_ solid to dissolve to reach the thermodynamic $K_{sp}$.

$$c_s = \sqrt{\frac{K^*_{sp}}{\gamma(C) \cdot \gamma(A)}}$$
Reminder: Calculation of activity coefficients via Güntelberg-Equation 

---
**Influence of Side Reactions**

**Example: Solubility of $\text{CaCO}_3$ at pH = 8.5**

- **Main Reaction:** $\text{CaCO}_3(s) \rightleftharpoons \text{Ca}^{2+} + \text{CO}_3^{2-}$
- **Side Reaction:** $\text{HCO}_3^- \rightleftharpoons \text{CO}_3^{2-} + \text{H}^+$

**Expansion and Explanation:** In natural aquatic systems, the solubility of a mineral is rarely determined by its main dissolution reaction alone. Side reactions—specifically the protonation of the anion—can significantly increase solubility.

1. **Le Chatelier’s Principle:** When the pH is lowered (acidity increased), the high concentration of $\text{H}^+$ ions drives the side reaction to the left, consuming $\text{CO}_3^{2-}$ to form $\text{HCO}_3^-$.
2. **Equilibrium Shift:** Because the $\text{CO}_3^{2-}$ is being "pulled away" by the protons, the main reaction must shift to the right (dissolving more solid $\text{CaCO}_3$) to restore the equilibrium constant $K_{sp}$.
3. **Result:** The solubility of $\text{CaCO}_3$ is **higher at pH 8.5** than at pH 12. At pH 12, protons are scarce, so the carbonate remains as $\text{CO}_3^{2-}$, and no additional solid dissolves.

$$c_s = \sqrt{K_{sp} \left( 1 + \frac{c(\text{H}^+)}{K_a} \right)} \qquad c(\text{H}^+)\uparrow \rightarrow c_s \uparrow$$

$$
c_s = \sqrt{K_{sp}(1+\frac{c(H^+)}{K_a})} \qquad c(H^+)\uparrow\rightarrow c_s \uparrow
$$
![[Pasted image 20260122160325.png]]

Without side reaction (pH >> pKa): 

cs 4.6 10^-4 vs 5.74 *10^-5 

---

**Assessment of Saturation State**

**Principle:** In analogy to the definition of the solubility product $K_{sp}$ based on the equilibrium concentrations ($c_{eq}$), an ion product $Q$ of the actual (measured) concentrations is calculated.

$$Q = c_{exp}(\text{C}^{n+}) \cdot c_{exp}(\text{A}^{m-})$$

$$K_{sp} = c_{eq}(\text{C}^{n+}) \cdot c_{eq}(\text{A}^{m-})$$

**Explanation of $c_{exp}$:**$c_{exp}$ represents the **experimental or measured concentration** currently found in the water sample at a specific moment in time. Unlike $c_{eq}$, which is the theoretical concentration at perfect equilibrium, $c_{exp}$ tells us the real-world state of the water. By plugging these measured values into the $Q$ formula, we can determine if the water is currently capable of dissolving more mineral or if it is about to precipitate.

**Saturation States:**

- $Q > K_{sp} \Rightarrow$ The solution is **supersaturated**. The solid will precipitate.
- $Q = K_{sp} \Rightarrow$ The solution is in **equilibrium** with the solid.
- $Q < K_{sp} \Rightarrow$ The solution is **undersaturated**. If the solid is in contact with the water, it will be dissolved.

---

**Exercise 3**

**Statement:** Does the mixture precipitate? $10\text{ mL}$ of silver nitrate solution ($c(\text{AgNO}_3) = 0.01\text{ mol/L}$) is mixed with $10\text{ mL}$ of sodium chloride solution ($c(\text{NaCl}) = 0.0001\text{ mol/L}$). $K_{sp} \text{ AgCl} = 1.7 \cdot 10^{-10}\text{ mol}^2/\text{L}^2$.

**Hint:** If you merge two volumes, the concentration will change (**dilution**)! Since the volume doubles, the concentrations are halved ($c(\text{Ag}^+) = 0.005$; $c(\text{Cl}^-) = 0.00005$).

**Result:**

- $K_{sp} = 1.7 \cdot 10^{-10}\text{ mol}^2/\text{L}^2$
- $Q = (0.005) \cdot (0.00005) = 2.5 \cdot 10^{-7}\text{ mol}^2/\text{L}^2$
- $Q > K_{sp} \Rightarrow$ **Supersaturated solution; precipitation occurs.**

Hint: if you merge to volumes the concentration will change (dilution)! Result:  Ksp= 1.7*10-10 mol2/L2 Q = 2.5*10-7 mol2/L2 Q> Ksp; supersaturated solution 

---
# 💡 Key Takeaways

- **Qualitative vs Quantitative**: Use Rules of Thumb for quick estimates, but $K_{sp}$ for exact limits.
- **Stoichiometry matters**: In $CaF_2$, the "2" in the formula is squared in the $K_{sp}$ expression ($2s$ becomes $4s^2$).
- **pH Influence**: Protons act as a "sink" for basic anions (like $CO_3^{2-}$), making minerals more soluble in acidic water.
- **Saturation Index**: $Q$ is the "snapshot" of current conditions; $K_{sp}$ is the "target" equilibrium.

---
# 💭 Questions


- **Name two examples for precipitation/dissolution processes in the hydrosphere and during water treatment.**
    
    - _Hydrosphere_: Weathering of calcite rocks ($CaCO_3$) or formation of stalactites.
        
    - _Treatment_: Phosphate removal in wastewater or softening (removing $Ca^{2+}$).
        
- **Estimate if certain salts are rather well-soluble or not soluble in water with the rules of thumb (underlined examples).**
    
    - Refer to the "Rules of Thumb" section (e.g., $AgNO_3$ is soluble, $AgCl$ is not).
        
- **By using the Law of mass action derive the equations to calculate the solubility of solids with the stoichiometry CA and $CA_2$.**
    
    - $CA \rightarrow c_s = \sqrt{K_{sp}}$; $CA_2 \rightarrow c_s = \sqrt[3]{K_{sp}/4}$.
        
- **Describe qualitatively and quantitatively the influence on solubility of solids if other ions are present.**
    
    - Increasing ionic strength reduces activity coefficients, which increases molar solubility ($c_s$).
        
- **Describe qualitatively and quantitatively the influence of side reaction on the solubility of solids.**
    
    - If a product ion (like $CO_3^{2-}$) is consumed by a side reaction (like protonation), more solid must dissolve to maintain equilibrium.

---
# 🐢 Definitions

- **$K_{sp}$ (Solubility Product)**: The equilibrium constant for a solid dissolving in water.
- **$c_s$ (Molar Solubility)**: The concentration of a substance in a saturated solution.
- **Ion Product ($Q$)**: The product of actual ion concentrations measured in a solution at any given moment.
- **Ionic Strength ($I$)**: A measure of the total concentration of ions in solution, affecting the effective activity of each ion.

---
# 📅 Homework



