---
Class: "[[04 Hydrochemistry]]"
Date: 2025-11-17
Last Modified: Monday 17th November 2025 09:24
---
# Monday 17th November 2025

# 📒Class Summary

Reaction equilibria in aquatic systems are described by the **Law of Mass Action (LMA)**, which uses **activities** and different types of equilibrium constants (thermodynamic vs. conditional).  
The lecture shows how to combine individual reactions into an **overall reaction**, how to interpret the magnitude of the equilibrium constant, and how **Le Chatelier’s principle** predicts the response of equilibria to changes in concentration, pressure and temperature.

A central example is the **CO₂–water system**, where gas–liquid equilibrium and acid–base equilibrium explain phenomena such as **ocean acidification**.  
Finally, the lecture develops **gas–water partitioning** using **Henry’s law**, including several equivalent formulations (partial pressure, gas concentration, mole fraction), and how to treat **open vs. closed systems** using **material balances** with mass concentrations $\beta$, volumes $V$ and total mass $m$.

---
# 📝 Notes

## 3. Reaction Equilibria in Aquatic Systems

### Law of Mass Action (LMA)

The **Law of Mass Action (LMA)** defines how concentrations (or activities) of reactants and products relate at equilibrium. It is the "accounting system" for chemistry, telling us the exact ratio of products to reactants when a system is at rest.

For a general reaction
$$\nu_A A + \nu_B B \rightleftharpoons \nu_C C + \nu_D D$$
The _thermodynamic_ equilibrium constant is:

$$
K^* = \frac{(\gamma_c c_c)^{v_c} (\gamma_c c_D)^{v_D}}{(\gamma_c c_A)^{v_A}(\gamma_c c_B)^{v_B}}
$$
Where:

- $a_i = \gamma_i c_i$ are **activities** (effective concentrations).
- $\gamma_i$ are **activity coefficients** (accounting for ion interactions).
- $c_i$ are molar concentrations
- $\nu_i$ are stoichiometric coefficients

This $K$ is valid only for a **given ionic strength**; if the ionic strength changes, $\gamma_i$ change and $K$ changes.

#### Types of constants and coefficients

- **Thermodynamic equilibrium constant $K^*$:** Uses activities $a_i$; independent of concentration (depends only on $T$ and the chemical system). This is the “true” constant.
- **Conditional equilibrium constant $K$:** Uses concentrations $c_i$; valid only for a **given ionic strength**. If ionic strength changes, $\gamma_i$ changes and $K$ changes.
- **Ideally dilute solution (Limiting case):** At very low concentrations ($c_i \to 0$), interactions vanish and $\gamma_i \to 1$. Thus, $a_i \approx c_i$ and $K^* \to K$.
- **Reverse equilibrium constant:** For a reverse reaction, the constant is $1/K$ (or $1/K^*$).
- **Reaction quotient $Q$:** Same form as $K$ but evaluated with _current_ concentrations. It acts like a "GPS" for the reaction:
    - If **$Q < K$**: System moves to the **products** (Right).
    - If **$Q > K$**: System moves to the **reactants** (Left).
    - If **$Q = K$**: System is at equilibrium.


---

#### Overall reaction

If reactions are combined, their equilibrium constants are multiplied.

$$\begin{align} \text{(1)} &\quad A + B \rightleftharpoons C \\ \text{(2)} &\quad C \rightleftharpoons D + E \\ \hline \text{(3)} &\quad A + B \rightleftharpoons D + E \end{align}$$
Multiplying equilibrium constants:
$$K_1^* K_2^* = \frac{a_C}{a_A a_B} \cdot \frac{a_D a_E}{a_C} = \frac{a_D a_E}{a_A a_B} = K_3^*$$Logarithmic form:
$$\lg K_1^* + \lg K_2^* = \lg K_3^*$$

##### How $K$ tells whether reactants or products dominate

- If $K \gg 1$: numerator $\gg$ denominator → **products dominate** (equilibrium far to the right).
- If $K \ll 1$: denominator $\gg$ numerator → **reactants dominate** (equilibrium far to the left).
- If $K \approx 1$: similar amounts of reactants and products.
---
### Le Chatelier's Principle (Equilibrium Law)

**Definition:** When a system at equilibrium is disturbed (by changing concentration, pressure, or temperature), it shifts in the direction that **reduces** or counteracts that disturbance. Think of it as a "seesaw" trying to return to balance.

Typical disturbances:
- **Concentration:**
    - **Add reactant:** The seesaw tilts left; system consumes reactant to move weight right (shift to **products**).
	- **Remove product:** Seesaw tilts left (right side too light); system forms more product to compensate (shift to **products**).
- **Pressure (gases):**
    - **Increasing total pressure:** Favours the side with **fewer gas moles** (the system tries to "de-crowd" itself).
