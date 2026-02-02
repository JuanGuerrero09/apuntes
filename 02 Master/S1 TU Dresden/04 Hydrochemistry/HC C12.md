---
Class: "[[04 Hydrochemistry]]"
Date: 2026-01-19
Last Modified: Monday 19th January 2026 10:05
---
# 📅 Monday 19th January 2026

# 📒Class Summary

Today's session focused on **Redox Equilibria** in aquatic systems, a fundamental process alongside acid-base reactions. We explored the definition and priority rules for **Oxidation Numbers (ON)**, the conceptual and mathematical framework of **Redox Intensity ($pe$)**, and its direct analogy to **$pH$**. Additionally, we analyzed the **Nernst Equation**, the relationship between $pe$ and **Redox Potential ($E_H$)**, and how to handle complex half-reactions involving $pH$ dependency and dissolved gases.

---
# 📝 Notes

## Reaction Equilibria in Aquatic Systems

### Redox Equilibria

Redox reactions are among the most critical processes in aquatic chemistry. Several natural water constituents exist as part of redox couples, where elements move between different oxidation states.

#### Processes: Riverbank Filtration

In systems like riverbank filtration, a specific sequence of redox processes occurs as water moves through the subsurface:

1. **Aerobic Degradation:** Dissolved oxygen is consumed first by microbes to degrade organic matter.
2. **Nitrification (Aerobic):** Ammonia is oxidized to nitrate in the presence of oxygen.
3. **Denitrification:** Once oxygen is depleted, microbes use nitrate as an electron acceptor, reducing it to nitrogen gas ($N_2$).
4. **Reduction of $Fe^{3+}$ and $Mn^{4+}$:** Insoluble iron and manganese oxides are reduced to soluble $Fe^{2+}$ and $Mn^{2+}$.
5. **Sulfate Reduction:** Under strongly reducing conditions, sulfate ($SO_4^{2-}$) is reduced to hydrogen sulfide ($H_2S$).

---

### Oxidation State or Oxidation Number (ON)

Oxidation number (ON) = hypothetical charge resulting from  hypothetical bond cleavage (formal dissociation of the compound into  ions).  The electronegative partner receives (formally) the bonding electrons. 

**Examples:**

- **$HCl$:** $H$ ($+1$) / $Cl$ ($-1$).
- **$H_2O$:** $H$ ($+1$) / $O$ ($-2$).

Oxidation numbers are used by chemists to track the movement of electrons. The following rules are ordered by **priority**:

#### 1. Pure Elements: $ON = 0$

If an atom is by itself or bonded only to its own kind (e.g., $Fe$, $O_2$, $P_4$), its $ON$ is **0**. No electrons are "pulled" away.

#### 2. Monatomic Ions  ON = Ion Charge

The $ON$ is simply the charge of the ion.

- $Cl^-$ has an $ON$ of $-1$.
- $Fe^{3+}$ has an $ON$ of $+3$.

#### 3. The "Sum" Rule

This is the math rule used to solve for unknown atoms in a molecule:

- **Neutral molecules:** All $ON$s must add up to **0**. $\sum ON = 0$
- **Polyatomic ions:** All $ON$s must add up to the **total charge** of the ion. $\sum ON = \text{ion charge (ions)}$

#### 4. Fluorine in compounds ON = -1

Fluorine is the most electronegative element; it almost always "wins" the electron. In a compound, it is always **-1**.

#### 5. Metals = Positive ON > 0

Metals lose electrons, so their $ON$ is always positive ($>0$).

- **Alkali metals** (Group 1: $Li, Na, K$, etc.) are always **+1**.
- **Alkaline earth metals** (Group 2: $Be, Mg, Ca$, etc.) are always **+2**.

#### 6. Hydrogen ON = +1

In most compounds, Hydrogen is **+1**. However, if it is bonded to a metal (a metal hydride like $NaH$), rule #5 takes priority, forcing Hydrogen to be **-1**.

#### 7. Oxygen  ON = -2

