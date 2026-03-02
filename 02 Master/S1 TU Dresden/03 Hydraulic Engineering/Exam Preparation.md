Topics:
- Types of current in a river, phenomena in the bends and types
- Difference between hydrograph and rating curve, advantages and steps to stabluish them
- Max velocities for open channelo
- By discharge calculate mean and create the discharge-height curve
- Calculation with Manning-Strickler with non-uniform roughness
- Calculate bed movement based on the river section using shields diagram
- Calculate sediment transport rate for river cross section
- Weir design plues:
	- Degree of ponding
	- Stilling basin dissipation
- Fish migration
- Criteria for building a fishway
- Design Kaplan turbine
- Name different canal outlet types depending on discharge and water level.


No idea:
- Why is it beneficial to know the approximately shape of the free stream overflow of a sharp crested weir for the designed discharge, if you are interested in designing heavy mass concrete weir at this location?
- Explain the usage of multiple pole pairs at the generators of hydropower plants!
- Explain the key differences between a lock chamber and a ship lift concerning the given head at a construction side, the water losses during the transportation process as well as the time needed for the transportation of vessels!

## Questions?

### Lecture 1 (Introduction)

- Main objetives of river engineering: minimize the natural adverse effects to human interests, and optimize the benefits to human interests. 
- Why are rivers important: river engineering supports sustainable development by managing rivers for human needs such as flood  control, water supply, energy, and transport while preserving ecosystems. 
- Largest rivers by discharge: Amazon river, congo river, orinoco river
- Larges rivers by length: Nile, Amazon and Yangtze
- Components of river system: Channel, catchment area, raingall-runoff relation and sediment yield
- River classification based on variation of discharge: Perennial (permanent), intermittent (seasonal), ephemeral (temporary), exotic and torrential
	- Perennial -> continuous flow throughout the year -> amazon, nile, missipi, humid regions
	- Intermittent -> seasonal during wet periods -> murray, senegal -> Monsoonal or mediterrenal
	- Ephemeral -> Flow only after rainfall -> wadis -> arid or semi arid areas
- River classification based on location: Mountain rivers, floodplain rivers, delta rivers, tidal rivers
	- Mountain -> fast -> v-sjaped -> high erosion -> cold clear water
	- Floodplain -> slow -> wide, meangering ->  fertile alluvium
	- Delta rivers -> slow/variable -> triangular/fan -> depositional
	- Tidal -> variable -> wide, influenced by tides -> brackish sediment -> estuaries, mangroves
- River classification based on planform: Straignt rivers, meangering rivers, braided rivers
	- ![[Pasted image 20260214165533.png]]
- Flow in a straight channel (high velocity in the middle of the section) vs Flow in bends (erosion and fast flow outside of curve and deposition and slow flow inside of the curve)
- Current types in watercourses: Primary current, secondary current and spiral current
- **Cutbank** the outside of a meander (concave bank), water velocity is high and shear stress is high, erosion occurs
- **Point bar** the inside of a meander (convex bank), water velocity is low, shear stress is low, deposition occurs
- Stream channel migration stages?: Neck formation (makes the meander bend more pronounced) -> cutoff (during high flow the river breaks in the neck) -> oxbow lake formation (abandoned meander becomes u-shaped oxbow lake)
- What happens when a meandering stream is artificially straightened?: Increased slope
- Vegetation zones?: low water level (zone with pondweed), mean water level  (with reed), flood level (willow bushes with hardwood and softwood), highest flood level

### Tutorial 1: Discharge calculation

- Measurement methods for river discharge: Velocity-area method, weir and flumes, rating curve
- Importance knowing discharge: water availability, flood prediction and design, sediment transport
- Area velocity method: One point (0.6D Velocity), two points (0.2D and 0.8D)
- Two point method is not used for depth less than 0.76 m: too close to water surface and no reliable results
- Velocity Area (Float) method: Calculate surface velocity by V_s = L / t, correct converting surface velocity to mean velocity with a correction factor (rough natural channels 0.8-0.85 and smooth artificial channels 0.85-0.9) Q = A x V

### Lecture 2