- **Temperature:**
    - **Exothermic reactions (Release heat):** Heat is a "Product" ($\text{Reactants} \rightleftharpoons \text{Products} + \text{Heat}$).
		- **Increasing $T$ (Add Heat):** Seesaw tilts right. System moves left to balance. **Equilibrium shifts to reactants** and solubility decreases.
    - **Endothermic reactions (Absorb heat):** Heat is a "Reactant" ($\text{Reactants} + \text{Heat} \rightleftharpoons \text{Products}$).
		- **Increasing $T$ (Add Heat):** System consumes extra heat to make more stuff. **Equilibrium shifts to products**.

#### Application: The CO₂ System and Acidification

The equilibrium follows this path:

$$\mathrm{CO_2(g)} \rightleftharpoons \mathrm{CO_2(aq)} + \mathrm{H_2O} \rightleftharpoons \mathrm{H^+} + \mathrm{HCO_3^-}$$

**If atmospheric $CO_2$ increases ($p(\mathrm{CO_2}) \uparrow$):**

1. System adds "weight" to the far left.
2. **Henry’s Law** forces more gas into water: $c(\mathrm{CO_2(aq)}) \uparrow$.
3. To balance, the acid-base equilibrium shifts right (**Le Chatelier**).
4. $[\mathrm{H^+}] \uparrow$, causing pH to decrease (**Ocean Acidification**).

**Temperature effect:** Dissolution of gas is **exothermic**.

- Increasing $T$ adds "heat" (a product), shifting equilibrium back to the gas phase.
- This explains why **cold water holds more dissolved oxygen** than warm water.

---

### Henry's Law & Gas-Water Partitioning

**Gas-Water Partitioning** describes the equilibrium where the **partial pressure** in gas and the **dissolved concentration** in water are linked. It is the "mathematical bridge" between air and water.

#### The Core Concept: Proportionality

At a constant temperature, the dissolved concentration is **directly proportional** to its partial pressure.

> **The "Push" Rule:** The more pressure a gas exerts from the air (higher $p$), the more gas is forced into the water ($c_{aq}$).

#### Standard Equations and Forms

**1. Standard Absorption:**

$$c_{aq} = H \cdot p$$

- $H(A)$ = Henry constant $[\mathrm{mol \cdot L^{-1} \cdot bar^{-1}}]$. Proportionality factor depends on gas type, solvent, and temperature.
- **Trend:** Solubility decreases with increasing $T$ ($H$ decreases as $T$ rises).

**2. Desorption (Inverse Henry):**
$$p(A) = H_{\text{inv}}(A) \cdot c(A) \quad \text{where} \quad H_{\text{inv}}(A) = \frac{1}{H(A)}$$
- The larger $H_{\text{inv}}$, the more **volatile** the compound (easier to "strip" or "desorb" from water).

**3. Gas-phase Concentration ($K_C$):** 
Using the ideal gas law ($p = c_g R T$):
$$c_{aq} = K_C \cdot c_g \quad \text{where} \quad K_C = H(A) R T$$
- **Mass-based version:** $K_C(A) = \frac{\beta_{aq}(A)}{\beta_g(A)}$ (Relates mass concentrations in mg/L).

**4. Mole Fraction Form ($H_X$):**

$$x(A) = H_X \cdot p(A) \quad \text{where} \quad H_X \approx \frac{H(A)}{55.56 \ \mathrm{mol \cdot L^{-1}}}$$
#### Henry's Constants Tables:

![[Pasted image 20251117160338.png]]

![[Pasted image 20251117160649.png]]

---

#### Absorption vs. Desorption

- **Absorption (Loading):** If the actual concentration in the water is _lower_ than what Henry’s Law predicts ($c_{actual} < H \cdot p$), gas will move **from the air into the water**.
- **Desorption (Stripping):** If the concentration is _higher_ ($c_{actual} > H \cdot p$), gas will move **from the water into the air**.
    - _Example:_ When you open a soda, the pressure ($p$) drops instantly. The water is now "over-saturated," and the $CO_2$ escapes as bubbles.
#### Open vs. Closed Systems

- **Open System (Atmosphere):** Gas volume is effectively infinite; $p$ is constant.
    - $c_{aq} = H(A) \cdot p(A)$ gives **saturation concentration** at the surface.
    - **Depth effect:** Saturation increases with depth due to hydrostatic pressure (approx. +1 bar per 10m).
    - If a gas is not in the atmosphere, $p \approx 0$ and $c_{aq} \approx 0$.
        
        ![[Pasted image 20251117162752.png]]
        
        ![[Pasted image 20251117162742.png]]

