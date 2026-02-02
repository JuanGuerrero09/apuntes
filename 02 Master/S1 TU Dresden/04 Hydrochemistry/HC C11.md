---
Class: "[[04 Hydrochemistry]]"
Date: 2026-01-11
Last Modified: Sunday 11th January 2026 23:17
---
# 📅 Monday 12th January 2026

# 📒Class Summary

Today's session focused on **Reaction Equilibria in Aquatic Systems**, specifically the **Calco-Carbonic Equilibrium (CCE)**. We explored the chemical relationship between calcium carbonate, carbon dioxide, and water, and how these interactions determine whether water is calcite-dissolving (corrosive) or calcite-precipitating (scaling). The session covered the fundamental laws of mass action, the **Tillmans equation**, and the **Langelier Saturation Index** as tools for water quality assessment and technical treatment design.

---
# 📝 Notes

## Reaction Equilibria in Aquatic Systems 

### Calco-Carbonic Equilibrium (CCE)

Numerous water constituents are simultaneously involved in different processes. Accordingly, a set of equations must be combined to describe the equilibrium position. The CCE (also referred to as lime/carbonic acid equilibrium) links the precipitation/dissolution equilibrium of calcium carbonate (**calcite**) with the dissociation steps of the carbonic acid system (more precisely: dissolved $CO_2$).

**Combined reaction equilibria:**

$$
CaCO_{3(s)}+CO_{2(aq)}+ H_20 \rightleftharpoons Ca^{2+} + 2 HCO_3^-
$$

**Relevance for natural and technical processes in water chemistry:**

- **Hardness:** Dissolution of calcite by $CO_2$-containing water is an important source of $Ca^{2+}$ and $HCO_3^-$ in natural waters.
- **Buffer Capacity:** Direct influence on the pH and the buffer capacity of natural waters.
- **Corrosion:** Excess concentration of dissolved $CO_2$ causes corrosion in pipes and distribution networks.
- **Technical Design:** Important basis for designing deacidification and softening processes

---

#### Elementary Reactions and Overall Reaction

To describe the system, we break it down into elementary reactions. **Complex formation** (the association of ions into soluble clusters) must ideally be considered; if ignored, it results in pH deviations of **0.02 to 0.05 units**. Extensive sets of these equations usually require numerical software for exact solutions.

**Elementary Reactions:**

1. **$CO_2$ Dissolution:** $CO_{2(aq)} + H_2O \rightleftharpoons H^+ + HCO_3^-$ (Constant: $K_{a1}^*$)
2. **Bicarbonate Dissociation:** $H^+ + CO_3^{2-} \rightleftharpoons HCO_3^-$ (Constant: $1/K_{a2}^*$)
3. **Calcite Dissolution:** $CaCO_{3(s)} \rightleftharpoons Ca^{2+} + CO_3^{2-}$ (Constant: $K_{sp}^*$)

**Overall Reaction:**

$$CaCO_{3(s)} + CO_{2(aq)} + H_2O \rightleftharpoons Ca^{2+} + 2 HCO_3^-$$

The overall equilibrium constant is: $K_{overall}^* = \frac{K_{a1}^* \cdot K_{sp}^*}{K_{a2}^*}$


> **Definition:** A water is in the calco-carbonic equilibrium if calcium carbonate is neither precipitated nor dissolved.

**Important influencing factors in the CCE:**

- Introduction or consumption of $CO_2$.
- Presence or absence of solid calcium carbonate in the subsurface.
- Contact time between calcite and dissolved $CO_2$.
- **Temperature:** Shifts the equilibrium constants significantly.

Since precipitation/dissolution processes in this system take place slowly, an equilibrium state is not always expected. Whether a water is calcite-dissolving or calcite-precipitating is determined by comparing current conditions with the theoretical equilibrium state.

---

#### Basic Equations

The equilibrium is defined by the following individual steps and their corresponding constants:

- **Carbonic Acid Dissociation (Step 1):**$$CO_2 + H_2O \rightleftharpoons H^+ + HCO_3^-$$$$K_{a1}^* = \frac{a(\text{H}^+) a(\text{HCO}_3^-)}{a(\text{CO}_2)} \Rightarrow \frac{K_{a1}^*}{\gamma(\text{HCO}_3^-)} = \frac{K_{a1}^*}{f_{a1}} = \frac{a(\text{H}^+) c(\text{HCO}_3^-)}{c(\text{CO}_2)}$$
- **Bicarbonate/Carbonate Equilibrium:**$$HCO_3^- \rightleftharpoons H^+ + CO_3^{2-}$$$$K_{a2}^* = \frac{a(\text{H}^+) a(\text{CO}_3^{2-})}{a(\text{HCO}_3^-)} \Rightarrow \frac{K_{a2}^* \gamma(\text{HCO}_3^-)}{\gamma(\text{CO}_3^{2-})} = \frac{K_{a2}^*}{f_{a2}} = \frac{a(\text{H}^+) c(\text{CO}_3^{2-})}{c(\text{HCO}_3^-)}$$
- **Calcite Solubility Product:**
$$CaCO_3 \rightleftharpoons Ca^{2+} + CO_3^{2-}$$
$$K_{sp}^* = a(\text{Ca}^{2+}) a(\text{CO}_3^{2-}) \Rightarrow \frac{K_{sp}^*}{\gamma(\text{Ca}^{2+})\gamma(\text{CO}_3^{2-})} = \frac{K_{sp}^*}{f_{sp}} = c(\text{Ca}^{2+}) c(\text{CO}_3^{2-})$$
---

#### Tillmans Equation

The **Tillmans Equation** combines the constants above into a single expression to calculate the equilibrium concentration of free carbon dioxide ($CO_2$) required to keep a specific concentration of calcium and bicarbonate in solution.
$$c(CO_2)_{eq} = \frac{K_T}{f_T}c^2(HCO_3^-)c(Ca^{2+})$$

**Where:**

- $$K_T = \frac{K_{a2}^*}{K_{a1}^* K_{sp}^*}$$
- $$f_T = \frac{f_{a1}f_{sp}}{f_{a2}}$$

If $c(Ca^{2+})$ is set to a fixed ratio (where $c(HCO_3^-) = 2 \cdot c(Ca^{2+})$), the CCE can be represented in a two-dimensional diagram as a curve: $c(CO_2)_{eq} = f(c(HCO_3^-))$.

![[Pasted image 20260129124702.png]]

---
#### Tillmans curve

**Tillmans' curve** (or the Tillmans diagram) is a graphical tool used to determine if water is in **calcium carbonate equilibrium**. It determines whether water will **form scale** (clogging pipes) or be **corrosive** (eating away metal). It focuses on the relationship between **Free Carbon Dioxide ($CO_2$)** and **Bicarbonate ($HCO_3^-$)**.

##### Key Components of the Curve

The diagram is built on the chemical reaction:

$$CaCO_3​+CO_2​+H_2​O⇌Ca(HCO_3​)_2​$$

- **Associated $CO_2$:** The specific amount of carbon dioxide required to keep the calcium and bicarbonate currently in the water from precipitating.
- **Aggressive $CO_2$:** Any $CO_2$ present _beyond_ the associated $CO_2$ required for equilibrium. This portion makes the water corrosive/calcite-dissolving.
- **Temperature Dependence:** The curve shifts with temperature. For example, heating water in a boiler shifts the equilibrium, causing water that was balanced at room temperature to become "scaling."

---
#### Langelier Equation

The Langelier approach calculates the **equilibrium pH** ($pH_{eq, La}$) for a given water composition:

$$
pH_{eq, La} = -lg\,K_{La}-lg\,f_{La} -lg\,c(HCO_3^-) - lg\,c(Ca^{2+})
$$

- **$-lg K_{La}$:** The equilibrium constant for the reaction.
- **$-lg f_{La}$:** The **activity coefficient**, accounting for the "ionic strength" of the water (Total Dissolved Solids). In field versions, this is often called **Factor A**.
- **$-lg c(HCO_3^-)$:** The concentration of **bicarbonate** (Alkalinity).
- **$-lg c(Ca^{2+})$:** The concentration of **calcium ions** (Hardness).

**Saturation Index (SI):**

$$SI = pH_{meas} - pH_{eq, La}$$

- **$SI < 0$:** Calcite-dissolving water (corrosive).
- **$SI > 0$:** Calcite-precipitating water (scaling).
- **$SI = 0$:** Calcite-saturated water (equilibrium).

If the water is not in equilibrium ($SI \neq 0$), any treatment (like removing $CO_2$) will change the concentrations of $CO_2$, $HCO_3^-$, $CO_3^{2-}$, $Ca^{2+}$, and the $pH_{eq}$ itself. This requires an iterative calculation process to find the new equilibrium state.

---

#### **Exercises (Protocol)**

##### Exercise 1: Saturation Index

Is the water calcite-saturated or not?  The following data are known: 

**Data:**

- $c(Ca^{2+}) = 3.5 \text{ mmol/L}$, $c(HCO_3^-) = 5.3 \text{ mmol/L}$, $\kappa_{25 \text{ °C}} = 96 \text{ mS/m}$    
- $pH_{meas} = 6.9$, $\vartheta = 10 \text{ °C}$, $lg K_{La, 10 \text{ °C}} = -2.082$


