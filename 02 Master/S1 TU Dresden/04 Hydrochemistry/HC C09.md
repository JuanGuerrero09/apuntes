---
Class: "[[04 Hydrochemistry]]"
Date: 2025-12-08
Last Modified: Monday 8th December 2025 10:26
---
# Monday 8th December 2025

# 📒Class Summary

Today's session focused on **Reaction Equilibria in Aquatic Systems**, specifically the mathematical and graphical representation of **Acid/Base Speciation**. We covered the calculation of pH for various acid/base strengths, the derivation of the degree of protolysis ($\alpha$), and the critical role of the **Carbonic Acid System** as the primary buffer and indicator of neutralizing capacity in natural waters.

---

# 📝 Notes

## Reaction Equilibria in Aquatic Systems

### Acid/Base Equilibria

This cheat sheet organizes the complex logic of aquatic pH calculations into a "decision tree" format. In hydrochemistry, the challenge isn't the math itself, but choosing the right simplified model based on the "personality" (strength) of the chemical involved.

---

#### 📑 pH Calculation Cheat Sheet

##### 1. The Decision Tree

Before calculating, check the acid/base strength ($\text{pK}_\text{a}$) and concentration ($\text{C}_0$).

|**Species Type**|**Range/Criteria**|**Master Formula**|
|---|---|---|
|**Very Strong Acid**|$\text{pK}_\text{a} < -1.74$|$\text{pH} = -\lg C_0$|
|**Strong Acid**|$\text{pK}_\text{a} \in [-1.74, 4.5]$|$c(\text{H}^+) = -\frac{K_a}{2} + \sqrt{\frac{K_a^2}{4} + K_a C_0}$|
|**Weak Acid**|$\text{pK}_\text{a} > 4.5$|$\text{pH} = 0.5(\text{pK}_\text{a} - \lg C_0)$|
|**Very Strong Base**|$\text{pK}_\text{b} < -1.74$|$\text{pOH} = -\lg C_0 \rightarrow \text{pH} = 14 - \text{pOH}$|
|**Strong Base**|$\text{pK}_\text{b} \in [-1.74, 4.5]$|$c(\text{OH}^-) = -\frac{K_b}{2} + \sqrt{\frac{K_b^2}{4} + K_b C_0}$|
|**Weak Base**|$\text{pK}_\text{b} > 4.5$|$\text{pOH} = 0.5(\text{pK}_\text{b} - \lg C_0)$|
|**Buffer System**|Acid + Conjugate Base|$\text{pH} = \text{pK}_\text{a} + \lg \frac{c(\text{Base})}{c(\text{Acid})}$|

---

##### 2. Hydrolysis of Salts

To find the pH of a salt, identify which ion is the "active" conjugate of a weak species.

- **Acidic Salt (e.g., $\text{NH}_4\text{Cl}$):** Use the **Weak Acid** formula with the $\text{pK}_\text{a}$ of the cation ($\text{NH}_4^+$).
    
- **Basic Salt (e.g., $\text{NaCH}_3\text{COO}$):** Use the **Weak Base** formula with the $\text{pK}_\text{b}$ of the anion ($\text{CH}_3\text{COO}^-$).
    
- **Mixed Salt (Weak Acid + Weak Base):**
    
    $$\text{pH} = \frac{1}{2} (\text{pK}_{\text{a, acid}} + \text{pK}_{\text{a, conj. acid}})$$
    

---

##### 3. Buffer Additions (Neutralization)

Buffers resist change by converting strong additions into weak conjugates.

- **Adding Strong Acid ($c_{\text{H}^+}$):**
    
    $$\text{pH}_{\text{new}} = \text{pK}_\text{a} + \lg \frac{c_{\text{Base}} - c_{\text{H}^+}}{c_{\text{Acid}} + c_{\text{H}^+}}$$
    
- **Adding Strong Base ($c_{\text{OH}^-}$):**
    
    $$\text{pH}_{\text{new}} = \text{pK}_\text{a} + \lg \frac{c_{\text{Base}} + c_{\text{OH}^-}}{c_{\text{Acid}} - c_{\text{OH}^-}}$$
    

---

### Degree of protolysis $\alpha$ and pH

Protolysis, or a protolytic reaction, is a chemical reaction involving the transfer of a proton ($H^+$) from an acid to a base.

Monoprotic acid -> $HA \rightleftharpoons H^+ + A^-$

Degree of protolysis $\alpha$

$$\alpha = \frac{c(A^-)}{c_0(acid)} = \frac{c(A^-)}{c(HA)+c(A^-)}$$

The degree of protolysis $\alpha$ can be deducted from the $c(A^-)/c_0(acid)$ to:

$$\alpha = \frac{1}{10^{(pK_a-pH)}+1}$$

The degree of protolysis depends on the pH value. The above equation can be used to find the species distribution of an acid/base pair as a function of pH, also referred to as **acid/base speciation**.