Discharge calculation
- **Chézy **(Only empirical)
$$
v_m = C \cdot \sqrt{r_{hy}\cdot S_E}
$$
Velocity from hydraulic radius, energy slope and chezy coef (inc roughness and channel geometry)
- **Darcy-Weisbach**
$$
v_m = \frac{1}{\sqrt{\lambda}}\sqrt{8\cdot g \cdot r_{hy} \cdot S_E}
$$

since
$$
\frac{1}{\sqrt{\lambda}}=-2,0\cdot lg(\frac{k/d}{3,71})
$$
then 
$$
C = \frac{\sqrt{8 g}}{\sqrt{\lambda}}
$$
- **Gauckler-Manning-Strickler**
$$
v_m = k_{st}\cdot r_{hy}^{2/3}\cdot S_e^{1/2}
$$

---
- Steady flow and uniform flow definitions: 
	- Steady: Fluid properties (vel or pressure) don't change over time $\frac{\partial v}{\partial t} = 0$
	- Uniform: velocity is constant regarding distance $\frac{\partial v}{\partial s} = 0$
- Reynolds for river: Re>2320 turbulent $Re = \frac{v D}{\nu}$
- Froude (subcritical, critical and supercritical flow, in between the hydraulic jump) $Fr = \frac{v}{\sqrt{g \cdot h}}$
- Non-uniform roughness:
	- Gauckler-Manning-Strickler
$$
k_{St, total}=[\frac{p_{total}}{\sum_{i=1}^n[p_i / (k_{st,i})^{3/2}]}]^{2/3}
$$
	- Darcy-Weisbach
$$
\frac{1}{\sqrt{\lambda}} = \sqrt{\frac{p_{total}}{\sum_{i=1}^n(p_i\cdot \lambda_i)}}
$$

### Lecture 3

Compound channels:
- Divide the left flood plain, main channel and right flood plain
- Calculate A and $P_w$ per each channel part and all ok

Modes of Transport of Sediment
- Types of total sediment load: Bed material load and wash load
- Types of bed material load: bed load and suspended bed material load.
- Definitions:
	- Wash load: what is transported without exchange with the bed (finer than 0.0625)
	- Bed material load: part of the sediment load that exchanges with the bed
		- Bed load: In contact with the bed, course material, source from bed (sand and gravel)
		- Suspended bed material load: infrequent bed contact, maintained by turbulence, fine material (silt and clay)
![[Pasted image 20260215180931.png]]
Sediment transport
- Bed shear stress velocity: 
	- most important parameter for sediment transport
	- Characterizes the state of the flow
	- Indirect measure for bed shear stress
	- You can't measure it
$$
v^* = \sqrt{\frac{\tau_0}{\rho}} = \sqrt{g \cdot r_{hy} \cdot S_E}
$$
![[Pasted image 20260215182632.png]]

### Tutorial 2
![[Pasted image 20260215205828.png]]

### Lecture 4

- Sediment classes: Gravel -> sand -> silt -> clay
- Sedimentological numbers:
	- Sedimentological Froude-Number:
$$
Fr^* = \frac{\rho \cdot (v^*)^2}{(\rho_s - \rho)\cdot g \cdot d_{ch}}
$$
	- Sedimentological Reynolds-Number
$$
Re^* = \frac{v^* \cdot d_{ch}}{\nu}
$$
**Bed load motion** occurs when bed shear stress is larger than a critical value $\tau^* > (\tau^*)_c$
$$
\tau^* > (\tau^*)_c \qquad  \tau^*=\frac{V_*^2}{(s-1)g\cdot d_s}= \frac{\tau_o}{\rho(s-1)g\cdot d_s} 
$$
Stability parameter $\tau^*$ or _shield parameter_ is function of the shear reynolds number
$$
\tau_o > (\tau_o)_c \qquad \qquad  (\tau_o)_c = \rho (s-1)g d_s (\tau^*)_c
$$
having the _relative density_ of sediment particle $s = \frac{\rho_s}{\rho}$ o

#### 1. Bed Shear Stress and Shear Velocity

Basic parameters to quantify the dragging force exerted by the water on the riverbed.

