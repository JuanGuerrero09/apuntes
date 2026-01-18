---
Class: "[[04 Hydrochemistry]]"
Date: 2026-01-11
Last Modified: Sunday 11th January 2026 23:17
---
# 📅 Sunday 11th January 2026

# 📒Class Summary


---
# 📝 Notes

## Calco Carbonic Equilibrium

-> very likely to be in exam from where do you get activity coefficient

Dissolving caco is not good

### Elementary reactions and overal reaction

Elementary:

$$
\begin{gather}
CO_{2(aq)}\\
dsf
\end{gather}
$$


### Tillmans curve

**Tillmans' curve** (also known as the Tillmans diagram) is a graphical tool used in water chemistry to determine if water is in **calcium carbonate equilibrium**.

In simpler terms, it tells you whether water will **form scale** (clogging pipes with minerals) or be **corrosive** (eating away at metal pipes). It focuses on the relationship between **Free Carbon Dioxide ($CO_2$)** and **Bicarbonate ($HCO_3^-$)**.

### Key Components of the Curve

The diagram is built on the chemical reaction:

$$CaCO_3​+CO_2​+H_2​O⇌Ca(HCO_3​)_2​$$

1. **Associated CO2​:** The amount of carbon dioxide required to keep the calcium and bicarbonate in solution.
2. **Aggressive CO2​:** Any CO2​ present _beyond_ what is required for equilibrium. This is the portion that makes water corrosive.
3. **Temperature Dependence:** The curve shifts with temperature. For example, when you heat water in a boiler, the curve shifts, and water that was previously in equilibrium may suddenly become "scaling."

### Langelier Equation

$$
pH_{eq, La} = -lg\,K_{La}-lg\,f_{La} -lg\,c(HCO_3^-) - lg\,c(Ca^{2+})
$$

- **−lgKLa​:** This is the equilibrium constant for the specific reaction between calcium and carbonate. In simplified versions, this is often part of the "9.3 constant" or the temperature adjustment.
- **−lgfLa​:** This is the **activity coefficient**. It accounts for the "ionic strength" of the water (Total Dissolved Solids). In the field version, this is often labeled as **Factor A**.
- **−lgc(HCO3−​):** This represents the concentration of **bicarbonate** (Alkalinity). In simplified versions, you simply look up **Factor D** based on your ppm measurement.
- **−lgc(Ca2+):** This is the concentration of **calcium ions** (Hardness). This corresponds to **Factor C** in the field version.

Exercise 1:

Is the water calcite-saturated or not?  The following data are known: 

c(Ca2+) = 3.5 mmol/L, c(HCO3 -) = 5.3 mmol/L, k25 °C = 96 mS/m,  pHmeas = 6.9,  = 10 °C, lgKLa, 10 °C = -2.082 

get -lg f_La from the monovalent coef -lg f_La = 5 lg y_1

and that is obtained from the Güntelberg equation

$$
lg\,y_1 = -0.5 \frac{\sqrt{I}}{1+1.4\sqrt{I}}
$$
Conductivity correlated with the Ion strengt ($I = \frac{k_{25 c}}{6200})$

I  = 0.0155 mol/L
lg y1 = -0.053
lg f_La = -0.265

SI = -0.2

SI < 0 -> Calcite dissolving


Exercise

the same but with tilmans equations

c CO2 = KT /fT 

co2 + h20 <-> h+ + hco-3

Ka = aH+ * a HCO-3 / a CO2 = a h+ * a HCO 3 / c CO2 = a H * c HCO3 * y1/ c CO2

c CO2 = a H+ * y1 / Ka 1   * c HCO3- 

from E1 y1 = 10^{-0.053} = -0.885

c CO2 = 0.0017

kT  = ka2 / (ka1 * ksp) = 244148.6 L2/mol2

fT = 1 /y^6

c CO2 eq = 0.0011

aq >  eq -> calcite dissolving water




---
## Redox Equilibria

### Oxidation State or Oxidation Number (ON)

Oxidation numbers are used by chemists to track the movement of electrons during chemical reactions. The following are ordered in order of priority.

#### 1. Pure Elements = 0

If an atom is by itself or bonded only to its own kind (like $Fe$, $O_2$, or $P_4$), its oxidation number is **0**. This is because no electrons are being "pulled" away by a different element.

#### 2. Monatomic Ions = Their Charge

For a single atom that has a charge, the $ON$ is simply that charge.

- $Cl^-$ has an $ON$ of $-1$.
- $Fe^{3+}$ has an $ON$ of $+3$.

#### 3. The "Sum" Rule

This is the math rule used to solve for unknown atoms in a molecule:

- **Neutral molecules:** All $ON$s must add up to **0**.
- **Polyatomic ions:** All $ON$s must add up to the **total charge** of the ion.

#### 4. Fluorine = -1

Fluorine is the most electronegative element; it almost always "wins" the electron. In a compound, it is always **-1**.

#### 5. Metals = Positive

Metals lose electrons, so their $ON$ is always positive ($>0$).

- **Alkali metals** (Group 1: $Li, Na, K$, etc.) are always **+1**.
- **Alkaline earth metals** (Group 2: $Be, Mg, Ca$, etc.) are always **+2**.

#### 6. Hydrogen = +1

In most compounds, Hydrogen is **+1**. However, if it is bonded to a metal (a metal hydride like $NaH$), rule #5 takes priority, forcing Hydrogen to be **-1**.

#### 7. Oxygen = -2

Oxygen is usually **-2**. The exception is in "peroxo" compounds (like hydrogen peroxide, $H_2O_2$), where it is **-1**.


#### Exercise
![[Pasted image 20260112001707.png]]
Complete oxidation numbers