#### Species distribution diagrams or speciation diagrams

With the equation of $\alpha$ is possible to see the tendency of the fraction $f$ of composite reactions. In the image $NH_4^+ \rightleftharpoons H^+ + NH_3$ with a $pK_a = 9.25$ shows that the equilibrium ($NH_4^+ = NH_3$) is where $pH = pK_a$ and the fraction of the composites is obtained by $\alpha$ and $1 - \alpha$.

![[Pasted image 20260122132610.png]]

**Material balance:** In aquatic chemistry, material balance is a fundamental accounting principle where the total analytical concentration of a substance ($c_{total}$) must equal the sum of the concentrations of all its individual chemical species present in the solution.

Species distribution of diprotic acid/base systems:

$$c_{total} = c(H_2A) + c(HA^-) + c(A^{2-})$$

$$c_{total} = c(H_2A) (1 + \frac{K_{a1}}{c(H^+)}+\frac{K_{a1}K_{a2}}{c^2(H^+)})$$

Speciation of carbonic acid

Material balance:

$$c_{total} = c(DIC) = c(CO_2)_{aq} + c(HCO^-_3) + c(CO_3^{2-})$$

where **DIC** = Dissolved inorganic carbon.

Carbon dioxide is an essential part of the biogeochemical carbon cycle.

- $CO_2(aq)$ is also related to the dissolution/precipitation of the frequently occurring mineral calcite ($CaCO_3$) within the calco–carbonic equilibrium.
    
- Hydrogencarbonate (bicarbonate), belongs to the major ions in natural waters. It is often the anion with the highest concentration.1
    
- Carbonic acid and its dissociation products act as buffer in aquatic systems.2
    

Carbonic acid/hydrogencarbonate/carbonate system3

From the material balance:4

$$f(CO_2 ) = \frac{c(CO_2)}{c(DIC)} = \frac{1}{1 + \frac{K_{a1}}{c(H^+)}+\frac{K_{a1}K_{a2}}{c^2(H^+)}}$$

$$f(HCO_3^- ) = \frac{c(HCO_3^-)}{c(DIC)} = \frac{1}{\frac{c(H^+)}{K_{a1}}+1+\frac{K_{a2}}{c(H^+)}}$$

$$f(CO_3^{2-} ) = \frac{c(CO_3^{2-})}{c(DIC)} = \frac{1}{\frac{c^2(H^+)}{K_{a1}K_{a2}}+\frac{c(H^+)}{K_{a2}}+1}$$

$CO_2(aq) + H_2O \rightleftharpoons H^+ + HCO_3^-$ / $HCO_3^- \rightleftharpoons H^+ + CO_3^{2-}$

$pK_{a1} = 6.4$ | $pK_{a2} = 10.3$

![[Pasted image 20260122134815.png]]

#### Acid and base titration

In practice, the absolute concentration of the carbonic acid species is usually determined by acid/base titration (if no other acid/base systems contribute significantly to the $H^+$ or $OH^-$ consumption).

- **Titrant or titrator** with known concentration.
    
- **Analyte (titrand)** with unknown concentration + color indicator.
    
- **At the endpoint:** $n(analyte) = n(titrator) \cdot Z$
    
    - $n$ = substance amount $[mol]$.
        
    - $Z$ = mol ratio of the analyte and the reactant (titrator) which results from the chemical equation.
        

The titration endpoints at $pH = 4.3$ and $8.2$ are defined on the basis of the carbonic acid system.

- Titration endpoint $pH = 4.3$ represents the reference state of a $CO_2$ solution.
    
- Titration endpoint $pH = 8.2$ represents the reference state of a $NaHCO_3$ solution.
    

#### Acid and Base Neutralizing Capacities

- **Acid Neutralizing Capacity (ANC)** = Amount of $H^+$ (mostly $HCl$), that is necessary to bring the water to a defined pH (unit: $mmol/L$). Examples: $ANC_{4.3}$ and $ANC_{8.2}$.
    
- **Base Neutralizing Capacity (BNC)** = Amount of $OH^-$ (mostly $NaOH$), that is necessary to bring the water to a defined pH (unit: $mmol/L$). Examples: $BNC_{4.3}$ and $BNC_{8.2}$.
    

General equations for the calculation of the concentrations of the carbonic acid species:

- $c(CO_2)_{aq} = BNC_{8.2} - c(H^+)$
    
- $c(HCO_3^-) = ANC_{4.3} – 2 \cdot c(CO_3^{2-}) - c(OH^-)$
    
- $c(CO_3^{2-}) = ANC_{8.2} - c(OH^-)$
    

---

# 💡 Key Takeaways

- **Decision Tree Logic**: Choosing the correct formula for pH calculations depends entirely on species strength ($pK_a$) and initial concentration ($C_0$).
    