Oxygen is usually **-2**. The exception is in "peroxo" compounds (like hydrogen peroxide, $H_2O_2$), where it is **-1**.

unds: ON = -2  (exception: in peroxo compounds ON = -1) Note: In the case of conflicts, the rule with the lower ordinal number invalidates  the rule with the higher number. 

#### Exercise
![[Pasted image 20260112001707.png]]
Complete oxidation numbers

- $O_2 / H_2O \rightarrow 0 / +1, -2$
- $Mn^{2+} / MnO_2 \rightarrow +2 / +4, -2$
- $H_2S / SO_4^{2-} \rightarrow +1, -2 / +6, -2$
- $LiH \rightarrow +1, -1$
- $N_2, NH_3, NH_4^+ / NO_3^- \rightarrow 0, -3+1, -3+1 / +5-2$
- $Fe^{2+} / Fe(OH)_3 \rightarrow +2 / +3 \text{ (since } OH = -1\text{)}$
- $CO_2, C_6H_{12}O_6, CH_4 \rightarrow +4-2, 0+1-2, -4+1$
- $H_2O_2 \rightarrow +1, -1$

---

### Redox Equilibria (Dynamics)

**Oxidation:** Loss of electrons (increase of $ON$).
**Reduction:** Gain of electrons (decrease of $ON$).

**Fundamental Balance:**

$$
Ox+n_ee^- \leftrightarrows Red
$$
- **To the right:** Reduction (gain of $e^-$).
    
- **To the left:** Oxidation (loss of $e^-$).
    

**Roles:**

- **Oxidant (Ox):** Oxidizes the partner, accepts electrons, and is itself reduced.
- **Reductant (Red):** Reduces the partner, donates electrons, and is itself oxidized.

**Half reaction** (Redox intensity $pe$): $Ox + n_e e^- \rightleftharpoons Red$

**Complete redox reaction**: Combined from two half-reactions:

$$
\begin{align}
Ox_1+n_ee^- &\rightleftharpoons Red_1 \\
Red_2&\rightleftharpoons Ox_2 + +n_ee^- \\

\hline
Ox_1 + Red_2 &\rightleftharpoons Red_1 + Ox_" 
\end{align}
$$

---
### Redox intensity ($pe$)

In hydrochemistry, **redox intensity ($pe$)** is a master variable used to describe the power of a solution. It is a dimensionless measure of the activity of electrons ($a_{e^-}$):

$$pe = -\log a({e^-})$$

- **High $pe$:** Indicates an **oxidizing environment** where electron activity is low (electrons are "scarce" because they are being consumed by oxidants).

- **Low $pe$:** Indicates a **reducing environment** where electron activity is high (electrons are "abundant").

Standard Redox Intensity Calculation:
$$
pe = pe^0+\frac{1}{n_e}lg\frac{a(Ox)}{a(Red)}
$$

Example:
$$
\begin{gather}
Fe^{3+} + e^- \rightleftarrows Fe^{2+} \\
K = \frac{a(Fe^{2+})}{a(Fe^{3+})a(e^{-})} \\
pe = pe^0 + lg\frac{a(Fe^{3+})}{a(Fe^{2+})}
\end{gather}
$$ 
---

#### Analogy between $pe$ and $pH$

There is a direct mathematical and conceptual analogy between $pe$ and $pH$, as both describe the intensity of a master particle in chemical equilibria.

| **Feature**                | **pe (Redox)**                                                  | **pH (Acid-Base)**                                            |
| -------------------------- | --------------------------------------------------------------- | ------------------------------------------------------------- |
| **Master Particle**        | The electron ($e^-$)                                            | The proton ($H^+$)                                            |
| **Logarithmic Definition** | $pe = -\log a_{e^-}$                                            | $pH = -\log a_{H^+}$                                          |
| **Intensity Scale**        | Measures the tendency of a solution to donate/accept electrons. | Measures the tendency of a solution to donate/accept protons. |
| **High Value**             | Low $e^-$ activity (Oxidizing).                                 | Low $H^+$ activity (Alkaline/Basic).                          |
| **Low Value**              | High $e^-$ activity (Reducing).                                 | High $H^+$ activity (Acidic).                                 |
| Low pe/pH Enviroment       | Reducing enviroment                                             | Acidic enviroment                                             |
| High pe/pH Enviroment      | Oxidizing enviroment                                            | Basic enviroment                                              |

