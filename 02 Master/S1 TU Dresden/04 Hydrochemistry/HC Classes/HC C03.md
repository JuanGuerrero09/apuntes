---
Class: "[[04 Hydrochemistry]]"
Date: 2025-10-27
Last Modified: Monday 27th October 2025 08:16
---
# Monday 27th October 2025

# 📒Class Summary
A comprehensive lecture on **properties of aqueous solutions**, covering key concentration measures (mass, molar, molal, and mole fractions), **electrical neutrality**, and the **hardness of water**.

---
# 🕸️Resources



---
# 📝 Notes

## Properties of Aqueous Solutions

### Concentrations and Measures of Content

>**1 mol = 6.022 × 10²³ mol⁻¹** — Avogadro’s number, the bridge between microscopic (atoms/molecules) and macroscopic (grams/liters) worlds.

![[Pasted image 20251027083446.png]]
#### Solution

A **solution** consists of at least two components:

- **Solvent** – the major component
- **Solute** – the minor component dissolved in the solvent

---
### Mass Concentration (β)

Describes **how much solute mass** is contained in a given **volume of solution**.

$$
\beta(x) = \frac{m(x)}{V} \quad (g/L, mg/L)
$$
_Examples:_
- Coffee contains roughly 100 mg caffeine per 125 mL → $\beta = \frac{100\,mg}{0.125\,L} = 800\,mg/L = 0.8\,g/L$
---
### Molar Concentration (Molarity, c)

Represents **how many moles** of solute are present per liter (or volume) of solution.
$$
c(x) = \frac{n(x)}{V} \text{ or } \frac{\beta(x)}{M(x)} \quad \quad n(x) = \frac{m(x)}{M(x)} \quad (mol/L, mmol/L)
$$
- $n$: number of moles
- $M$: molar mass (from periodic table), mass per mole
- *m*: mass

_Avogadro-constant_ $(N_A)$ connects the *unified atomic mass unit* with g

$$1u =1.66 × 10^{-24}g, \quad 1u×N_A = 1g⋅mol^{-1}$$
**Definition:**  
A **mole** is the amount of substance containing $6.022×10^{23}$ entities (atoms, ions, or molecules).

_Example:_  
Caffeine → $M = 194.2\,g/mol$ (from periodic table):

$$
c(x) = \frac{n(x)}{V} = \frac{m(x)/M(x)}{m(x)/\beta(x)} = \frac{M(x)}{\beta(x)}
$$
$$c=\frac{0.8g/L​}{194.2g/mol}=4.12mmol/L$$

_number of entities_ $(N) = n*N_A$

---
#### Example: Water

Calculate molar concentration and number of entities for 100 g (1L) water, being $M$ = 18 $g/mol$ for $H_2O$.
$$\begin{gather}
n(\text H_2O) = \frac{1000g}{18 g/mol} = 55.56 \;mol \\
c(H_2O) = \frac{55.56}{1 L} = 55.56 \; mol/l \\
N = n*N_A = 55.56 \, mol * 6.022*10^{23} mol^{-1} =3.3*10^{25 } \text{ molecules}

\end{gather}
$$
---
### Equivalent Concentration ($c_{eq}$)

Equivalent concentration expresses concentration in terms of **chemical charge equivalents** instead of moles.
$$
c(\frac{1}{z}X) = \frac{n(\frac{1}{z}X)}{V}, \text{ or equivalently }\; c_{eq} = z\,c(x)
$$
Where:
- **c(x)** → molar concentration (mol/L).
- **z** → ionic charge (e.g., +1 for Na⁺, +2 for Ca²⁺, –1 for Cl⁻).

This allows comparing solutions based on their **electrical equivalence** rather than their molecular count.

The **condition of electrical neutrality** must always hold:
$$\sum_i c_iz_i=0$$
This means the total positive and negative charges in any solution must balance.
![[Pasted image 20251027095725.png]]

##### Plausibility Check

Because all water samples must be electrically neutral, we can verify a water analysis by comparing **cation** and **anion** equivalent concentrations:

$$
\sum \text{Cation equivalent conc.} = \sum \text{Anion equivalent conc.}
$$
>This ensures the measured ionic composition of water is **chemically feasible**.

---
### Molal Concentration (Molality)

Molality measures **moles of solute per kilogram of solvent**, not per liter of solution:
$$
c_m(x) = \frac{n(x)}{m(Lm)} \quad  \quad (mol/kg, mmol/kg)
$$
(LM = _Lösungsmittel_, German for solvent)