- **Bed Shear Stress (τo​):**$$\tau_o = \rho_w \cdot g \cdot r_{hy} \cdot S_E$$
- **Wide Channel Approximation (b≫h):**
$$\tau_o = \rho_w \cdot g \cdot h \cdot S_E$$
- **Shear Velocity **($v^*$ or $V_*$):**

$$v^* = \sqrt{\frac{\tau_o}{\rho_w}} = \sqrt{g \cdot r_{hy} \cdot S_E}$$

---

#### 2. Sedimentological Dimensionless Numbers

Used to characterize the flow regime in relation to sediment grain size.

- **Sedimentological Froude Number - **($Fr^*$):**
$$Fr^* = \frac{\rho_w \cdot (v^*)^2}{(\rho_s - \rho_w) \cdot g \cdot d_s}$$
- **Sedimentological Reynolds Number ($Re^*$):**$$Re^* = \frac{v^* \cdot d_s}{\nu}$$
_(Where ν represents the kinematic viscosity of water)_.

---

#### 3. Initiation of Motion Criterion (Shields)

Relates the hydraulic driving force to the gravitational resistance of the grain.
- **Shields Parameter ($\tau^*$):**$$\tau^* = \frac{V_*^2}{(s-1)g \cdot d_s} = \frac{\tau_o}{\rho_w(s-1)g \cdot d_s}$$
- **Relative Density of Sediment ($s$):**$$s = \frac{\rho_s}{\rho_w}$$
- **Condition for Bed Load Motion:**$$\tau^* > \tau^*_c \quad \text{or} \quad \tau_o > (\tau_o)_c$$
- **Critical Bed Shear Stress ($(\tau_o)_c$):**$$(\tau_o)_c = \rho_w (s-1)g \cdot d_s \cdot \tau^*_c$$

---

#### 4. Bed Load Transport (Meyer-Peter/Müller)

Calculates the mass flow rate of sediment once the critical threshold is exceeded.

- **Bed Load Transport Rate ($m_G$):**
    $$m_G = \frac{8}{\sqrt{\rho_w}} \cdot \frac{\rho_s}{(\rho_s - \rho_w) \cdot g} \cdot \left( \tau_o - \tau_{c} \right)^{3/2}$$
- **Expanded Version with Critical Parameters ($\tau^*_c = 0.047$):**$$m_G = \frac{8}{\sqrt{\rho_w}} \cdot \frac{\rho_s}{(\rho_s - \rho_w) \cdot g} \cdot \left( \rho_w \cdot g \cdot r_{hy} \cdot I - 0.047 \cdot (\rho_s - \rho_w) \cdot g \cdot d_{65} \right)^{3/2}$$


- Types of scour:
	- Local scour: directly around the piers due flow acceleration and vortex formation
		- Clear water scour: no sediment is deposited in the scouring area
		- Live-bed scour: sediments are continuosly supplied from upstream
	- Contraction scour: erosion from narrowing of a river or a stream, by increasing flow velocity and sediment transport capacity
	- General scour: Overall degradation of the riverbed across a bridge site, often due to natural changes in the river's flow regime.
- How to measure bed load sediments: 
	- Direct: bed load transport meter or sampler, sediment trap
	- Indirect: dune tracking, ADCP, geophones
- How to measure suspended load sediments:
	- Direct: grab samples at sampling point, depth integrated sampling, multipoint sampling in cross section
	- Indirect: optical backscatter (turbidity), acustinc backscatter
- What does disturbance in bed load balance: Sediment retention in reservoirs, regulation of a river, water withdrawal for cooling of powerhouses, narrowing of cross sections

### Lecture 5

Weirs:
- Overtopped weirs:
	- $Q = \frac{2}{3}\cdot \mu \cdot b \cdot \sqrt{2g} \cdot h^{3/2}$
	- where $h$ is the overtopping height
	- Complete overtopping: Hydraulic jump formed below the top of weir
	- Incomplete overtopping: hydraulic jump above top of weir
- Flow under weirs:
	- $Q = \mu \cdot a \cdot b \cdot \sqrt{2g \cdot h_0}$ 
	- a: opening height
	- b: opening width
	- $\mu = \psi \cdot \phi$ weir coefficient being the $\psi$ constriction coefficient and $\phi$ loss coefficient