- $O_2 / H_2O \rightarrow 0 / -2$
- $Mn^{2+} / MnO_2 \rightarrow +1 / -2$ 

### Redox Equilibria


### Redox intensity ($pe$)

In hydrochemistry, the **redox intensity ($pe$)** is a master variable used to describe the oxidizing or reducing power of a solution. It serves as a dimensionless measure of the activity of electrons in a system.

$pe$ is defined as the negative common logarithm of the electron activity ($a_{e^-}$):

$$pe = -\log a_{e^-}$$

- **High $pe$:** Indicates an **oxidizing environment** where electron activity is low (electrons are "scarce" because they are being consumed by oxidants).

- **Low $pe$:** Indicates a **reducing environment** where electron activity is high (electrons are "abundant").
 

---

#### Analogy between $pe$ and $pH$

There is a direct mathematical and conceptual analogy between $pe$ and $pH$, as both describe the intensity of a master particle in chemical equilibria.

|**Feature**|**pH (Acid-Base)**|**pe (Redox)**|
|---|---|---|
|**Master Particle**|The proton ($H^+$)|The electron ($e^-$)|
|**Logarithmic Definition**|$pH = -\log a_{H^+}$|$pe = -\log a_{e^-}$|
|**Intensity Scale**|Measures the tendency of a solution to donate/accept protons.|Measures the tendency of a solution to donate/accept electrons.|
|**High Value**|Low $H^+$ activity (Alkaline/Basic).|Low $e^-$ activity (Oxidizing).|
|**Low Value**|High $H^+$ activity (Acidic).|High $e^-$ activity (Reducing).|

####  Relationship to Standard States

Just as $pH$ can be related to the dissociation constant of an acid, $pe$ is related to the standard redox potential ($E^0$) or the standard free energy of a reaction. For a standard hydrogen electrode at $25^\circ\text{C}$, the relationship is given by:

$$pe = \frac{E}{0.0591 \text{ V}}$$

Where $E$ is the electrode potential in Volts.

#### Calculating redox intensity $pe$

To calculate the redox intensity ($pe$) for reactions, especially those that are pH-dependent, we use the **Nernst Equation** adapted for electron activity.

#####  Basic Calculation of $pe$

The $pe$ of a half-reaction is determined by the activities (or concentrations in dilute solutions) of the oxidized and reduced species:

$$pe = pe^\circ + \frac{1}{n} \log \left( \frac{\prod [Ox]^{n_i}}{\prod [Red]^{n_j}} \right)$$

- **$pe^\circ$**: The standard redox intensity, which relates to the standard free energy of the reaction.
- **$n$**: The number of electrons transferred in the half-reaction.1
- **$[Ox], [Red]$**: The molar concentrations of the reactants and products.

---

##### Calculating $pe$ for pH-Dependent Reactions

Many redox reactions in the hydrosphere involve protons ($H^+$). For these reactions, the $pe$ depends directly on the $pH$ of the solution.

###### The General Formula

Consider a reaction where protons are involved:

$m Ox + n e^- + h H^+ \rightleftharpoons q Red$

The formula for $pe$ then incorporates the $pH$ term:

$$pe = pe^\circ - \frac{h}{n} pH + \frac{1}{n} \log \left( \frac{[Ox]^m}{[Red]^q} \right)$$

- **Relationship**: The term $-\frac{h}{n} pH$ shows how the redox intensity shifts as the acidity changes.
- **Slope**: On a $pe-pH$ diagram, the boundary between species is often a line with a slope of $-\frac{h}{n}$.

---

### $pe - pH$ diagrams

In a **pe-pH diagram**, species are assigned by identifying their stability regions based on the dominant oxidation state (vertical axis, $pe$) and the acid-base state (horizontal axis, $pH$).

#### 1. Vertical Assignment (Redox States)

Species are arranged vertically according to their **oxidation state**.

- **Top (High $pe$):** Oxidized species (e.g., $Fe^{3+}$ or $O_2$) occupy the top of the diagram because high $pe$ represents a scarcity of electrons.
- **Bottom (Low $pe$):** Reduced species (e.g., $Fe^{2+}$ or $H_2$) occupy the lower regions where electron activity is high.
#### 2. Horizontal Assignment (Acid-Base States)

Species are arranged horizontally based on their **protonation or hydration** state.

- **Left (Low $pH$):** Soluble cations (like $Fe^{3+}$ or $Al^{3+}$) dominate in acidic conditions.
- **Right (High $pH$):** Hydroxides, oxides, or oxyanions (like $Fe(OH)_3$ or $CO_3^{2-}$) dominate in basic conditions.
#### 3. Interpreting the Boundary Types

The lines between species indicate the type of chemical equilibrium occurring:

- **Horizontal Boundaries:** Represent **pure electron transfer**. These reactions do not involve $H^+$, so the equilibrium is independent of $pH$.
- **Vertical Boundaries:** Represent **pure proton transfer** or precipitation. These involve no change in oxidation state, making them independent of $pe$.
- **Sloped Boundaries:** Represent **simultaneous electron and proton transfer**. Most environmental reactions (like the reduction of $MnO_2(s)$ to $Mn^{2+}$) follow this pattern.

### 4. Stability Limits (The Water Frame)

Two diagonal dashed lines define the "Stability Field of Water":

- **Upper Line ($pe = 20.78 - pH$):** Above this line, water is oxidized to $O_2$ gas.
- Lower Line ($pe = -pH$): Below this line, water is reduced to $H_2$ gas.
    Representative environmental species must typically fall between these two lines to exist in the hydrosphere.

---
# 💡 Key Takeaways


---
# 💭 Questions


---
# 🐢 Definitions


---
# 📅 Homework