---

#### Redox Potential ($E_H$) and Nernst Equation

The intensity can also be expressed in Volts via the **Nernst Equation**:

$$
E_H = E_H^0+\frac{2.3RT}{n_eF}lg\frac{a(Ox)}{a(Red)}
$$
- $E_H$: Electrode potential.
- $R$: Gas constant.
- $T$: Temperature.
- $F$: Faraday constant.

####  Relationship to Standard States

Just as $pH$ can be related to the dissociation constant of an acid, $pe$ is related to the standard redox potential ($E^0$) or the standard free energy of a reaction. For a standard hydrogen electrode at $25^\circ\text{C}$, the relationship is given by:

Recalculation of $pe$ and $E_H$

$$
pe = \frac{F}{2.3RT}E_H
$$
$$
pe = \frac{1}{0.059 V}E_H
$$


Note: Thermodynamically, a species with a higher $pe^0$ can oxidize one with a lower $pe^0$, but the reaction might be kinetically slow.

---

### Complex Half-Reactions

Many redox reactions involve protons ($H^+$), meaning $pe$ depends on $pH$.

**Example ($Fe$ Hydroxide):**

$$Fe(OH)_{3(s)} + 3 H^+ + e^- \rightleftarrows Fe^{2+} + 3 H_2O$$

In the Law of Mass Action (LMA), solids and pure water are excluded:

$$K = \frac{a(Fe^{2+})}{a^3(H^+) \cdot a(e^-)}$$

$$pe = pe^0 + \frac{1}{1} \lg \frac{a^3(H^+)}{a(Fe^{2+})}$$

**General Formulas:**

- **General I (Standard):** $pe = pe^\circ + \frac{1}{n} \lg \left( \frac{\prod a^v (Ox)}{\prod a^v(Red)} \right)$
- **General II ($pH$ explicit):** $pe = pe^\circ + \frac{n_p}{n_e} pH + \frac{1}{n_e} \lg \left( \frac{\prod a^v (Ox \text{ w/o } H^+)}{\prod a^v(Red)} \right)$
- **General III ($pH$ corrected):** $pe^0(pH) = pe^0 - \frac{n_p}{n_e} pH$

General I:

The pe of a half-reaction is determined by the activities (or concentrations in dilute solutions) of the oxidized and reduced species:

$$pe = pe^\circ + \frac{1}{n} \lg \left( \frac{\prod a^v (Ox)}{\prod a^v(Red)} \right)$$

General II

$$
pe = pe^\circ + \frac{n_p}{n_e}pH + \frac{1}{n_e} \lg \left( \frac{\prod a^v (Ox \text{ without }H^+)}{\prod a^v(Red)} \right)
$$

General III

$$
pe^0(pH) = pe^0-\frac{n_p}{n_e}pH
$$

---

Exercise 2:

The following data were measured in a surface water: c(Mn2+) = 1∙10-7 mol/L,  pH = 8. Calculate the redox intensity in this water (assuming ideal conditions  (c = a)). 

$$
0.5 MnO_{2(s)} + 2 H^+ + e^- \rightleftarrows 0.5 Mn^{2+}+ H_2O
$$

lg K = 20.8

$$

$$

---
Exercise 3: What is the ratio of the concentrations of sulphate (SO4 2-) and  hydrogensulfide (HS-) at pH = 8 and pe = -4?  Assume ideal conditions c = a)). 

SO4^2- + 9 H+ + 8 e- <-> HS- + 4H2O 

lgK = 34



---

### Redox Equilibria including Dissolved Gases

Two types of formulation: 
• using the concentration of the dissolved gas 
• using the partial pressure of the dissolved gas above water phase  (e. g. air components)

→ Conversion of the constants / standard redox intensities by means of      Henry’s Law 