**Step 1:** Calculate the activity coefficient ($lg f_{La}$) using the **Güntelberg Equation**:

$$
lg\,y_1 = -0.5 \frac{\sqrt{I}}{1+1.4\sqrt{I}}
$$
Conductivity correlated with the Ion strengt ($I = \frac{k_{25 c}}{6200})$

I  = 0.0155 mol/L
lg y1 = -0.053
lg f_La = -0.265

SI = -0.2

SI < 0 -> Calcite dissolving


#### **Exercise 2: Tillmans Comparison**

**Data ($\vartheta = 10 \text{ °C}$):** $K_{a1}^* = 3.428 \cdot 10^{-7}$, $K_{a2}^* = 3.251 \cdot 10^{-11}$, $K_{sp}^* = 3.926 \cdot 10^{-9}$, $pH_{meas} = 6.9$.

Is the water calcite-saturated or not (same water as in exercise 1)?  Calculate the CO2 concentration that is related to the measured concentration of HCO3 (equilibrium)! Then, calculate the equilibrium concentration of CO2 (Tillmans equation) and  compare the values!  ( = 10 °C: Ka1* = 3.428·10-7 mol/L, Ka2* = 3.251·10-11 mol/L, Ksp* = 3.926·10-9 mol2/L2,            k25 °C = 96 mS/m, pHmeas = 6.9, c(HCO3 -) = 5.3 mmol/L) 

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

The results of exercise 1 are confirmed:  The water is not calcite-saturated.         It is calcite-dissolving. 

---
#### Regulatory and Advanced Considerations

**Complex Formation**

Complex formation must be considered for high-precision equilibria of the carbonic acid system. This requires solving extensive mass balance equations through numerical methods/software. Ignoring complex formation results in deviations of **0.02 to 0.05 pH units**.

**German Drinking Water Ordinance Requirements:**

- Water should not be corrosive.
- $pH \geq 6.5$ and $\leq 9.5$.
- **Calcite dissolution capacity** $\leq 5 \text{ mg/L}$ (usually fulfilled at $pH \geq 7.7$).

**Calcite Dissolution Capacity ($D$):**

This is the amount of calcite (mass in mg) that 1 L of water can dissolve until equilibrium is reached. It is directly linked to the excess concentration of $CO_2(aq)$.

- **$D > 0$:** Calcite dissolution capacity.
- **$D < 0$:** Calcite precipitation capacity.
- **Formula:** $D = c(Ca^{2+})_{\text{after}} - c(Ca^{2+})_{\text{before}}$

**Deacidification – Check scheme**

![[Pasted image 20260129131513.png]]

---
# 💡 Key Takeaways

- **Equilibrium Definition:** Water is in CCE when it neither dissolves nor precipitates calcium carbonate.
- **Corrosion vs. Scale:** Tillmans and Langelier indexes help distinguish between corrosive (aggressive $CO_2$) and scaling water.
- **Activity Matters:** In real-world water (non-ideal), we must use activity coefficients (Guntelberg) to adjust for ionic strength.
- **$CO_2$ Types:** "Associated" $CO_2$ maintains balance; "Aggressive" $CO_2$ causes corrosion.

---
# 💭 Questions

- What is the relevance of the CCE for natural (2 examples) and technical processes (2 examples) in water chemistry?
- Formulate the elementary reactions and the overall reaction of the CCE and establish the equations (law of mass action) defining equilibrium constants.
- Name the four primary variables that affect the Calco-Carbonic Equilibrium.
- How is the **Tillmans Equation** applied to calculate equilibrium conditions?
- How do you use the **Langelier Equation** to determine the equilibrium pH?
- Define the **Saturation Index (SI)** and explain what positive, negative, and zero values indicate.
- What is the difference between **calcite dissolution capacity** and **calcite precipitation capacity**?
- Why must **complex formation** be considered for high-precision pH calculations?

---
# 🐢 Definitions

- **Calco-Carbonic Equilibrium (CCE):** The state where water is in equilibrium with calcium carbonate, meaning no net precipitation or dissolution occurs.
- **Associated $CO_2$:** The concentration of dissolved $CO_2$ required to keep calcium and bicarbonate in solution.
- **Aggressive $CO_2$:** The portion of free $CO_2$ that exceeds the equilibrium level and can dissolve calcite.
- **Ionic Strength ($I$):** A measure of the total concentration of ions in solution, used to calculate activity coefficients.
- **Deacidification:** The technical process of removing excess $CO_2$ to prevent corrosion and achieve CCE.

---
# 📅 Homework



