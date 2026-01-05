---
Class: "[[03 Hydraulic Engineering]]"
Date: 2025-12-18
Last Modified: Thursday 18th December 2025 09:23
---
# 📅 Thursday 18th December 2025

# 📒Class Summary


---
# 📝 Notes
## Waterways Engineering

### Hydropower Plants

#### Types of Turbines

- Impulse turbines >def
- Reaction turbines > def

#### Impulse turbines

Pelton turbine or pelton wheels, suited for high heads, large circular disc or wheel, driven by jets of water discharged at atmospheric pressure. jet velocities exceed 150 m/s

![[Pasted image 20251218092620.png]]

##### Design of a Pelton turbine

Nozzles:

Wheel diamter

![[Pasted image 20251218092654.png]]

Calculation for the jet diameter $d_1$ 

$$
d_1 = \sqrt{\frac{4 \cdot Q_{Düse}}{\pi \cdot c_1}}
$$

with Q_Düse : Flow through nozzle
d1 = jet diameter
c1 = jet valocity c1 = k_c \sqrt{2 g h}
being k_c = nozzle coefficient (0.96 - 0.99)

#### Reaction turbunes

Under the water, only a part of the total head available at the inlet is converted to velocity head. Works for low and medium heads (Francis turbine)

Kaplan turbine?

Lower head require large quantity of warer. Maximum flow rate achieved when the flow is paralel to the axis

Propeller?


Parts:
- Spiral casing
- Stay vanes
- Draft tube
- Runner

![[Pasted image 20251218095624.png]]

Kaplan parts
- Runner
- driveshaft
- guide vane
- kaplar runner wheel
- Draught tube



![[Pasted image 20251218095322.png]]

Percentage of full load? vs efficiency in per cent

![[Pasted image 20251218095338.png]]
Diagram Pelton vs Diagonal vs Vertical Kaplan vs Bulb vs Cross flow vs Francis turbine

![[Pasted image 20251218100730.png]]
rotational speed vs specific speed based on flow
>explain
It tells how "fast-running" a turbine should be relative to its head and discharge

$$
n_q = n \cdot \frac{Q^{1/2}}{H^{3/4}}
$$
#### e.g Design of Kaplan-Turbine

Step 1. 

Calculate max. specific rotational frequency (empiric approach Mosonyi et al., 2017 -> online) nq,max [1/min], hnetto [m] 
$$
n_{q, max} = 850 \cdot \frac{1}{\sqrt{h_{netto}}}
$$

Step 2

Calculate rotational frequency hnetto [m], Q [m³/s], nq [1/min], n [1/min] 
Q_tutbine = Q_total / N_T
n = nq ....

Step 3: Round n towards the synchronized rotational frequency nsyn. [1/min], f [Hz], p [ - ] 
Europe 50 Hz P = pole pair

n_syn = 60 f / p -> p = 60 f / n (syncronized rotation speed)

-> pole pair always checked depending on the place

Step 4: Recalculate the specific rotational frequency with new synchronized rotational frequency 

replace n in nq formula

Step 5: Calculate the turning coefficient/speed factor or peripheral coefficient nq [1/min], k [ - ] 

K = 0.8 + 4.75 nq / 1000

Step 6: Calculate the turning velocity / peripheral speed  u [m/s] 

u = k sqrt{2 g h_netto}

Step 7: Calculate the turbine diameter D [m] 

D = 60 u_1 / pi n

Step 8: Dimensioning

![[Pasted image 20251218102238.png]]

### Cavitation

>explain in hydropower terms

A reduced pressure under the blades (or buckets) of a turbine runner may lead to a cavitation phenomenon detrimental to the turbine. The term cavitation basically refers to the ability of cold water to boil under low pressure. Under a normal absolute barometric pressure of 1 bar, water starts to boil at 100 oC. However, when the pressure drops to 0.033 bar (which is called the critical pressure, Pcr), it may begin to boil at 25 oC, that is, at normal river water temperature. When the pressure under a runner approaches Pcr, the water in the stream starts boiling, giving rise to cavities (known as cavitation bubbles) filled with water vapor. The boundary between the low-pressure zone immediately under the blades (or buckets) and the highpressure zone in the stream above the runner follows an extremely unstable pattern. The cavitation bubbles find themselves from time to time in the high-pressure zone. As a result, the vapor instantly condenses, and a cavitation bubble collapses. As this takes place, an enormous pressure develops at the bubble center, which spreads quickly in an explosion-like manner. A series of such micro-explosions following one another at very short intervals causes a good deal of noise and vibration in the turbine and may provoke the runner blades into pitting. 

### Hydropower Plants: Capacity and Surge Height Calculation 
![[Pasted image 20251218103017.png]]





---
# 💡 Key Takeaways


---
# 💭 Questions


---
# 🐢 Definitions


---
# 📅 Homework