- **Closed System (Sealed Bottle/Reactor):** Finite volumes $V_g$ and $V_{aq}$. Any exchange changes both $c_{aq}$ and $p$. We must use a **Material Balance**:
	- **Total Mass ($m_{\text{total}}$):** $m_{\text{total}} = m_g + m_{aq} = \beta_g V_g + \beta_{aq} V_{aq}$
	- Final Formulas:
	$$\beta_g = \frac{m_{\text{total}}}{V_g + K_C V_{aq}}$$$$\beta_{aq} = K_C \cdot \beta_g$$  
- **Symbols:** $\beta$ = mass concentration [mg/L], $V$ = volume [L], $m$ = mass [mg].

---
### Gas-Water Partitioning Equilibria

Gas–water partitioning describes how a gas distributes between air and water at equilibrium.

> **What is the Gas-Water Partitioning Equilibria?**  
> It is the equilibrium between gas and aqueous phases where the **partial pressure** in the gas and the **dissolved concentration** in water are linked by Henry’s law (or its alternative forms).

**Relevance:**

- Dissolved $\mathrm{O_2}$ controls redox intensity (oxic vs anoxic conditions).
- Respiration and dissolution of $\mathrm{CO_2}$ affect pH and calco–carbonic equilibrium ($\mathrm{CaCO_3}$).
- Anaerobic degradation releases $\mathrm{N_2}$, $\mathrm{H_2S}$, $\mathrm{CH_4}$.
- Water treatment uses gas exchange: aeration, ozonation, chlorination, stripping.

---

### Summary – equivalent forms of Henry’s law

|Form|Liquid variable|Gas variable|Equation|
|---|---|---|---|
|**Standard absorption**|$c_{aq}$|$p$|$c_{aq} = H p$|
|**Desorption**|$c_{aq}$|$p$|$p = H_{\text{inv}} c$, $H_{\text{inv}} = 1/H$|
|**Gas concentration form**|$c_{aq}$|$c_g$|$c_{aq} = K_C c_g$, $K_C = H R T$|
|**Mole fraction form**|$x$|$p$|$x = H_X p$, $H_X = H/55.56$|


Equilibrium concentration (saturation concentration) only near the water  surface. The saturation concentration increases with depth due to the hydrostatic  pressure (about 1 bar per 10 m). 




##### Material balance
$$\beta_{aq} = K_C\, \beta_g​$$
(Alternative formulation (2) in mass-concentration form.)

> **What is $\beta$, $V$ and $m$?**
> 
> - $\beta$ = mass concentration [e.g. mg/L]
> - $V$ = volume of phase [L]
> - $m$ = mass of solute in a phase [mg or g]

**Interpretation:** in a closed container, the total mass $m_{\text{total}}$ is fixed and is just redistributed between gas and aqueous phases according to Henry’s law.

---

### Phenomena example

- Sparkling wine / mineral water: inside the sealed bottle $p(\mathrm{CO_2}) \approx 2$–3 bar, so $c(\mathrm{CO_2(aq)})$ is high.
- When opening, pressure drops to 1 bar → new equilibrium with lower dissolved CO₂ → gas leaves solution → bubble formation.

---

# 💡 Key Takeaways

- **LMA:** Thermodynamic $K^*$ uses activities; Conditional $K$ uses concentrations.
- **Direction:** $Q$ vs $K$ determines which way a reaction shifts to reach equilibrium.
- **Le Chatelier:** Systems shift to counteract disturbances in concentration, pressure, or $T$.
- **Temperature:** Gas dissolution is **exothermic**; solubility decreases as water warms.
- **Henry’s Law:** $c = Hp$. Dissolved concentration is proportional to partial pressure.
- **Systems:** Open systems have constant $p$; Closed systems require material balances to track mass redistribution.

---

# 💭 Questions and Excercises

- How to compute solubility the of $\mathrm{N_2}$, $\mathrm{O_2}$, $\mathrm{CO_2}$ at different temperatures using Henry’s law?
	- By looking for the Henry constant at the determined temperature for each of the composites
- How to calculate equilibrium concentrations in **open** and **closed** systems?
	- In a open system by using the henry law, and in closed system by doing a material balance.
- What is Le Chatelier’s principle and how does it explain the effect of increasing $p(\mathrm{CO_2})$ on pH 
	- Le Chatelier's principle states that altering the dynamic equilibrium of a system shifts the equilibrium in the direction that counter that change
- How does the value of $K$ indicate whether reactants or products dominate at equilibrium?
	- Since the numerator is the products, in case is bigger than 1 the products dominate at equilibrium, if is lower the reactants
- What is the difference between $K^*$, $K$, $1/K$ and the reaction quotient $Q$?
	- K and K* have the difference on using concentrations and activities (concentrations * activity coeficients), $1/K$ (the constant for the **reverse** reaction) and $Q$ (the ratio at any time, used to predict which way the system will shift _toward_ equilibrium).
