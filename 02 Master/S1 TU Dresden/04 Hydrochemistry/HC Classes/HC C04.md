---
Class: "[[04 Hydrochemistry]]"
Date: 2025-11-10
Last Modified: Monday 10th November 2025 09:10
---
# Monday 10th November 2025

# 📒Class Summary
This class introduces two central components of hydrochemistry: the properties of aqueous solutions—particularly **water hardness**, **ionic strength**, **activities**, and the deviation from ideal behavior—and the fundamentals of **chemical reaction equilibria** in aquatic systems. The lecture explains how hard water affects infrastructure and chemistry, how ion–ion interactions modify effective concentrations, and how equilibrium constants describe the direction and extent of reactions. Several practical methods for estimating ionic strength and activity coefficients are presented, alongside examples involving calcium carbonate systems.

---
# 📝 Notes

## Properties of Aqueous Solutions

### Hardness of Water

Water hardness quantifies the concentration of **alkaline earth ions**, mainly calcium ($\mathrm{Ca^{2+}}$) and magnesium ($\mathrm{Mg^{2+}}$). Hard water influences technical processes, domestic applications, and aquatic chemistry through scaling and changes in pH.
##### Ranges of Hardness

1 °dH (German degree of hardness) = 10 mg/L CaO = 7.187 mg/L MgO  
Using molecular masses:
- $M(\mathrm{CaO}) = 56.08\ \mathrm{g/mol}$
- $M(\mathrm{MgO}) = 40.30\ \mathrm{g/mol}$

This corresponds to:
$$1\ ^\circ \mathrm{dH} = 0.178\ \mathrm{mmol/L\ of\ alkaline\ earth\ ions}$$

| Range of hardness | German degree of hardness | $mmol/L CaCO_3 = mmol/L Ca^{2+}$ |
| ----------------- | ------------------------- | -------------------------------- |
| 1 (Soft)          | < 8.4                     | < 1.5                            |
| 2 (Medium)        | 8.4 - 14                  | 1.5 - 2.5                        |
| 3 (Hard)          | > 14                      | > 2.5                            |

#### Problems of Hard Water

Hard water causes several practical and chemical challenges:
- **Calcium carbonate precipitation (scaling):**$$\mathrm{Ca^{2+}} + 2\ \mathrm{HCO_3^-} \rightleftharpoons \mathrm{CaCO_3\downarrow} + \mathrm{H_2O} + \mathrm{CO_2}$$    → scaling reduces heat-transfer efficiency and clogs pipes.
- **Carbonate hardness → lower pH & higher CO₂**  
    Leads to corrosive water if the equilibrium shifts toward carbonic acid.
- **Higher surfactant demand**  
    Soap forms insoluble salts with Ca²⁺/Mg²⁺.
- **Interference with food preparation**  
    Especially legumes and beverages.
- **Taste effects**  
    Hardness influences tea and coffee extraction.
---

### Ionic Strength & Activities

Ionic solutions do not behave ideally because ions **interact electrostatically**. Oppositely charged ions tend to cluster, forming an **ion atmosphere**.

![[Pasted image 20251110095758.png]]

These interactions modify the “effective” concentration of ions, which is described using **activity**.
#### Activities
Activity represents effective concentration:

$$a_c = \gamma_cc
$$
Where:
- $a_c$ = activity
- $c$ = molar concentration
- $\gamma_c$ = activity coefficient
Limiting behavior:
- At **infinite dilution**, interactions vanish
- $\gamma \to 1$ as $c \to 0$
#### Ionic Strength

Ionic strength is a measure of the total concentration of ions, weighted by charge:

*Estimation of ionic strength*:
$$\text{Exact: } \quad I=0.5\sum c_iz_i^2$$
Charges strongly influence $I$ because they appear squared.
$$\text{Approximationusing conductivity: } \quad I(mol/L)=\frac{k_{25}(\text{in mS/m})}{6200}$$
This is helpful when only bulk conductivity is known.

---

#### Calculation of Activity Coefficients

##### Debye–Hückel Equation (valid for $I < 0.005$ mol/L)

For **univalent ions**:
$$\log \gamma_z = -0.51\sqrt{I}$$
For **multivalent ions**, deviations grow large, requiring extended forms of the Debye–Hückel equation:

For polyvalent ions (charge = z):
$$\lg \gamma_z = -0.51\, z^2 \sqrt{I}$$
Or:
$$\lg \gamma_z = z^2 \lg \gamma_1$$
Or:
$$\gamma_z = \gamma_1^{\,z^2}$$

##### Güntelberg Equation (valid for $I < 0.1L$ mol/L)

For univalent ions:
$$\lg \gamma_1 = -0.5\, \frac{\sqrt{I}}{1 + 1.4 \sqrt{I}}​​$$
For polyvalent ions (charge = z):
$$\lg \gamma_z = -0.5\, z^2 \frac{\sqrt{I}}{1 + 1.4 \sqrt{I}}lgγz​=−0.5z21+1.4I​I​​$$
Or:
$$\lg \gamma_z = z^2 \lg \gamma_1$$
Or:
$$\gamma_z = \gamma_1^{\,z^2}$$
#### Why is Ionic Strength Relevant?

