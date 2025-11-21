---
Class: "[[03 Hydraulic Engineering]]"
Date: 2025-11-13
Last Modified: Thursday 13th November 2025 09:24
---
# Thursday 13th November 2025

# 📒Class Summary

Overview of the hydraulics of fixed weirs, discharge formulas, weir coefficients, complete vs incomplete overtopping, undershot flow (Torricelli), backed-up outflow, components of a fixed weir, overflow head and cavitation, stilling basins, conjugate depths, hydraulic jump theory, and energy dissipation.

---
# 📝 Notes

## Waterway Transportation Engineering

### Fixed Weirs and Stilling Basins

#### Definition of a Weir

A **weir** is a hydraulic structure that creates a controlled upstream water level and forces flow over a crest. It is typically used for **flow regulation, water level control, flood protection**, and **energy dissipation**

#### Types of Weirs (with definitions)

- **In-river solution**  
    A fixed structure built directly in the riverbed for water level control and flow measurement.
- **Piano-key weir**  
    A high-efficiency weir with zig-zag lateral geometry that increases discharge capacity without raising crest height.
- **Labyrinth weir**  
    A folded-planform weircrest that lengthens the spillway crest to pass more flow for the same head.
- **Flood-protection spillway**  
    A bypass spillway that diverts excess floodwater into another channel or relief basin.
- **Pre-lock weir**  
    A structure that prevents sediment inflow into a lock’s retention area, ensuring navigational safety.
- **Dam and spillway**  
    A crest integrated into a dam to regulate reservoir water levels and release excess water.

![[Pasted image 20251119100154.png]]

---
### Hydraulics of Fixed Weirs

A fixed weir produces **free overflow** when water overtops the crest. The **energy head** above the crest determines the discharge.

![[Pasted image 20251119100222.png]]

**Energy head:**
$$h_E = h + \frac{v_0^2}{2g}$$
In most cases $v_0 \approx 0$, so $h_E \approx h$.

#### Discharge Formula (General Poleni Equation)
$$Q = \frac{2}{3} \, \mu_E \, b \, \sqrt{2g} \, h_E^{3/2}$$
For negligible approach velocity:
$$Q = \frac{2}{3} \mu \, b \sqrt{2g} \, h^{3/2}$$
Where:
- Q: discharge (m³/s)
- $\mu$: weir coefficient
- b: crest width
- h: overtopping head

---

### Weir Coefficients

![[Pasted image 20251119100414.png]]

Typical values:

- **0.49–0.51** sharp-edged horizontal crest
- **0.50–0.55** wide crest, well-rounded edges
- **0.65–0.73** fully rounded crest
- **0.64** sharp-edged, ventilated nappe
- **0.73–0.75** round-crowned, vertical upstream, inclined downstream
- **0.75–0.79** roof-shaped crest

The value of $\mu$ depends on crest shape, approach flow, and aeration of the nappe.

---

### Complete vs Incomplete Overtopping

![[Pasted image 20251119101126.png]]
- **Complete overtopping**  
    The flow fully separates from the upstream face → ventilated nappe → regular Poleni flow.
- **Incomplete overtopping**  
    Upstream submergence reduces overflow capacity.
Correction factor:

$$c = (1-[\frac{h_u}{h}]^x)^y = f(\text{Form}, \frac{h_u}{h})$$
Where c adjusts the weir coefficient for upstream submergence.

![[Pasted image 20251119101203.png]]


---

### Flow Under Weirs (Undershot Flow)

Flow beneath a gate follows **Torricelli’s law**:
$$Q = \mu \, a \, b \, \sqrt{2 g h_0}$$
Where:

- a: opening height
- b: width
- h_0h0​: upstream head
- μ: composite coefficient
    μ=ϕ ψ
    - ϕ: energy-loss coefficient
    - ψ: constriction coefficient
![[Pasted image 20251119101223.png]]

Torricelli 

$$Q = \mu \cdot a \cdot b \cdot \sqrt{2g \cdot h_0}$$
\mu includes the \psi and \phi coefficients

a -> opening height
b -> opening width
phi -> loss coefficient
psi -> constriction coefficient
mu -> weir coefficient

---

### Backed-Up Outflow

When downstream water level submerges the outlet, the discharge becomes:

$$Q = \mu_u \cdot a \cdot b \cdot \sqrt{2g \cdot h_0}$$

The coefficient μu\mu_uμu​ depends on the ratio h0​/a and on downstream submergence h2​/h0​.

**Why 90° gates?**  
A vertical gate minimizes contraction effects and maintains a predictable velocity distribution.

---
### Components of a Fixed Weir

> **Explanation of each part**

- **Headwater (Upper Water Body)**  
    Upstream region controlling the available head.
- **Fixed Weir Body**  
    Crest section where overflow begins. Controls overtopping and discharge.
- **Overflow Jet**  
    Free nappe that falls into the stilling basin.
- **Stilling Basin**  
    Structure designed to **force a hydraulic jump** for energy dissipation.
- **Tailwater (Lower Water Body)**  
    Downstream flow condition that determines jump location.

Additional structural elements:

