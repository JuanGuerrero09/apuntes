# Extra: Flow Transitions and Hydraulic Jumps
---

## 🌊 Flow Transitions in Open Channels

In open channel hydraulics, a **flow transition** occurs when the **flow regime changes** from one state to another — typically between **subcritical**, **critical**, and **supercritical** conditions.

Such transitions are important because they involve:

- Large **energy dissipation**,
- **Changes in flow depth and velocity**,
- Possible **erosion** or **scouring** near structures.

The classification is determined by the **Froude number** ($Fr$):

$Fr = \frac{v}{\sqrt{g \, h}}$

- **Subcritical flow ($Fr < 1$):** slow, deep, controlled by downstream conditions.
- **Supercritical flow ($Fr > 1$):** fast, shallow, controlled by upstream conditions.
- **Critical flow ($Fr = 1$):** transition point between the two.

---

## ⚡ Energy and Momentum in Flow Transitions

The **specific energy (E)** of a channel section is:

$E = y + \frac{v^2}{2g}$

where:

- $y$ = depth of flow
- $\frac{v^2}{2g}$ = velocity head

At constant discharge, if flow depth decreases, velocity increases, which alters $E$.  
For a given discharge, there exists a **minimum specific energy** corresponding to **critical depth ($y_c$)**.

Critical depth is obtained from:

$$\frac{dE}{dy} = 0$$

which leads to

$$Fr = 1$$

This critical state divides subcritical and supercritical flows.

---

## 💥 Hydraulic Jump

A **hydraulic jump** is a rapid transition from **supercritical to subcritical flow**, usually accompanied by a sudden rise in the water surface, strong turbulence, and large energy dissipation.

It occurs naturally or can be induced (e.g., downstream of spillways, sluice gates, or steep slopes) to **reduce flow velocity** and **protect channels from erosion**.


---

### 🔸 Flow Conditions Across a Hydraulic Jump

- **Upstream (1):** supercritical, high velocity, low depth ($Fr_1 > 1$).
- **Downstream (2):** subcritical, low velocity, high depth ($Fr_2 < 1$).

The relationship between depths $y_1$ and $y_2$ (sequent depths) is derived from the **momentum equation**:

$$\frac{y_2}{y_1} = \frac{1}{2} \left( \sqrt{1 + 8 Fr_1^2} - 1 \right)$$
This expresses how much the flow depth increases after the jump for a given upstream Froude number.

---
### 🔹 Energy Loss

Energy loss ($\Delta E$) in a hydraulic jump is mainly due to **turbulence and mixing** of the supercritical and subcritical flows.  
This loss represents the conversion of **kinetic energy** into **heat and turbulence**.

$$ \Delta E = E_1 - E_2 = \frac{(y_2 - y_1)^3}{4 \, y_1 \, y_2} $$

- $\Delta E$ → energy loss between sections 1 and 2
- $y_1$ → upstream (supercritical) depth
- $y_2$ → downstream (subcritical) depth

In typical hydraulic jumps, **energy losses range between 60% and 90%** of the incoming kinetic energy.  
The larger the difference between $y_2$ and $y_1$, the greater the turbulence and dissipation.

---

### 🔹 Types of Hydraulic Jumps

| Type                 | Froude Range   | Characteristics                          | Appearance     |
| -------------------- | -------------- | ---------------------------------------- | -------------- |
| **Undular jump**     | 1 < Fr < 1.7   | Gentle undulations, little energy loss   | Smooth waves   |
| **Weak jump**        | 1.7 < Fr < 2.5 | Mild rise, some surface rollers          | Small jump     |
| **Oscillating jump** | 2.5 < Fr < 4.5 | Unstable, fluctuating surface            | Irregular      |
| **Steady jump**      | 4.5 < Fr < 9   | Stable, strong turbulence                | Classic jump   |
| **Strong jump**      | Fr > 9         | High energy dissipation, air entrainment | Violent mixing |

---
### 🔹 Energy Dissipation Ratio

The ratio of energy loss to initial specific energy ($E_1$) gives an estimate of the **efficiency** of the hydraulic jump as an energy dissipator:

$$ \frac{\Delta E}{E_1} = 1 - \frac{E_2}{E_1} $$

High values of $\frac{\Delta E}{E_1}$ indicate effective dissipation, reducing downstream erosion and protecting structures such as spillways or stilling basins.

---
## 🧱 Practical Relevance

- Used in **stilling basins**, **spillways**, and **outlets** for energy dissipation.
- Helps **prevent bed erosion** downstream.
- Provides **aeration** and improves **oxygen transfer** in streams.


---

# 🐢 Definitions

- **Hydraulic Jump:** Sudden rise in water level due to transition from supercritical to subcritical flow.
- **Specific Energy (E):** Total mechanical energy per unit weight relative to the channel bed.
- **Sequent Depths:** The two depths before and after a hydraulic jump related by the momentum principle.
- **Energy Loss ($\Delta E$):** Energy converted into turbulence and heat during the jump.
- **Stilling Basin:** Engineered structure designed to stabilize and contain hydraulic jumps.

---

# 💡 Questions

1. What is the physical meaning of the **specific energy diagram**?
2. How is **critical depth** determined and what does it represent?
3. For a given $Fr_1$, how do you compute the **sequent depth ratio** ($y_2 / y_1$)?
4. Why is a hydraulic jump considered an **energy dissipation** mechanism?
5. How does the **Froude number** influence the type and intensity of a hydraulic jump?

---