$$
pe = pe^\circ + \frac{1}{n} \log \left( \frac{[Ox]^m}{[Red]^q} \right)
$$



---
# 💡 Key Takeaways


---
# 💭 Questions

- What is the definition of the redox intensity pe and the analogy  between pe and pH?
- How to calculate the redox intensity – also for pH-dependent  reactions?

---
# 🐢 Definitions


---
# 📅 Homework



I'll make sure to be much more thorough. I'll maintain your exact structure, keep all the original explanations, and simply enhance the formatting and clarity without stripping away any of your content.

# 📅 Monday 19th January 2026

# 📒 Class Summary

Today's session focused on **Redox Equilibria** in aquatic systems. We defined the importance of redox reactions alongside acid-base processes and established the rules for determining **Oxidation Numbers (ON)**. We introduced **Redox Intensity ($pe$)** as a master variable, explored its analogy to $pH$, and analyzed how to calculate intensity for both simple and complex, $pH$-dependent half-reactions using the Nernst equation.

---

# 📝 Notes

## Reaction Equilibria in Aquatic Systems

### Redox Equilibria

**Definition:** Redox reactions belong, besides acid/base reactions, to the most important processes in aquatic systems. Several natural water constituents are part of redox couples, and some elements are part of different redox couples.

#### **Processes: Riverbank Filtration**

In riverbank filtration, there is a characteristic sequence of redox processes as water moves through the subsurface:

1. **Aerobic Degradation:** Microbes consume dissolved oxygen to break down organic matter.
    
2. **Nitrification (Aerobic):** Ammonia is converted to nitrate.
    
3. **Denitrification:** Nitrate is reduced to nitrogen gas once oxygen is gone.
    
4. **Reduction of $Fe^{3+}$ and $Mn^{4+}$:** Transition to anaerobic conditions where metal oxides become soluble.
    
5. **Reduction of Sulfate:** The final stage in strongly reducing environments.
    

---

### Oxidation State or Oxidation Number (ON)

**Definition:** Oxidation number (ON) is the hypothetical charge resulting from hypothetical bond cleavage (formal dissociation of the compound into ions). The electronegative partner receives (formally) the bonding electrons.

**Examples:**

- **$HCl$:** $H$ ($+1$) / $Cl$ ($-1$).
    
- **$H_2O$:** $H$ ($+1$) / $O$ ($-2$).
    

Oxidation numbers are used by chemists to track the movement of electrons. The following rules are ordered by **priority**:

#### **1. Pure Elements: $ON = 0$**

If an atom is by itself or bonded only to its own kind (e.g., $Fe$, $O_2$, $P_4$), its $ON$ is **0**. No electrons are "pulled" away.

#### **2. Monatomic Ions: $ON = \text{Ion Charge}$**

The $ON$ is simply the charge of the ion.

- $Cl^-$: $ON = -1$.
    
- $Fe^{3+}$: $ON = +3$.
    

#### **3. The "Sum" Rule**

- **Neutral molecules:** $\sum ON = 0$.
    
- **Polyatomic ions:** $\sum ON = \text{ion charge}$.
    

#### **4. Fluorine in Compounds: $ON = -1$**

Fluorine is the most electronegative element and is always **-1** in compounds.

#### **5. Metals: Positive $ON > 0$**

Metals lose electrons, so their $ON$ is always positive.

- **Alkali metals (Group 1):** Always **+1**.
    
- **Alkaline earth metals (Group 2):** Always **+2**.
    

#### **6. Hydrogen: $ON = +1$**

Usually **+1**. Exception: bonded to a metal (hydride like $NaH$), it becomes **-1**.

#### **7. Oxygen: $ON = -2$**

Usually **-2**. Exception: in peroxo compounds (like $H_2O_2$), it is **-1**.

_Note: If rules conflict, the lower ordinal number (higher priority) wins._

#### **Exercise: Oxidation Numbers**

![[Pasted image 20260112001707.png]]

- $O_2 / H_2O \rightarrow 0 / +1, -2$
    