### Mass Fraction $w(x)$

Represents the **proportion of solute mass** relative to total solution mass:

$$
w(x) = \frac{m(x)}{\sum m}
$$
Dimensionless; when multiplied by 100%, gives **mass percent**.

_Examples:_
- 1 ppm (parts per million) = $1 g / 10^6g$ = 1 mg/kg
- 1 ppm (parts per billion) = $1 g / 10^9g$ = 1 $\micro$g/kg
- 1 ppm (parts per trillion) = $1 g / 10^{12}g$ = 1 ng/kg

---
#### Mole fraction $x(x)$

Similar to mass fraction, but based on **moles** of the solute in the solution instead of mass:

$$
w(x) = \frac{m(x)}{\sum m}
$$
Dimensionless; when multiplied by 100%, gives **mole percent**.

---
### Example
Mass concentration $\beta$ of nitrate $NO_3$ is 40 mg/L for a surface water. Calculate
- Mass fraction $w$ of N in nitrate
- Mass concentration of N as molar concentration (c) of nitrate and N
Given:
- Mass concentration β of $NO_3^- = 40\,mg/L$
- $M(NO_3) = 63\,g/mol$, $M(N) = 14\,g/mol$

1️⃣ **Mass fraction of N in $NO_3^-$​:**

$$
w(N)= \frac{14​}{63}=0.226=22.6\%
$$
→ 22% of nitrate’s mass is nitrogen.

2️⃣ **Mass concentration of N:**

$$β(N)=β(NO_3​)×w(N)=40mg/L×0.226=9.04mg/L$$
→ The sample contains 9.04 mg of nitrogen per liter.


3️⃣ **Convert to molar concentration:**

$$
\begin{gather}
C = \frac{\beta}{M} = \frac{0.04 \text{g/L}}{62 \text{g/mol}} = 0.00064 mol/L \text{ or } = 0.645 mmol/L \\
C = \frac{\beta}{M} = \frac{9.04 \text{mg/L}}{14 \text{mg/mmol}} = 0.645 mmol/L
\end{gather}
$$
---
### Dalton’s Law of Partial Pressures

> _The total pressure of a gas mixture equals the sum of the partial pressures of each component gas._

For example, atmospheric pressure (1 bar) contains mainly nitrogen and oxygen:

- $N_2= 78\% \Rightarrow 0.78\,bar$
- $O_2 = 20\% \Rightarrow 0.20\,bar$

$$1\,atm = 101325\,Pa, \quad 1\,Pa = 1\,N/m^2$$
## Hardness of Water

- **Total Hardness (TH):** sum of $Ca^{2+}$ and $Mg^{2+}$ concentrations.
- **Carbonate Hardness (CH):** part of hardness due to $HCO_3^-$​ and $CO_3^{2-}$​.
- **Non-Carbonate Hardness (NCH):** remainder due to other anions (e.g., $SO_4^{2-}​, Cl^-$).


$$
TH = CH+NCH
$$

Only $Ca^{2+}$ and $Mg^{2+}$  determine hardness.

---

When **CH < TH**, both carbonate and non-carbonate hardness are present.  
When **CH = TH**, only carbonate hardness exists (no non-carbonate part).  
CH can **never exceed** TH.

![[Pasted image 20251027103330.png]]
At high temperatures, **temporary (carbonate) hardness** causes precipitation of calcium carbonate — the main reason for **scaling in pipes and boilers**.

### Why is carbonate hardness _temporary_?

Carbonate hardness is mainly caused by **calcium bicarbonate** ($Ca(HCO_3)_2$) and **magnesium bicarbonate** ($Mg(HCO_3)_2$), which are **soluble salts**.  
When water containing these ions is **heated**, the bicarbonates **decompose**, releasing **carbon dioxide (CO₂)** and forming **insoluble carbonates** that precipitate:

$$Ca(HCO_3)_2 \rightarrow CaCO_3 \downarrow + CO_2 \uparrow + H_2O$$

This means that when water is boiled or evaporated, part of the dissolved calcium and magnesium are removed from solution as **solid calcium carbonate (CaCO₃)** or **magnesium carbonate (MgCO₃)**.  
Because this hardness can be **removed by heating**, it is called **temporary hardness**.

In contrast, **non-carbonate hardness** (from ions like $SO_4^{2-}$​ or $Cl^-$) remains even after boiling — it is **permanent hardness**.

This process explains the formation of **scale in kettles, boilers, and pipes**, where calcium carbonate accumulates as a solid layer.