- **Alpha and Speciation**: The degree of protolysis $\alpha$ is the mathematical bridge between solution pH and the ratio of conjugate species; $pH = pK_a$ is the critical equilibrium point where concentrations are equal.
    
- **DIC and Buffering**: The Carbonic Acid system is the primary pH regulator in the hydrosphere; $HCO_3^-$ is the dominant species in most natural waters and provides high buffering capacity.
    
- **Titration Benchmarks**: $pH$ 4.3 (the $CO_2$ equivalence point) and $pH$ 8.2 (the $HCO_3^-$ equivalence point) are the standard reference states for measuring the capacity of water to resist changes in acidity or alkalinity.
    

---

# 💭 Questions

- **How can the concentration ratio of a given monoprotic and diprotic conjugate acid/base pair be calculated at a defined pH? Explain the resulting relationship between the degree of protolysis and the solution's pH for a monoprotic system.**
    
    - By calculation of the fraction rate by using the alpha value ($\alpha = \frac{1}{10^{(pK_a-pH)}+1}$). For monoprotic systems, when $pH < pK_a$, the acid form ($HA$) dominates; when $pH > pK_a$, the base form ($A^-$) dominates.
        
- **Describe the relevance and utility of acid/base speciation diagrams. Detail the primary features of the speciation diagrams for both the ammonium/ammonia ($\text{NH}_4^+/\text{NH}_3$) system and the carbonic acid ($\text{H}_2\text{CO}_3$) system, including the dominant species at different pH levels.**
    
    - The utility of those diagrams is that graphically shows the state of a acid base pair in determined pH condition. For $NH_4^+/NH_3$, $NH_4^+$ dominates below $pH$ 9.25. For the carbonic acid system, $CO_2$ dominates below $pH$ 6.4, $HCO_3^-$ dominates between $pH$ 6.4 and 10.3, and $CO_3^{2-}$ dominates above $pH$ 10.3.
        
- **Explain the important role of the bicarbonate ion ($\text{HCO}_3^-$) in maintaining the pH and buffering capacity of most natural waters.**
    
    - Bicarbonate ($HCO_3^-$) serves as the primary buffer by neutralizing added acids (forming $CO_2$ and $H_2O$) or bases (forming $CO_3^{2-}$), keeping the pH stable in the 6–9 range typical of natural aquatic systems.
        
- **Define the terms Acid Neutralizing Capacity ($\text{ANC}$) and Base Neutralizing Capacity ($\text{BNC}$). Which analytical method is typically used to determine these parameters in a water sample?**
    
    - ANC is the capacity of water to neutralize acids; BNC is the capacity to neutralize bases. Both are determined using **acid-base titration** with color indicators or pH probes.
        
- **Define the specific capacity parameters $\text{ANC}_{4.3}$, $\text{ANC}_{8.2}$, $\text{BNC}_{4.3}$, and $\text{BNC}_{8.2}$. Which of these parameters plays no significant role in practice and what is the chemical reason for its exclusion?**
    
    - **$BNC_{4.3}$** plays no significant role in practice. At $pH$ 4.3, the system is at the $CO_2$ equivalence point where nearly all base has already been consumed; measuring base capacity to reach an already acidic state provides little practical data for water quality assessment.
        
- **Explain the relationship between the concentration of the carbonic acid species ($\text{H}_2\text{CO}_3, \text{HCO}_3^-, \text{CO}_3^{2-}$) and the Acid and Base Neutralizing Capacity parameters ($\text{ANC}_{4.3}$, $\text{ANC}_{8.2}$, etc.) for initial pH ranges:**
    
    - $\text{pH}_0 < 4.3$: Presence of mineral acidity.
        
    - $\text{pH}_0 = 4.3 \dots 8.2$: Bicarbonate is dominant; $ANC_{4.3}$ represents $HCO_3^-$.
        
    - $\text{pH}_0 = 8.2 \dots 9.5$: Carbonate becomes significant; $ANC_{8.2}$ represents $CO_3^{2-}$.
        
    - $\text{pH}_0 > 9.5$: Significant concentrations of $CO_3^{2-}$ and $OH^-$ are present.
        

---

# 🐢 Definitions

- **Material Balance:** The principle that the sum of the concentrations of all species of a component must equal its total analytical concentration ($c_{total}$).
    
- **DIC (Dissolved Inorganic Carbon):** The sum of all inorganic carbon species ($CO_2 + HCO_3^- + CO_3^{2-}$).
    
- **ANC (Acid Neutralizing Capacity):** The molar amount of strong acid required to lower the pH of a water sample to a specific reference value.
    
- **BNC (Base Neutralizing Capacity):** The molar amount of strong base required to raise the pH of a water sample to a specific reference value.
    

---

# 📅 Homework

Would you like me to walk through the calculation steps for **Question 1** (concentration ratios) to verify your understanding of the alpha derivation?