- $Mn^{2+} / MnO_2 \rightarrow +2 / +4, -2$
    
- $H_2S / SO_4^{2-} \rightarrow +1, -2 / +6, -2$
    
- $LiH \rightarrow +1, -1$
    
- $N_2, NH_3, NH_4^+ / NO_3^- \rightarrow 0, -3+1, -3+1 / +5-2$
    
- $Fe^{2+} / Fe(OH)_3 \rightarrow +2 / +3 \text{ (since } OH = -1\text{)}$
    
- $CO_2, C_6H_{12}O_6, CH_4 \rightarrow +4-2, 0+1-2, -4+1$
    
- $H_2O_2 \rightarrow +1, -1$
    

---

### Redox Equilibria (Dynamics)

**Oxidation:** Loss of electrons (increase of $ON$).

**Reduction:** Gain of electrons (decrease of $ON$).

**Fundamental Balance:**

$$Ox + n_e e^- \leftrightarrows Red$$

- **To the right:** Reduction (gain of $e^-$).
    
- **To the left:** Oxidation (loss of $e^-$).
    

**Roles:**

- **Oxidant (Ox):** Oxidizes the partner, accepts electrons, and is itself reduced.
    
- **Reductant (Red):** Reduces the partner, donates electrons, and is itself oxidized.
    

**Complete Redox Reaction:**

Combined from two half-reactions:

$$Ox_1 + n_e e^- \rightleftharpoons Red_1$$

$$Red_2 \rightleftharpoons Ox_2 + n_e e^-$$

$$-------------------$$

$$Ox_1 + Red_2 \rightleftharpoons Red_1 + Ox_2$$

---

### Redox Intensity ($pe$)

In hydrochemistry, **redox intensity ($pe$)** is a master variable used to describe the power of a solution. It is a dimensionless measure of the activity of electrons ($a_{e^-}$):

$$pe = -\log a(e^-)$$

- **High $pe$:** Oxidizing environment; low $e^-$ activity.
    
- **Low $pe$:** Reducing environment; high $e^-$ activity.
    

**Standard Redox Intensity Calculation:**

$$pe = pe^0 + \frac{1}{n_e} \lg \frac{a(Ox)}{a(Red)}$$

**Example ($Fe$ system):**

$$Fe^{3+} + e^- \rightleftarrows Fe^{2+}$$

$$K = \frac{a(Fe^{2+})}{a(Fe^{3+})a(e^-)}$$

$$pe = pe^0 + \lg \frac{a(Fe^{3+})}{a(Fe^{2+})}$$

---

#### Analogy between $pe$ and $pH$

Both describe the intensity of a master particle in chemical equilibria.

|**Feature**|**pe (Redox)**|**pH (Acid-Base)**|
|---|---|---|
|**Master Particle**|Electron ($e^-$)|Proton ($H^+$)|
|**Log Definition**|$pe = -\log a_{e^-}$|$pH = -\log a_{H^+}$|
|**Intensity Scale**|Tendency to accept/donate $e^-$|Tendency to accept/donate $H^+$|
|**High Value**|Oxidizing (Low $e^-$)|Basic (Low $H^+$)|
|**Low Value**|Reducing (High $e^-$)|Acidic (High $H^+$)|

---

#### Redox Potential ($E_H$) and Nernst Equation

The intensity can also be expressed in Volts via the **Nernst Equation**:

$$E_H = E_H^0 + \frac{2.3RT}{n_eF} \lg \frac{a(Ox)}{a(Red)}$$

- $E_H$: Electrode potential.
    
- $R$: Gas constant.
    
- $T$: Temperature.
    
- $F$: Faraday constant.
    

**Recalculation between $pe$ and $E_H$:**

$$pe = \frac{F}{2.3RT} E_H$$

At $25^\circ\text{C}$:

$$pe = \frac{1}{0.059\text{ V}} E_H$$

_Note: Thermodynamically, a species with a higher $pe^0$ can oxidize one with a lower $pe^0$, but the reaction might be kinetically slow._