---
How to calculate it from the $HCO^{-}_3$?
$$
c(Ca^{2+}+Mg^{2+})_{CH}=\frac{1}{2}c(HCO^{-}_3) 
$$
This relationship arises from **charge balance** in the bicarbonate system.

Each **calcium ion** (Ca^{2+}) or **magnesium ion** (Mg2+Mg^{2+}Mg2+) carries **two positive charges**, while each **bicarbonate ion** (HCO3−HCO_3^-HCO3−​) carries **one negative charge**.  
Therefore, to maintain electrical neutrality, **two bicarbonate ions** are required for every **one divalent cation**:

$$Ca^{2+} + 2HCO_3^- \rightarrow Ca(HCO_3)_2$$

Hence, the **concentration of divalent cations (Ca²⁺ + Mg²⁺)** associated with carbonate hardness is **half** the concentration of bicarbonate ions:

$$c(Ca^{2+}+Mg^{2+})_{CH} = \frac{1}{2}c(HCO_3^-)$$

This proportionality reflects the **stoichiometry** of the ions in solution and ensures **charge neutrality** between cations and anions in the carbonate equilibrium system.

---

### Worked example (cleaned and explained)

**Given (one water sample):**

- $c(Ca^{2+}) = 1.8\ \text{mmol/L}$
- $c(Mg^{2+}) = 0.4\ \text{mmol/L}$
- $c(HCO_3^-)=2.6\ \text{mmol/L}$

**Step 1 — Total hardness (TH):**  
Total hardness is the sum of the alkaline-earth cation concentrations (as mmol/L here):

$$TH=c(Ca^{2+})+c(Mg^{2+})=1.8+0.4=2.2 mmol/L$$

**Step 2 — Carbonate hardness (CH):**  
Carbonate hardness is the portion of Ca²⁺ and Mg²⁺ that is paired with bicarbonate/carbonate. Stoichiometry requires 2 bicarbonate ions per one divalent cation, so the carbonate-associated cation concentration is half the bicarbonate concentration:

$$CH = \tfrac{1}{2}\,c(HCO_3^-) = \tfrac{1}{2}\times 2.6 = 1.3\ \text{mmol/L}$$

Interpretation: up to 1.3 mmol/L of the Ca²⁺+Mg²⁺ present can be associated with bicarbonate (i.e., “temporary” hardness).

**Step 3 — Non-carbonate hardness (NCH):**  
Non-carbonate hardness is the remainder of TH not accounted for by CH:

$$NCH = TH - CH = 2.2 - 1.3 = 0.9\ \text{mmol/L}$$

Interpretation: 0.9 mmol/L of the Ca²⁺+Mg²⁺ are associated with other anions (e.g., SO₄²⁻, Cl⁻) — this is **permanent hardness** (won’t precipitate by simple heating)- .

---
### What happens if we have high hardness? (practical consequences & remedies)

**Phenomena / problems:**

- **Scaling / fouling** in boilers, kettles, heat exchangers, and pipes (CaCO₃ deposits reduce efficiency).
- **Poor soap performance:** hard water reacts with soaps to form insoluble “soap scum,” reducing cleaning efficiency.
- **Plumbing & appliance damage:** scale narrows pipes and shortens appliance lifetime.
- **Increased energy consumption:** scale lowers heat transfer efficiency.
- **Aesthetic/operational issues:** spots on dishes, dull laundry, taste changes.
- **Possible effects on corrosion:** hard water can be less corrosive in some systems (protective scale), but scale formation can cause under-deposit corrosion in others.

**How to mitigate high hardness:**

- **Ion exchange (water softening):** replace Ca²⁺/Mg²⁺ with Na⁺ (common domestic softeners).
- **Lime softening:** add Ca(OH)₂ to precipitate CaCO₃ and Mg(OH)₂ in water treatment.
- **Reverse osmosis / nanofiltration:** remove hardness ions physically.
- **Sequestration / chelants (polyphosphates):** keep hardness ions in solution to prevent precipitation (temporary measure, not removal).
- **pH control / CO₂ management:** in industrial systems, control pH/CO₂ to minimize scale formation.
- **Descaling maintenance:** chemical or mechanical removal of accumulated scale.

---
# 🐢 Definitions