- **Indentation/Threshold** → stabilizes jump formation
- **End sill** → reduces scour by stabilizing jump toe
- **Appurtenances** for aeration or energy dissipation

![[Pasted image 20251118131123.png]]

> study formula for hydraulic jumpz

---
### Overflow Head and Cavitation Risk

To prevent cavitation:

1. $h < h_d$: **positive pressure**
2. $h = h_d$​: **atmospheric pressure**
3. $h > h_d$​: **negative pressure → cavitation risk**

$$h_d \geq 0.8$$
![[Pasted image 20251118131543.png]]

- Discharge coefficient  of the Standard profile (WES)
![[Pasted image 20251118133404.png]]

### Stilling Basin

A **stilling basin** forces a **hydraulic jump** to dissipate energy safely.

> Purpose: convert supercritical flow into subcritical flow while preventing scour.

---
### Theory of Conjugate Depths

The conjugate depths $h_i$​ and $h_o$​ satisfy momentum and energy equations.

![[Pasted image 20251118134605.png]]

**Bernoulli**

$$
h_0+\frac{v_o^2}{2 \cdot g}+e=h_i+\frac{v_i^2}{2 \cdot g} + h_v
$$
Iterative form:

$$hi=\sqrt{\frac{(1+\zeta)^2\cdot q^2}{2 \cdot g \cdot (h_{E,O}+e-h_i)}}$$
Where:

- $v_i = \frac{Q}{b h_i}$
- ζ: energy loss factor
- e: elevation to control jump position

---

### Supportive Force Set (Momentum Equation)

Momentum balance:

$$
\rho Qv_i + \frac{1}{2}\rho g h_o^2 b = \rho Q  v_ö + \frac{1}{2}\rho g h_ö^2 b 
$$
Conjugate depth ratio:

$$
\frac{h_ö}{h_i} = 1/2 [\sqrt{8 Fr_i^2+1}-1]
$$

Degree of ponding: $\epsilon$ 

$$1,05 \leq \epsilon = \frac{h_u+e}{h_ö}\leq 1,25$$

Interpretation:

- ϵ<1.05 → jump drifts downstream → scour risk
- ϵ>1.25 → jump moves upstream → impact on spillway

---

### Required Length of Hydraulic Jump

Empirical formulas:

- Safranez: $L_T \approx 5.2 h_o$
- Bakhmetef: $L_T \approx 6 (h_o - h_i)$
- Smetana: $L_T \approx 5.6 h_o$
- Page: $L_T \approx 5 (h_o - h_i)$

---

#### Hydraulic Jump as an Energy Dissipater

The analytical equation of the energy dissipated with the hydraulic jump is,

$$\nabla E = \frac{(h_o - h_i)^3}{4 h_i h_o}$$

The power lost by hydraulic jump can be calculated by,

$$P = \gamma_w Q \nabla E$$

Where:

$\gamma_w​$ = Specific weight of water = 9.81 kN/m³  
$\Delta E$ = Energy dissipated as head (m)  
Q = Discharge (m³/sec)  
P = Power dissipated (kW)

---
### Types of Hydraulic Jump

1. **Undular / Wavy Jump (Fr = 1–1.7)**  
    Weak undulations, ~5% energy dissipation.
2. **Weak Jump (Fr = 1.7–2.5)**  
    Small rollers, ~20% dissipation.
3. **Oscillating Jump (Fr = 2.5–4.5)**  
    Unstable oscillations, 20–40% dissipation.
4. **Steady Jump (Fr = 4.5–9)**  
    Most efficient and stable. 45–70% dissipation.
5. **Strong Jump (Fr > 9)**  
    Violent turbulence, 70–85% dissipation. Avoided in structures.

![[Pasted image 20251118141658.png]]

---
# 💡 Key Takeaways

- Weir hydraulics rely on **energy head**, weir coefficients, and crest geometry.
- Overflow discharge follows the **Poleni equation** with exponent 3/2.
- Submergence and upstream head modify the weir coefficient.
- Flow under gates follows **Torricelli’s principle** with contraction and loss coefficients.
- The stilling basin must force a **hydraulic jump** for safe energy dissipation.
- Conjugate depths depend on the **Froude number** and momentum conservation.
- The position of the jump is controlled by **tailwater** and the **basin elevation**.
- Energy dissipation in the jump can reach **up to 85%**.
---
# 💭 Questions

- How does crest geometry influence the weir coefficient μ?
- What hydraulic conditions cause incomplete overtopping?
- How does submergence modify the discharge under a gate?
- Why must the hydraulic jump be forced inside the stilling basin?
- How does the Froude number determine jump type and energy dissipation?
---
# 🐢 Definitions

- **Weir** – Overflow structure used to control water levels and discharge.
- **Stilling Basin** – Energy dissipation structure where a hydraulic jump is formed.
- **Overtopping Head** – Energy height above the crest.
- **Hydraulic Jump** – Rapid transition from supercritical to subcritical flow.
- **Conjugate Depths** – Pair of depths upstream and downstream of a hydraulic jump for the same discharge and momentum.

---
# 📅 Homework

Exercise: Compute discharge for a fixed weir using complete and incomplete overtopping conditions.

