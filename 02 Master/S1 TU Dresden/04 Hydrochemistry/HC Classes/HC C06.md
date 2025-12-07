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

The **Law of Mass Action (LMA)** defines how concentrations (or activities) of reactants and products relate at equilibrium.

For a general reaction
$$\nu_A A + \nu_B B \rightleftharpoons \nu_C C + \nu_D D$$
The _thermodynamic_ equilibrium constant is:

$$
K^* = \frac{(\gamma_c c_c)^{v_c} (\gamma_c c_D)^{v_D}}{(\gamma_c c_A)^{v_A}(\gamma_c c_B)^{v_B}}
$$
Where:

- $a_i = \gamma_i c_i$ are **activities**
- $\gamma_i$ are **activity coefficients**
- $c_i$ are concentrations
- $\nu_i$ are stoichiometric coefficients

This $K$ is valid only for a **given ionic strength**; if the ionic strength changes, $\gamma_i$ change and $K$ changes.

#### Limiting case: ideally dilute solution

At very low concentrations, interactions between ions are weak:

- $c_i \to 0 ;\Rightarrow; \gamma_i \to 1$
- $a_i = \gamma_i c_i \approx c_i$

Then
$$K^* \to K$$
so the thermodynamic and conditional constants coincide.

---

#### Types of constants and coefficients

- **Thermodynamic equilibrium constant $K^*$**  
    Uses activities $a_i$; independent of concentration (only $T$ and chemical system). This is the “true” constant.
- **Conditional equilibrium constant $K$**  
    Uses concentrations $c_i$; depends on ionic strength and other conditions. Convenient for calculations in a fixed medium.
- **Reverse equilibrium constant**  
    For the reverse reaction, the constant is simply $1/K$ (or $1/K^*$).
- **Reaction quotient $Q$**  
    Same form as $K$ but evaluated with _current_ concentrations, not necessarily at equilibrium.
    - If $Q<K$, the reaction shifts to the **products**.
    - If $Q>K$, it shifts to the - - **reactants**.
        

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
### Le Chatelier's principle (Equilibrium Law)

**Le Chatelier’s principle:**  
When a system at equilibrium is disturbed (by changing concentration, pressure or temperature), it shifts in the direction that **reduces** that disturbance.

Typical disturbances:

- **Concentration:**
    - add reactant → system consumes reactant (shift to products)
    - remove product → system forms more product
- **Pressure (gases):**
    - increasing total pressure favours the side with fewer gas moles.
- **Temperature:**
    - for an **exothermic** reaction (releases heat), raising $T$ favours the reactants.
	    - "increasing $T$ adds “heat” → equilibrium shifts to the side with less dissolved gas → solubility decreases"
    - for an **endothermic** reaction, raising $T$ favours the products.

> **What is Le Chatelier's principle?**  
> It is the qualitative rule that predicts how the position of equilibrium shifts after a change in temperature, pressure, or concentration: the system responds in the direction that counteracts the imposed change.

---
#### Equilibria

##### 1. Gas–liquid equilibrium
$$\mathrm{CO_2(g)} \rightleftharpoons \mathrm{CO_2(aq)}$$
Henry’s law:
$$c(\mathrm{CO_2(aq)}) = H(\mathrm{CO_2})\, p(\mathrm{CO_2})$$
with $$H(\mathrm{CO_2}) = 0.033\ \mathrm{mol\,L^{-1}\,bar^{-1}}$$
##### 2. Acid–base equilibrium in water

$$\mathrm{CO_2(aq)} + \mathrm{H_2O} \rightleftharpoons \mathrm{H^+} + \mathrm{HCO_3^-}$$
This is one step of the **carbonate system** (others involve $\mathrm{CO_3^{2-}}$).

---

#### Applied to the CO₂ system: higher atmospheric CO₂

If the partial pressure of CO₂ in the atmosphere increases:

1. $p(\mathrm{CO_2}) \uparrow$
2. Henry’s law → $c(\mathrm{CO_2(aq)}) \uparrow$
3. The acid–base equilibrium shifts to the right (Le Chatelier) → $[\mathrm{H^+}] \uparrow$
4. pH decreases → **acidification**.

---
#### Temperature dependence

Dissolution of gases in water is typically **exothermic** (releases heat).  
According to Le Chatelier:

- increasing $T$ adds “heat” → equilibrium shifts to the side with **less dissolved gas** → **solubility decreases**.
- decreasing $T$ favours dissolution → **higher solubility**.

> This explains why cold water can hold more dissolved oxygen than warm water.

---
### Gas-Water Partitioning Equilibria

Gas–water partitioning describes how a gas distributes between air and water at equilibrium.