---

### Complex Half-Reactions

Many redox reactions involve protons ($H^+$), meaning $pe$ depends on $pH$.

**Example ($Fe$ Hydroxide):**

$$Fe(OH)_{3(s)} + 3 H^+ + e^- \rightleftarrows Fe^{2+} + 3 H_2O$$

In the Law of Mass Action (LMA), solids and pure water are excluded:

$$K = \frac{a(Fe^{2+})}{a^3(H^+) \cdot a(e^-)}$$

$$pe = pe^0 + \frac{1}{1} \lg \frac{a^3(H^+)}{a(Fe^{2+})}$$

**General Formulas:**

- **General I (Standard):** $pe = pe^\circ + \frac{1}{n} \lg \left( \frac{\prod a^v (Ox)}{\prod a^v(Red)} \right)$
    
- **General II ($pH$ explicit):** $pe = pe^\circ + \frac{n_p}{n_e} pH + \frac{1}{n_e} \lg \left( \frac{\prod a^v (Ox \text{ w/o } H^+)}{\prod a^v(Red)} \right)$
    
- **General III ($pH$ corrected):** $pe^0(pH) = pe^0 - \frac{n_p}{n_e} pH$
    

---

### Exercises (Protocols)

#### **Exercise 2: $Mn$ Redox Intensity**

**Goal:** Calculate $pe$ for surface water.

**Data:** $c(Mn^{2+}) = 1 \cdot 10^{-7} \text{ mol/L}$, $pH = 8$.

**Reaction:** $0.5 MnO_{2(s)} + 2 H^+ + e^- \rightleftarrows 0.5 Mn^{2+} + H_2O$ ($\lg K = 20.8$).

#### **Exercise 3: Sulfate/Sulfide Ratio**

**Goal:** Determine ratio of $SO_4^{2-}$ to $HS^-$.

**Data:** $pH = 8$, $pe = -4$.

**Reaction:** $SO_4^{2-} + 9 H^+ + 8 e^- \leftrightarrows HS^- + 4 H_2O$ ($\lg K = 34$).

---

### Redox Equilibria including Dissolved Gases

Two types of formulation are used:

1. Using the **concentration** of the dissolved gas.
    
2. Using the **partial pressure** above the water phase.
    
    _Conversion is performed via **Henry’s Law**._
    

---

# 💡 Key Takeaways

- **Master Variable:** $pe$ serves as the master variable for redox intensity, just as $pH$ does for acid-base intensity.
    
- **Priority Rules:** Oxidation Numbers must be determined using a strict hierarchy of rules to avoid conflicts.
    
- **Redox Sequence:** In systems like riverbank filtration, oxidants are consumed in a thermodynamic sequence ($O_2 \rightarrow NO_3^- \rightarrow Mn/Fe \rightarrow SO_4^{2-}$).
    

---

# 💭 Questions

- What is the definition of the redox intensity $pe$ and the analogy between $pe$ and $pH$?
    
- How do you calculate the redox intensity for $pH$-dependent reactions?
    
- List the rules for determining Oxidation Numbers in order of priority.
    
- Explain the difference between an oxidant and a reductant in terms of electron movement.
    
- How is the Nernst equation used to relate $E_H$ and $pe$?
    
- Describe the typical sequence of redox reactions observed in riverbank filtration.
    

---

# 🐢 Definitions

- **Redox Intensity ($pe$):** The negative common logarithm of electron activity.
    
- **Oxidation Number:** A hypothetical charge assigned to an atom based on bond cleavage rules.
    
- **Henry’s Law:** The relation used to convert gas partial pressures to dissolved concentrations.
    
- **Nernst Equation:** Relates the reduction potential of a half-cell to the activities of the chemical species.
    

---

# 📅 Homework

- Complete the numerical solutions for **Exercise 2** and **Exercise 3**.
    
- Review the priority rules for $ON$ specifically for peroxo and hydride compounds.
    

**Would you like me to provide the step-by-step numerical derivation for the Sulfate/Sulfide ratio in Exercise 3?**