- Parts of a fixed weir?: 
	- Upper water body (headwater)
	- Fixed Weir -> Free overflow overfall jet
	- Stilling basin -> Hydraulic jump
	- Identation/Threshold/End sill -> Lower water body (Tailwater)
- Overflow head conditions
	- $h < h_d$ positive pressure
	- $H_d = h$ atmospheric pressure
	- $h>h_d$ negative pressure/cavitation
	- TO AVOID NEGATIVE PRESSURE AND CAVITATION $\rightarrow$ $h_d \ge 0.8h$ 
	- Relation with the **discharge coefficient**:
		- ![[Pasted image 20260216102022.png]]
- Stilling basin
	- ![[Pasted image 20260216102757.png]]
$$
\frac{h_ö}{h_i} = \frac{1}{2} \cdot [\sqrt{8 \cdot Fr_i^2+1}-1]
$$
	- being $h_ö$ and $h_i$ the conjugated depths after and before the jump
	- Degree of ponding $\epsilon$ 
		- $1.05 \le \epsilon = \frac{h_u + e}{h_ö} \le 1,25$
			- if $\epsilon < 1.05$ -> Hydraulic jump goes towards tailwater, damages in river bed -> increase the depth of the stilling basin
			- if $\epsilon > 1.25$ -> Hydraulic jump hit the spillway face -> decrease the depth of the stilling basin
	- Necessary length:
		- $L_T \approx 5.2 h_ö$ -> safranez equation

- Hydraulic jump
	- Energy dissipated: $\nabla E = \frac{(h_ö - h_i)^3}{4h_ih_ö}$ 
	- Power lost: $P = \gamma_w Q \nabla E$
	- where $\nabla E$ is energy dissipated as head and $\gamma_w$ specific weight of water
	- Types of HJ:
		- Undular/Wavy jump ($Fr = 1-1.70$): water surface shows some undulation. The energy dissipation is about 5%. 
		- Weak jump ($Fr = 1.70-2.50$): a weak hydraulic jump occurs. In this case, a series of small rollers develops on the surface of the jump, energy dissipation is about 20%. 
		- Oscillating Jump: ($Fr = 2.50-4.50$): There is an oscillating jet entering the jump bottom to surface and back again without any periodicity. The energy dissipation is between 20 to 40 %.  
		- Steady Jump (**ideal** $Fr = 4.50-9.0$): jump is quite stable and balanced. The steady jump has very good performance, and most of the hydraulic structures utilize this type of jump for the dissipation of energy. The energy dissipation is between 45 to 70 %. 
		- Strong Jump: ($Fr > 9.0$): The jump action is quite rough but effective. It causes a rough water surface with strong surface waves downstream. The energy dissipation is between 70 to 85 %. Because of rough action, a strong jump is avoided in spillways, as far as possible. 
![[Pasted image 20260219172200.png]]
### Lecture 6

- Channel regulation structures and measures:
	- LW (Low water level) - groynes, training dam, revetment, river bottom stabilization, weir, dam
	- MW (Mid water level) - groynes, revetment, training dam
	- FW (Flood water level) - levee, polder

Fish migration:
- Barriers for fishes:
	- dams, weirs
	- pollution
	- high temperature
	- absence of light and natural sediments
- Motivation for fish migration:
	- Migration between different habitat 
	- spawning migration 
	- overwinter survival migration 
	- foraging migration 
	- drifting 
	- compensation 
- Fishways:
	- Natural solutions
	- Technical solutions
- Types of fish migration
	- potamodrom (only in fresh water migration )
	- diadrom (migration between fresh and salt water )
		- anadrom: sea to river
		- catadrom: river to sea
- Limiting value flow velocity:
	- ![[Pasted image 20260216161949.png]]
- requirement for fishways:
	- Usable as long as possible during the year
	- Detectable without any losses of time or energy 
	- Passable without hazard-risk or stress 
	- Geometric and hydraulic design of fishways adjusted to fish fauna 
	- Passable for all species, sizes and ages at the location 
	- Whereever possible: river sediment continuity for benthic invertebrates 