> **What is the Gas-Water Partitioning Equilibria?**  
> It is the equilibrium between gas and aqueous phases where the **partial pressure** in the gas and the **dissolved concentration** in water are linked by Henry’s law (or its alternative forms).

You should be able to:

- compute solubility of $\mathrm{N_2}$, $\mathrm{O_2}$, $\mathrm{CO_2}$ at different temperatures using Henry’s law,
- use alternative formulations (partial pressure, gas concentration, mole fraction),
- calculate equilibrium concentrations in **open** and **closed** systems.

**Relevance:**

- Dissolved $\mathrm{O_2}$ controls redox intensity (oxic vs anoxic conditions).
- Respiration and dissolution of $\mathrm{CO_2}$ affect pH and calco–carbonic equilibrium ($\mathrm{CaCO_3}$).
- Anaerobic degradation releases $\mathrm{N_2}$, $\mathrm{H_2S}$, $\mathrm{CH_4}$.
- Water treatment uses gas exchange: aeration, ozonation, chlorination, stripping.

---
#### Absorption and Desorption

Partitioning of a gas between gas phase and aqueous phase can be seen as two opposite processes:
- **Absorption**  
    Gas (or vapor) transfers **from the gas phase into the water phase**.  
    The amount in water increases, the gas phase is depleted.
- **Desorption**  
    Gas transfers **from the water phase into the gas phase** (also called stripping).  
    The water loses dissolved gas, the gas phase gains it.

> **Better explanation:**  
> In absorption the water “takes up” gas until equilibrium is reached.  
> In desorption the water “releases” gas because the surrounding air cannot hold the higher equilibrium concentration (for example, when opening a pressurised bottle).

---
### Henry's Law

At equilibrium:
$$A_{(g)} \rightleftharpoons A_{(aq)}$$
Where:

- **A** = arbitrary gas
- **p(A)** = partial pressure of the gas in the air
- **c(A)** = molar concentration of the dissolved gas in water

#### Law of mass action form

Henry’s law can be written as
$$H(A) = \frac{c(A)}{p(A)}$$
or equivalently
$$c(A) = H(A)\, p(A)$$
Where:

- $H(A)$ = Henry constant $[\mathrm{mol,L^{-1},bar^{-1}}]$
- $c_{aq}(A)$ = dissolved concentration in water
- $p(A)$ = partial pressure of $A$ in the gas phase

**Interpretation:**  
The dissolved concentration is **proportional** to the gas partial pressure. The proportionality factor $H(A)$ depends on:

- the nature of the gas,
- the solvent (here water),
- the temperature (strong dependence).

**Trend:** for most gases, **solubility decreases with increasing temperature**, so $H(A)$ decreases as $T$ rises.

Tables of $H$ for different compounds:
![[Pasted image 20251117160338.png]]
![[Pasted image 20251117160649.png]]
#### Henry's law for desorption

For the reverse process
$$A_{(aq)} \rightleftharpoons A_{(g)}$$
it is convenient to define the **inverse Henry constant**
$$H_{\text{inv}}(A) = \frac{p(A)}{c(A)} \quad [\mathrm{L\,bar\,mol^{-1}}]$$
which satisfies
$$H_{\text{inv}}(A) = \frac{1}{H(A)}$$
**Interpretation:**  
The larger $H_{\text{inv}}(A)$, the **more volatile** the compound (easier to strip from water).

Desorption form:
$$p(A) = H_{\text{inv}}(A)\, c(A)$$

---

#### Alternative formulation (2): gas-phase concentration

Instead of partial pressure, use gas concentration $c_g$ via the ideal gas law:
$$p = c_g R T$$
Insert into the basic Henry form:

$$c_{aq} = H(A)\, p = H(A)\, c_g R T$$

Define a **dimensionless constant**
$$K_C = H(A) R T$$
Then
$$c_{aq} = K_C\, c_g$$
**Mass-based version:**

Let $\beta$ be **mass concentration** [e.g. mg/L]. Then
$$K_C(A) = \frac{c_{aq}(A) M(A)}{c_g(A) M(A)} = \frac{\beta_{aq}(A)}{\beta_g(A)}
$$where $M(A)$ is molar mass. So $K_C$ also relates **mass concentrations** in water and air.

---

### Alternative formulation (3): mole fraction

Liquid phase expressed as **mole fraction** $x(A)$, gas phase as partial pressure $p(A)$:
$$x(A) = H_X\, p(A)$$
Approximate relationship between $x(A)$ and concentration:
$$x(A) \approx \frac{c_{aq}(A)}{c(\mathrm{H_2O})}​$$
with
$$c(\mathrm{H_2O}) \approx 55.56\ \mathrm{mol\,L^{-1}}$$
Thus
$$H_X \approx \frac{H(A)}{55.56\ \mathrm{mol\,L^{-1}}}​$$