- **Electronegativity:** ability of an atom to attract shared electrons.
- **Dipole:** molecule with partial positive and negative charges due to uneven electron distribution.
- **Enthalpy (H):** total heat content of a system at constant pressure.
- **Molality:** moles of solute per kilogram of solvent.
- **Equivalent Concentration:** concentration weighted by ionic charge zzz.
- **Mass Concentrations**  Amount of solute mass dissolved per unit volume of solution, usually in mg/L or g/L.
- **Number of Entities**  Total number of individual particles such as atoms, molecules, or ions in a given sample.
- **Concentration of Equivalents**  Amount of reactive chemical units (equivalents) per unit volume of solution, used in acid–base and redox reactions.
- **Mass Fraction**  Ratio of the mass of a component to the total mass of the mixture, often expressed as a percentage.
- **Condition of Electric Neutrality**  Principle stating that in any aqueous solution, the total positive charge equals the total negative charge.
- **Molar Concentrations**  Amount of a substance (in moles) per liter of solution, representing how many particles are dissolved.
- **Ideal Gas Law** Relationship describing how pressure, volume, temperature, and amount of gas are connected in an ideal gas.
- **Partial Pressure**  The pressure that each gas in a mixture would exert if it occupied the whole volume alone.
- **Molal Concentrations**  Amount of solute (in moles) per kilogram of solvent, independent of temperature changes.
- **Balance Error**  Difference between measured and theoretically expected ionic charges, used to check the accuracy of chemical analyses.
- **Total Hardness**  Measure of the total concentration of calcium and magnesium ions in water.
- **Carbonate Hardness**  Portion of hardness caused by calcium and magnesium associated with bicarbonate and carbonate ions; can be removed by boiling.
- **Non-Carbonate Hardness**  Portion of hardness caused by calcium and magnesium linked to non-carbonate anions such as sulfate or chloride; cannot be removed by boiling.
- **Temporary Hardness**  Hardness that disappears upon boiling due to precipitation of carbonate compounds.
- **Permanent Hardness**  Hardness that remains after boiling, caused by non-carbonate salts of calcium and magnesium.
- **Surfactants**  Surface-active agents that reduce surface tension and improve the mixing of water with oils or solids.
- **Scaling**  Formation of solid mineral deposits (often calcium carbonate) on surfaces in contact with water.
- **Corrosion**  Degradation of metals due to chemical reactions with their environment, especially oxidation in water.
- **Activities**  Effective concentrations that account for interactions between ions, representing their real chemical reactivity in solution.
- **Electrical neutrality:** Balance of total positive and negative charge in solution: $\sum_i c_i z_i = 0$
- **Equivalent concentration ($c_{eq}$):** Charge-weighted concentration, $c_{eq}=z,c$.
- **Permanent hardness:** Hardness due to non-carbonate anions (e.g., $\mathrm{SO_4^{2-}}$, $\mathrm{Cl^-}$) that **does not** disappear by boiling.
---
# 💡 Questions

- Convert **40 mg/L** of $\mathrm{NO_3^-}$ to **mmol/L** and to **mg/L as N**.
- A sample has $\mathrm{Ca^{2+}}=1.2,\mathrm{mmol/L}$, $\mathrm{Mg^{2+}}=0.6,\mathrm{mmol/L}$, $\mathrm{HCO_3^-}=3.8,\mathrm{mmol/L}$. Compute **TH**, **CH**, **NCH**.
- Explain why **carbonate hardness** is **temporary**. Write the heating reaction:  
    ${Ca(HCO_3)_2 \rightarrow CaCO_3\downarrow + CO_2\uparrow + H_2O}$
- State the **electrical neutrality condition** and how it’s used to check a water analysis:  
    $\sum_i c_i z_i = 0$
- Compare **molarity** vs **molality** regarding **temperature dependence**.
- Define **equivalent concentration** and give the **meq/L** for $5,\mathrm{mmol/L}$ of $\mathrm{SO_4^{2-}}$.
- A solution has $\beta = 0.50,\mathrm{g/L}$ glucose ($M=180.16,\mathrm{g/mol}$). Estimate **molarity**, **molality** (assume $\rho\approx1,\mathrm{kg/L}$), and **mole fraction** (aprox.).
- Use **Dalton**: compute partial pressure of $\mathrm{CO_2}$ at **415 ppm** in **1 atm**.
- Explain why **CH can never exceed TH**. What means if $\tfrac12,c(\mathrm{HCO_3^-})> \mathrm{TH}$?
	- List **3 impacts** of **high hardness** and **2 mitigations**.

---
# 📅 Homework
- Review how to convert between **mass**, **molar**, and **equivalent** concentrations.
- Practice **hardness calculations** with sample data.
- Be ready to explain **why carbonate hardness is temporary**.