Ionic strength controls:

- activity coefficients
- solubility equilibria
- reaction rates
- electrostatic interactions
- stability of colloids

In practice:

- Conductivity → ionic strength
- Ionic strength → activity coefficients
- Activities → correct equilibrium calculations

Example given in class:
![[Pasted image 20251110101010.png]]
$I = 0.5 * (0.59 * 1^2 + 0.05 + 1.71*2^2 + 0.51*2^2 + 0.65 + 2.51 + 0.94 * 2^2$
$I = 8.215\ \mathrm{mmol/L} = 0.008215\ \mathrm{mol/L}$  
$\sqrt{I} = 0.091$
$y_1=10^{-0.5* 0.091/1+1.4* 0.081} = 0.91$
$y_2 = y_1^{z^2} = 0.69$

Activity coefficients can be approximated using Debye–Hückel and Güntelberg equations.

---

## Reaction Equilibria in Aquatic Systems

### Law of Mass Action (LMA)

The law quantifies the equilibrium position for a reaction:

$$
K^* = \frac{(a_c)^{v_c} (a_D)^{v_D}}{(a_A)^{v_A}(a_B)^{v_B}}
$$

Where:

- $\nu$ = stoichiometric coefficients
- $K^*$ = thermodynamic equilibrium constant
- $a$ = activities of species

A **large** $K^*$ indicates that products dominate at equilibrium.

High K -> more products than reactants 

---
#### Rules of LMA

- Products → numerator
- Reactants → denominator
- Stoichiometric coefficients → exponents

Special cases:
- **Solids**: concentration is constant → activity = 1  
    (concentration fixed by molar density)
- **Solvents (e.g. water)**: present in large excess → activity ≈ 1  
    (≈55.56 mol/L), excluded from equilibrium expression
- **Gases**: described using partial pressure instead of concentration

Example:
$$\mathrm{CaCO_3(s)} + \mathrm{CO_2(g)} + \mathrm{H_2O} \rightleftharpoons \mathrm{Ca^{2+}} + 2\ \mathrm{HCO_3^-}$$
The equilibrium expression becomes:
$$K = \frac{a_{\mathrm{Ca^{2+}}}\cdot a_{\mathrm{HCO_3^-}}^2}{p_{\mathrm{CO_2}}}$$
Because CaCO₃(s) and H₂O(l) are omitted.

---

#### General Reaction Notes

- Reverse reaction constant: $1/K$ or $1/K^*$
- Combined equilibria multiply:

$$K_1^* K_2^* = \frac{a_C}{a_A a_B}$$

Activities must always be used for thermodynamic consistency.

---
# 💡 Key Takeaways

- Water hardness quantifies Ca²⁺ and Mg²⁺ content and affects scaling, corrosion, surfactant demand, and taste.
- Ionic strength measures the electrostatic environment of a solution and strongly influences activity coefficients.
- Activity coefficients correct concentration values for non-ideal ion behavior.
- Debye–Hückel provides a useful approximation for dilute solutions.
- The Law of Mass Action governs chemical equilibria using activities, not raw concentrations.
- Solids and pure liquids are omitted from equilibrium expressions because their activities are constant.
- Large equilibrium constants indicate product-favored reactions.

---
# 💭 Questions

- Why do multivalent ions contribute more strongly to ionic strength than univalent ions?
- How does water hardness influence both scaling and corrosion processes?
- Why does the activity coefficient approach 1 at infinite dilution?
- What limitations does the Debye–Hückel equation have in natural waters?
- Why are solids excluded from the law of mass action expressions?
- How does ionic strength affect the solubility of sparingly soluble salts?
- What is the physical meaning of a large equilibrium constant?
- Why do higher ionic strengths reduce electrostatic interactions?
- How does CO₂ concentration influence the carbonate equilibrium system?
- Why is conductivity a useful proxy for estimating ionic strength?

---
# 🐢 Definitions

- **hardness**: measure of the concentration of Ca²⁺ and Mg²⁺ ions in water.
- **carbonate hardness**: portion of total hardness associated with bicarbonate and carbonate ions.
- **activity**: effective concentration of a species in solution, accounting for non-ideal interactions.
- **activity coefficient ($\gamma$)**: factor relating activity to measurable concentration.
- **ionic strength ($I$)**: measure of ion concentration weighted by charge, controlling activity coefficients.
- **ion atmosphere**: region of opposite charges surrounding an ion in solution.
- **Debye–Hückel equation**: empirical relation predicting activity coefficients in dilute ionic solutions.
- **equilibrium constant ($K^*$)**: thermodynamic constant defining the ratio of product to reactant activities at equilibrium.
- **law of mass action**: principle describing chemical equilibrium using activities and stoichiometry.
- **scaling**: precipitation of minerals (e.g., CaCO₃) on surfaces upon heating or pressure changes.
---
# 📅 Homework

- Calculate ionic strength for a sample containing Ca²⁺, Mg²⁺, Na⁺, Cl⁻, SO₄²⁻ and compare results with conductivity approximation.
- Use Debye–Hückel to compute activity coefficients for a groundwater sample.
- Derive the equilibrium expression for the dissolution of gypsum (CaSO₄·2H₂O).