---

### Summary – equivalent forms of Henry’s law

|Form|Liquid variable|Gas variable|Equation|
|---|---|---|---|
|**Standard absorption**|$c_{aq}$|$p$|$c_{aq} = H p$|
|**Desorption**|$c_{aq}$|$p$|$p = H_{\text{inv}} c$, $H_{\text{inv}} = 1/H$|
|**Gas concentration form**|$c_{aq}$|$c_g$|$c_{aq} = K_C c_g$, $K_C = H R T$|
|**Mole fraction form**|$x$|$p$|$x = H_X p$, $H_X = H/55.56$|
### Open and Closed Systems

#### Open system: $p$ approximately constant

- Gas volume is huge → gas composition hardly changes.
- Typical example: surface waters in equilibrium with the atmosphere (O₂, N₂, CO₂).

Case 1: atmospheric gases

- $p(\mathrm{O_2}) \approx 0.209$ bar
- $p(\mathrm{N_2}) \approx 0.78$ bar
- $p(\mathrm{CO_2}) \approx 4\times10^{-4}$ bar

Then:

$$c_{aq} = H(A)\, p(A)$$

gives the **saturation concentration** near the surface.

With depth, hydrostatic pressure increases, so the **total pressure** increases by about 1 bar per 10 m, slightly raising gas solubility.
![[Pasted image 20251117162752.png]]

Exercise 1:  What is the solubility (in mg/L) of atmospheric oxygen (M = 32 g/mol) at 25 °C?  The atmosphere contains 20.9 vol% oxygen, the total atmospheric pressure is  assumed to be 1 bar, and the Henry constant at 25 °C is 1.247 × 10−3 mol/(L ⋅ bar). 

Equilibrium concentration (saturation concentration) only near the water  surface. The saturation concentration increases with depth due to the hydrostatic  pressure (about 1 bar per 10 m). 


Case 2: gases not present in the atmosphere

If a gas is not a natural component of air (or only in trace amounts), its partial pressure is essentially zero. Without artificial input, its equilibrium dissolved concentration is also essentially zero.
![[Pasted image 20251117162742.png]]


#### Closed system: limited gas volume

Examples: bottles, reactors, test tubes.

- Limited gas and water volumes $V_g$ and $V_{aq}$    
- Any exchange (absorption or desorption) changes both $c_{aq}$ and $p$
- Equilibrium still obeys Henry’s law, but we also need a **material balance**

##### Material balance

Total mass:

$$m_{\text{total}} = m_g + m_{aq} = \beta_g V_g + \beta_{aq} V_{aq}​$$

Using the mass-based Henry relation $\beta_{aq} = K_C \beta_g$:

$$m_{\text{total}} = \beta_g \left( V_g + K_C V_{aq} \right)$$

So:
$$\beta_g = \frac{m_{\text{total}}}{V_g + K_C V_{aq}}​​$$
and
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

- Reaction equilibria in water follow the **Law of Mass Action**; the correct constant is the **thermodynamic** $K^*$ based on activities.
- The **magnitude** of $K$ indicates whether reactants or products dominate at equilibrium.
- **Le Chatelier’s principle** predicts how equilibrium shifts after changes in concentration, pressure, or temperature.
- Gas dissolution is **exothermic**: higher temperature → lower gas solubility.
- **Henry’s law** links gas partial pressure with dissolved concentration and has several useful forms (partial pressure, gas concentration, mole fraction).
- **Open systems**: gas pressure essentially constant → direct use of $c = Hp$.
- **Closed systems**: need **Henry’s law + material balance** to find concentrations in both phases.
- Symbols in closed-system calculations: $\beta$ = mass concentration, $V$ = volume, $m$ = mass, $K_C$ = dimensionless partition coefficient.

---

# 💭 Questions

- What is Le Chatelier’s principle and how does it explain the effect of increasing $p(\mathrm{CO_2})$ on pH    
- How does the value of $K$ indicate whether reactants or products dominate at equilibrium?
- What is the difference between $K^*$, $K$, $1/K$ and the reaction quotient $Q$?
- What is meant by gas–water partitioning equilibrium?
- How do absorption and desorption differ conceptually and mathematically?
- What happens to gas solubility when temperature increases? Why?
- How much $\mathrm{O_2}$ (or $\mathrm{N_2}$, $\mathrm{CO_2}$) can be dissolved in water at given $T$ and $p$ using Henry’s law?
- In a closed bottle, how do $V_g$, $V_{aq}$, $m_{\text{total}}$ and $K_C$ determine $\beta_g$ and $\beta_{aq}$?

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