### Lecture 7
- Types of fishways:
	- Vertical slot fishway 
	- Meander fishway
	- Denil fishway
	- Eel-ladder fishway
	- Fish lock chamber
	- Fish lift

### Lecture 8
Hydropower plants
- Power: $$P_{EF} = \eta_{tot} (t) \cdot \rho \cdot g \cdot Q(t) \cdot h_{f, tot}(t)$$
- Efficiency ratio $\eta_{tot}$: $$\eta_{tot} = \eta_{water. conductor} \cdot \eta_{turbine} \cdot \eta_{elec. equipment}$$
- Parts of hydropower plan
	- Dam/wer
	- Spillway 
	- Intake Structure 
	- Sand trap
	- Headrace 
	- Surge Tank/Fore bay 
	- Penstock 
	- Powerhouse  
	- Tail Race
	- Switchyard  
	- Transmission lines 
- Types of turbines:
	- Impulse turbines: Pelton, high heads, driven by jets of water discharged at atmospheric pressure. Looks like sunflower
	- Reaction turbines: Francis, Only part of total head is converted to velocity head, fluid completely fills the passages in the runner, used for low heads
	- Kaplan turbines: also for lower head, admits a large quantity of water
- Pelton design: 
	- jet diameter $d_1$:$$
d_1 = \sqrt{\frac{4\cdot Q}{\pi c_1}} \qquad  c_1 = k_c\sqrt{2gh}
$$
- Kaplan design:
	- Step 1: Max. specific rotational frequency $$n_{q,max}=850 \cdot \frac{1}{\sqrt{h_{netto}}}$$
	- Step 2: Rotational frequency $$n = n_q = \frac{h_{netto}^{3/4}}{Q_T^{1/2}} \qquad Q_T = \frac{Q_{total}}{N_T} $$
	- Step 3: Round n towards the synchronized rotational frequency $$n_{syn} = \frac{60 f}{n} $$
		- p = pole pair
		- f = high voltage networks (USA, Brazil = 60 Hz) (Europe = 50 Hz)

	- Step 4: Recalculate the specific rotational frequency with new synchronized rotational frequency $$n_q = n \cdot \frac{Q_T^{1/2}}{h_{netto}^{3/4}} $$
	- Step 5: Calculate the turning coefficient/speed factor or peripheral coefficient $$k = 0.8+ \frac{4.75 \cdot n_q}{1000}$$
	- Step 6: Calculate the turning velocity / peripheral speed   $$u=k \cdot \sqrt{2 \cdot g\cdot h_{netto}}$$
	- Step 7: Calculate the turbine diameter $$D = \frac{60 \cdot u_1}{\pi \cdot n} $$
	- Step 8: Dimensioning
- Cavitation: Critical pressure $P_{cr}$ = 0.033 $bar$ 

### Lecture 9
### Lecture 10
### Lecture 11

Inland Waterway Engineering
- Types of inland waterways:
	- Navigable by river regulation
	- Navigable by dam control
	- Navigable through flow regulation
	- Artificial waterways - canals
- Types of ships and convoys
	- Pusher convoy
	- Motor vessels

REVISAR DE JOSE 

### Lecture 12

Dynamics of inland Waterway vessels
- Standard cross sections of canals: T/kRT/R/RT Profiles

### Tutorial 5: Spillway Hydraulic
Spillway: constructed at or near the dam site to dispose of surplus water from the reservoir to  the channel downstream. 
- Spillway must:
	- have sufficient capacity. 
	- be hydraulically and structurally adequate. 
	- be so located that it provides safe disposal of water. 
- Types of spillways:
	- based on purpose: 1.Main or service spillway 2. Auxiliary spillway 3. Emergency spillway 
	- based on control: 1.Controlled or gated spillway 2. Uncontrolled or ungated spillway 
	- based prominent feature: 1.free overfall (or straight drop) 2. overfall (or ogee spillway) 3. chute (or open channel or trough) 4. side channel spillway 5. shaft which (or morning glory) 6. siphon 7. conduit (or tunnel) 