- What is meant by gas–water partitioning equilibrium?
	- It is the state where the **chemical potential** is equal in both phases. Molecules are still moving back and forth, but the net exchange is zero.
- How do absorption and desorption differ conceptually and mathematically?
	- Absorbtion is the phenomena where the liquid store gas, and is calculated by using the henry law, while desorption is how the liquid losses gas, and is calculated by using an analugous, but with the inverse of the henry constant
- What happens to gas solubility when temperature increases? Why?
	- Specifically, gas dissolution is **exothermic** (releases heat). Adding heat (increasing $T$) shifts the equilibrium toward the reactants (the gas phase) to consume that extra energy.
- How much $\mathrm{O_2}$ (or $\mathrm{N_2}$, $\mathrm{CO_2}$) can be dissolved in water at given $T$ and $p$ using Henry’s law?
	- First calculate the concentration by the partial pressure * henry constant (depending on the temperature), and then with that concentration compare with the current one to see how much more can be dissolved.
- In a closed bottle, how do $V_g$, $V_{aq}$, $m_{\text{total}}$ and $K_C$ determine $\beta_g$ and $\beta_{aq}$?
	- 1. $m_{total} = (\beta_g \cdot V_g) + (\beta_{aq} \cdot V_{aq})$
	- 2. Substitute $\beta_{aq} = K_C \cdot \beta_g$
	- 3. $m_{total} = \beta_g (V_g + K_C \cdot V_{aq})$
	- 4. **$\beta_g = \frac{m_{total}}{V_g + K_C \cdot V_{aq}}$** and then $\beta_{aq} = K_C \cdot \beta_g$.
- For a closed 1 L bottle (0.5 L water, 0.5 L gas) containing a volatile compound, compute $\beta_g$ and $\beta_{aq}$ using $m_{\text{total}}$ and $K_C$.
	- I would need the Kc and the density of the gas, no?
- Explain why warming a lake reduces dissolved oxygen using Le Chatelier’s principle.
	- Because an increase of the temperature allows more oxygen to escape into atmospheric form, since $\text{O}_2(g) \rightleftharpoons \text{O}_2(aq) + \text{Heat}$, adding heat pushes the reaction to the left (Gas phase).
- What is the solubility (in mg/L) of atmospheric oxygen (M = 32 g/mol) at 25 °C?  The atmosphere contains 20.9 vol% oxygen, the total atmospheric pressure is  assumed to be 1 bar, and the Henry constant at 25 °C is 1.247 × 10−3 mol/(L ⋅ bar). 
	- Partial pressure 0.209 bar, if the constant is 1.247 x10-3 the molar concentration would be 0.00026 mol/L -> mass concentration = 32 g/mol * ans = 8.33 mg/mol

---
# 🐢 Definitions

- **Activity $a_i$**: effective concentration including non-ideal interactions; $a_i = \gamma_i c_i$.
- **Thermodynamic equilibrium constant $K^*$**: ratio of products to reactants using activities, depends only on $T$ and system.
- **Conditional equilibrium constant $K$**: same expression but using concentrations; valid for a given ionic strength.
- **Reaction quotient $Q$**: ratio using current (not equilibrium) concentrations; used to predict direction of shift.
- **Henry constant $H(A)$**: constant relating dissolved concentration and gas partial pressure: $c = Hp$.
- **Inverse Henry constant $H_{\text{inv}}(A)$**: $H_{\text{inv}}=1/H$; measures volatility (how easily gas leaves water).
- **$K_C$**: dimensionless constant $K_C = HRT$ (or $\beta_{aq}/\beta_g$).
- **Gas–water partitioning**: distribution of a chemical between gas and aqueous phases at equilibrium.
- **Absorption**: transfer of gas from air into water.
- **Desorption (stripping)**: transfer of dissolved gas from water into air.
- **Mass concentration $\beta$**: mass per volume [e.g. mg/L].
- **Open system**: gas volume effectively infinite, $p$ approximately constant.
- **Closed system**: finite gas volume; $p$ changes when mass shifts between phases.
    

---

# 📅 Homework

- Use Henry’s law to calculate the solubility (in mg/L) of atmospheric $\mathrm{O_2}$ at $25^\circ\mathrm{C}$ given $p(\mathrm{O_2}) = 0.209$ bar and $H(\mathrm{O_2})$.
- For a closed 1 L bottle (0.5 L water, 0.5 L gas) containing a volatile compound with known $H$ and $m_{\text{total}}$, compute $\beta_g$ and $\beta_{aq}$ using the material balance and $K_C$.
- Explain, using Le Chatelier’s principle and Henry’s law, why warming a lake in summer can reduce dissolved oxygen and affect aquatic life.