**Instructor:** Prof. Allen Bateman
# Class 1: Introduction to Fluvial Dynamics and Morphodynamics

## Rivers not channels!

* **Natural Rivers:** Self-formed alluvial systems with mobile boundaries in continuous adjustment. Channel geometry (width $B$, depth $h$, slope $S$, sinuosity) co-evolves dynamically with water discharge $Q$ and sediment supply $Q_s$.
* **Engineered Channels:** Fixed, rigid, or artificially stabilized boundaries. Cross-sectional geometry and roughness are static boundary conditions rather than degrees of freedom of the flow.

## Longitudinal River Zonation (Schumm's Zones)

* **Zone 1: Headwaters (Erosional / Sediment Production Zone):**
	* Steep mountain streams, $V$-shaped bedrock-confined valleys.
	* Dominant processes: Bed degradation, mass wasting, mechanical weathering.
	* Typical morphologies: Waterfalls, cascades, and step-pool sequences.


* **Zone 2: Transfer Zone (Transport / Dynamic Equilibrium Zone):**
	* Moderately sloping valleys, gradual valley widening.
	* Dynamic equilibrium: Sediment inflow balances sediment outflow ($Q_{s,\text{in}} \approx Q_{s,\text{out}}$).
	* Typical morphologies: Plane beds, pool-riffle sequences, wandering and meandering reaches.


* **Zone 3: Depositional Zone (Sink / Sediment Storage Zone):**
	* Low-gradient valleys, broad coastal plains, deltas, and estuaries.
	* Dominant processes: Aggradation, deposition, and backwater-controlled flow.
	* Typical morphologies: Dunes, ripples, active bifurcations, and distributary networks.



## Forcing Bed Morphology (Bedforms vs. Slope and Stream Power)

* **Waterfalls / Cascades:** High-gradient structural steps and free-fall chutes ($S > 0.04$).
* **Step and Pools:** Organized boulder and cobble steps alternating with plunge pools, dissipating energy through localized hydraulic jumps ($0.02 < S < 0.05$).
* **Plane Bed:** Flat gravel/cobble beds with low-stage transport and no organized macroscopic bedforms ($0.01 < S < 0.03$).
* **Pools and Riffles:** Rhythmic alternation of deep pools and shallow riffles spaced systematically at $5\text{ to }7$ channel widths ($0.001 < S < 0.01$).
* **Ripples and Dunes:** Lower-regime bedforms in sand-bed rivers under subcritical flow:
* Ripples: Scaled to grain diameter ($D < 0.6\text{ mm}$), independent of flow depth $h$.
* Dunes: Scaled directly to flow depth ($\lambda \approx 5\text{ to }7h$).



## Channel Patterns and Classification

* **Braided Rivers:** Multi-thread network of channels separated by dynamic, unvegetated mid-channel bars. Occur under steep bed slopes ($S_0$), high bedload transport rates ($Q_s$), and high width-to-depth ratios ($B/h \gg 40$) in non-cohesive banks.
* **Meandering Rivers:** Single-thread, highly sinuous channels ($\text{Sinuosity } P = L_{\text{thalweg}}/L_{\text{valley}} > 1.5$). Common in low-to-moderate slope valleys where bank cohesion (silts, clays) and riparian vegetation inhibit lateral widening.
* **Anastomosed Rivers:** Multi-thread network of deep, low-gradient channels separated by stable, vegetated, long-lived floodplain islands. Unlike braided systems, stream power is low, bank strength is high, and channel division occurs by avulsion rather than active bar migration.

## Governing Morphodynamic Variables

* Bed and valley slopes ($S_0$, $S_v$).
* Sediment grain size distribution ($\{D_i\}$: $D_{16}, D_{50}, D_{84}, D_{90}$).
* Mean water depth ($h$) and hydraulic radius ($R_h$).
* Water surface and channel bed width ($B$).
* Cross-sectional mean flow velocity ($U = Q/A$).
* Water discharge ($Q$) and unit discharge ($q = U \cdot h$).
* Sediment discharge ($Q_s = Q_b + Q_{ss}$).
* Armor layer status: Surface layer grain metrics ($F_i$) relative to subsurface substrate ($f_i$).

## High Mountain Streams, Alluvial Fans, and Armoring

* **Mountain Torrents and Slopes:** Gravitational downslope shear stress drives bed stability:

$$\tau_b = \rho g R_h S_0$$


* **Valley Transition and Alluvial Fans:** When a steep, confined canyon discharges into an open valley floor, the cross-section expands ($B \uparrow$), flow depth and hydraulic radius drop ($R_h \downarrow$), and bedload transport capacity collapses ($Q_{s,\text{cap}} \propto \tau_b^{3/2} \to 0$). The channel bifurcates into a braided pattern, building a conical sediment fan with typical slopes between $1^\circ \text{ and } 12^\circ$ ($\approx 1.7\% \text{ to } 21\%$).
* **Sinuous Rivers (Bank vs. Bed Shear Stress):** Sinuosity develops from cross-stream variations in boundary shear stress. Centrifugal acceleration drives core velocity toward the outer bank, increasing local shear stress and bank erosion, while reduced shear stress along the inner bank causes point-bar deposition.
* **Armor Layer:** In poorly sorted gravel-bed rivers, moderate flood flows exceed the critical shear stress of fine gravels and sands but remain below the motion threshold for coarse particles ($D_{84}, D_{90}$). Selective winnowing sweeps away fines, leaving an imbricated surface pavement one to two grain diameters thick that shields the fine sub-pavement.

## Fundamental Conservation and Energy Equations

* **Continuity:**

$$Q = U \cdot A = U \cdot B \cdot h, \quad q = U \cdot h$$


* **Total Hydraulic Head ($H$):**

$$H = Z_{\text{bed}} + h + \frac{\alpha U^2}{2g}$$



where $Z_{\text{bed}}$ is bed invert elevation above datum, $h$ is water depth, and $\alpha \approx 1.0$ is the Coriolis (kinetic energy flux) correction factor.

---

# Class 2: Fluvial Sediment Size Distribution

## Sediment Characterization and Logarithmic Scales

* **Grain Size Definitions:**
	* Coarse fractions ($D \ge 0.0625\text{ mm}$): Grain diameter $D$ is the side length of the smallest square sieve mesh opening through which the particle passes.
	* Fine fractions ($D < 0.0625\text{ mm}$, silts and clays): Grain diameter $D$ is the hydrodynamic equivalent diameter of a quartz sphere having the same terminal settling velocity ($w_s$) given by Stokes' Law:

$$w_s = \frac{g (s-1) D^2}{18 \nu}, \quad s = \frac{\rho_s}{\rho} \approx 2.65$$


* **Base-2 Logarithmic Scaling ($\psi$ and $\phi$):** On a linear scale, sand ($0.0625\text{ to }2\text{ mm}$) occupies a negligible interval compared to gravel ($2\text{ to }256\text{ mm}$). A base-2 logarithmic transformation provides equal visual resolution across all hydrodynamic classes:

$$\psi = \log_2(D) = \frac{\ln(D)}{\ln(2)}$$


$$\phi = -\psi = -\log_2(D)$$



## Standard Grain Size Classifications

* **Gravel:** $256 \text{ to } 2\text{ mm} \implies \psi \in [+1, +8], \quad \phi \in [-8, -1]$
* **Sand:** $2 \text{ to } 0.0625\text{ mm} \implies \psi \in [-4, +1], \quad \phi \in [-1, +4]$
* **Silt:** $0.0625 \text{ to } 0.0039\text{ mm} \implies \psi \in [-8, -4], \quad \phi \in [+4, +8]$
* **Clay:** $< 0.0039\text{ mm} \implies \psi < -8, \quad \phi > +8$

## Cumulative Grain Size Distribution and Linear Extrapolation

* **Cumulative Frequency ($f_{f,i}$):** The sample is partitioned by $N+1$ sieve boundary sizes $D_{b,i}$, where $f_{f,i} \in [0, 1]$ represents the cumulative mass fraction finer than size $D_{b,i}$.
* **Boundary Extrapolation on the $\psi$ Scale:** If the finest mesh $D_{b,3}$ passes a residual mass fraction ($f_{f,3} > 0$, e.g., $2\%$), linear extrapolation on the $\psi$ scale estimates the hypothetical $0\%$ limit ($f_f = 0$):

$$\frac{\psi_{b,0\%} - \psi_{b,3}}{0 - f_{f,3}} = \frac{\psi_{b,2} - \psi_{b,3}}{f_{f,2} - f_{f,3}}$$


$$\psi_{b,0\%} = \psi_{b,3} + \left(\frac{\psi_{b,2} - \psi_{b,3}}{f_{f,2} - f_{f,3}}\right)(0 - f_{f,3})$$


$$\psi_{b,0\%} = \log_2(D_{b,3}) + \left(\frac{\log_2(D_{b,2}) - \log_2(D_{b,3})}{f_{f,2} - f_{f,3}}\right)(0 - f_{f,3})$$



Convert back to metric units in millimeters:

$$D_{0\%} = 2^{\psi_{b,0\%}}$$


* **Characteristic Percentiles ($D_x$):**
* $D_{50}$ (median): Grain diameter for which $50\%$ of the sample mass is finer.
* $D_{84}, D_{90}$ (boundary roughness scales): Characterize the coarse structural framework and govern equivalent Nikuradse roughness height:

$$k_s \approx 2.5 D_{50} \text{ to } 3.5 D_{84}$$


* For any percentile $X$, interpolate the corresponding value $\psi_x$ between adjacent sieve boundaries and evaluate $D_x = 2^{\psi_x}$.



## Unimodal vs. Bimodal Distributions

* **Sand-Bed Rivers:** Unimodal distributions, well-approximated by a continuous Gaussian probability density on the $\psi$ scale:

$$p(\psi) = \frac{df}{d\psi}$$


* **Gravel-Bed Rivers:** Predominantly **bimodal**, exhibiting distinct gravel framework modes ($16\text{ to }64\text{ mm}$) and sand matrix modes ($0.5\text{ to }2\text{ mm}$).
* **Paucity of Pea-Gravel ($2\text{ to }8\text{ mm}$):** Natural river sediments show an underrepresentation of fine gravel ($2\text{ to }8\text{ mm}$) driven by two physical processes:
* Mechanical attrition: Fragile breakdown and rapid crushing of fine pebbles under collision with larger cobbles.
* Bimodal matrix infiltration: Sand grains selectively filter down into open pore spaces within the static gravel framework.



## Derivations of Flow Resistance Laws

### 1. Chézy Equation (Force Balance in Steady Uniform Flow)

Consider a steady uniform control volume of length $L$, wet cross-sectional area $A$, and wetted perimeter $P$:

* Downslope component of fluid weight:

$$W \sin\theta = (\rho g A L) S_0$$


* Boundary frictional shear resistance:

$$F_f = \tau_0 P L$$


* Balancing downslope weight with boundary friction:

$$\rho g A L S_0 = \tau_0 P L \implies \tau_0 = \rho g \frac{A}{P} S_0 = \rho g R_h S_0$$


* Relating boundary shear stress to kinetic head ($\tau_0 = c_f \frac{1}{2} \rho U^2$):

$$\rho g R_h S_0 = \frac{1}{2} c_f \rho U^2 \implies U = \sqrt{\frac{2g}{c_f}} \sqrt{R_h S_0}$$



Defining Chézy's conductance coefficient $C = \sqrt{\frac{2g}{c_f}}$:

$$U = C \sqrt{R_h S_0}$$



### 2. Prandtl-von Kármán Logarithmic Law of the Wall

* Prandtl mixing-length hypothesis:

$$\tau(z) \approx \tau_0 = \rho l_m^2 \left(\frac{du_z}{dz}\right)^2$$


* Setting mixing length $l_m = \kappa z$, where $\kappa \approx 0.40$ is the von Kármán constant:

$$\tau_0 = \rho \kappa^2 z^2 \left(\frac{du_z}{dz}\right)^2 \implies \frac{du_z}{dz} = \frac{u_*}{\kappa z}$$



where $u_* = \sqrt{\tau_0 / \rho} = \sqrt{g R_h S_0}$ is the shear velocity.
* Integrating from hydrodynamic zero-velocity height $z_0$:

$$\frac{u(z)}{u_*} = \frac{1}{\kappa} \ln\left(\frac{z}{z_0}\right)$$



For fully rough turbulent flow over gravel beds, Nikuradse showed $z_0 \approx k_s / 30$:

$$\frac{u(z)}{u_*} = \frac{1}{\kappa} \ln\left(\frac{30 z}{k_s}\right)$$



### 3. Keulegan Equation (Depth-Averaged Log Law)

Integrating the logarithmic velocity profile across total flow depth $h$:


$$U = \frac{1}{h} \int_{z_0}^h u(z) dz = \frac{u_*}{\kappa h} \int_{z_0}^h \ln\left(\frac{z}{z_0}\right) dz = \frac{u_*}{\kappa} \left[\ln\left(\frac{h}{z_0}\right) - 1\right]$$


Using $\ln(h/z_0) - 1 = \ln\left(\frac{h}{e \cdot z_0}\right)$ and inserting $z_0 = k_s/30$:


$$\frac{U}{u_*} = \frac{1}{\kappa} \ln\left(\frac{30 h}{e \cdot k_s}\right) = \frac{2.303}{\kappa} \log_{10}\left(11.04 \frac{R_h}{k_s}\right)$$


For $\kappa = 0.40$:


$$\frac{U}{u_*} = 5.75 \log_{10}\left(12.2 \frac{R_h}{k_s}\right) \quad \text{(Keulegan's Equation)}$$

### 4. Transition to Manning's Empirical Formula

To simplify field computations without logarithms, a $1/6$-power law was fitted to Keulegan's profile over practical relative roughness ranges ($10 < R_h/k_s < 500$):


$$\frac{U}{u_*} \approx A \left(\frac{R_h}{k_s}\right)^{1/6}$$


Substituting $u_* = \sqrt{g R_h S_f}$:


$$U = A \sqrt{g} \cdot k_s^{-1/6} \cdot R_h^{2/3} S_f^{1/2}$$


Combining roughness scales into Manning's resistance coefficient $n = \frac{k_s^{1/6}}{A \sqrt{g}}$ (Strickler relation $n \approx \frac{D_{50}^{1/6}}{21.1}$):


$$U = \frac{1}{n} R_h^{2/3} S_f^{1/2}$$

## Backwater Curves (Gradually Varied Flow - GVF)

* **Governing Differential Equation:**
Differentiating total head $H = Z_{\text{bed}} + h + \frac{U^2}{2g}$ with respect to downstream distance $x$:

$$\frac{dH}{dx} = \frac{dZ_{\text{bed}}}{dx} + \frac{dh}{dx} + \frac{d}{dx}\left(\frac{Q^2}{2g A^2}\right)$$



Given:
* $\frac{dH}{dx} = -S_f$ (energy line slope).
* $\frac{dZ_{\text{bed}}}{dx} = -S_0$ (channel bottom slope).
* $\frac{d}{dx}\left(\frac{Q^2}{2g A^2}\right) = -\frac{Q^2 B}{g A^3} \frac{dh}{dx} = -\text{Fr}^2 \frac{dh}{dx}$.
Substituting these relations:

$$-S_f = -S_0 + \frac{dh}{dx}(1 - \text{Fr}^2) \implies \frac{dh}{dx} = \frac{S_0 - S_f}{1 - \text{Fr}^2}$$


* **Momentum Variation in GVF:**

$$\frac{dM}{dx} = \gamma A (S_0 - S_f)$$



where $M$ is the specific force function and $\gamma = \rho g$.
* **Curve Types and Computational Schemes:**
* Mild slope profiles ($M$-curves, where $h_n > h_c$):
* $M_1$ ($h > h_n > h_c$): Subcritical backwater curve caused by downstream obstructions (e.g., dams, weirs).
* $M_2$ ($h_n > h > h_c$): Drawdown curve transitioning toward free overfalls or sudden steepening.
* $M_3$ ($h_c > h$): Supercritical profile culminating in a downstream hydraulic jump.


* Steep slope profiles ($S$-curves, where $h_c > h_n$): $S_1, S_2, S_3$.
* **Direct Step Method:** Between two known stages 1 and 2:

$$\Delta x = \frac{E_2 - E_1}{S_0 - \bar{S}_f}$$



where $\bar{S}_f = \frac{1}{2}(S_{f1} + S_{f2})$ is evaluated via Manning's equation: $S_f = \frac{n^2 U^2}{R_h^{4/3}}$.



---

# Class 3: Practical Modeling, IBER Workflows, and 1D Conservation Laws

## Flood Inundation and Morphodynamic Study Pipeline

1. **Return Period Definition ($T$):** Dictated by flood hazard standards and land-use risk zoning ($T = 10, 50, 100, 500\text{ years}$).
2. **Gauging Stations and Bathymetry:** Extract stage-discharge series from hydrometric stations and assemble digital terrain models of channel and floodplain topography.
3. **Hydrological Modeling (Ungauged Basins):**
	* Statistical fitting of extreme precipitation distributions (Gumbel, SQRT-ETmax).
	* Rainfall-runoff transformation using lumped or semi-distributed engines (HEC-HMS, MIKE-SHE, MGB) to produce design hydrographs $Q(t)$.

4. **2D Hydrodynamic Modeling:** Simulation of water depth $h(x,y,t)$ and velocity fields $U(x,y,t)$ via 2D depth-averaged engines (IBER, HEC-RAS 2D).
5. **Fluvial Morphodynamics:** Compute boundary shear stress:

$$\tau_b = \rho g h S_f = \frac{\rho g n^2 U^2}{h^{1/3}}$$

and couple bed shear stress to sediment mass conservation (Exner equation):

$$(1 - \lambda_p) \frac{\partial z_b}{\partial t} + \frac{\partial q_{b,x}}{\partial x} + \frac{\partial q_{b,y}}{\partial y} = 0$$



## Operational Rules in IBER 2D

* **Workflow Stages:**
1. Geometry: Import DEM/TIN surfaces and delineate domain boundary lines.
2. Boundary Conditions: Define hydrograph inputs ($Q(t)$) and downstream controls (critical depth, normal slope rating curves).
3. Material Properties: Assign distributed Manning $n$ values by land cover classes.
4. Meshing: Discretize the domain using unstructured triangular or quadrilateral finite volumes.
5. Simulation Run: Compute transient depth-averaged shallow water equations.
6. Post-processing: Map flood hazards ($h$, $U$, $h \cdot U$, bed shear $\tau_b$, morphodynamic evolution $\Delta z_b$).


* **Courant-Friedrichs-Lewy (CFL) Condition:**
Numerical stability requires the time step $\Delta t$ to respect gravity-wave propagation speeds across the smallest mesh cell $\Delta x$:

$$\text{CFL} = \frac{(U + \sqrt{gh})\Delta t}{\Delta x} \le 1.0$$


* **Re-Meshing Invariant:**
IBER maps boundary conditions, roughness coefficients, and elevations to the **mesh nodes and elements**, not the underlying CAD geometry. Modifying boundary conditions or roughness zones requires generating a new mesh before execution; running without remeshing uses the previous mesh topology and ignores geometric updates.

## 1D Conservation Laws: Mass and Momentum

* **1D Continuity Equation (Mass Conservation):**

$$\frac{\partial A}{\partial t} + \frac{\partial Q}{\partial x} = 0$$


* **1D St. Venant Momentum Equation:**

$$\frac{\partial Q}{\partial t} + \frac{\partial}{\partial x}\left(\frac{\beta Q^2}{A}\right) + g A \frac{\partial h}{\partial x} = g A (S_0 - S_f)$$



where $\beta \approx 1.0$ is the Boussinesq momentum flux correction factor.

## Specific Energy and Critical Flow

* **Specific Energy ($E$):** Total energy referenced to the local channel invert:

$$E = h + \frac{U^2}{2g} = h + \frac{q^2}{2g h^2}$$


* **Critical Depth Condition ($h_c$):** Minimizing specific energy with respect to depth ($\frac{dE}{dh} = 0$):

$$\frac{dE}{dh} = 1 - \frac{q^2}{g h_c^3} = 0 \implies \frac{q^2}{g h_c^3} = 1 \implies \text{Fr} = \frac{U_c}{\sqrt{g h_c}} = 1$$


* **Critical Flow Variables (Rectangular Section):**
* Critical depth: $h_c = \sqrt[3]{\frac{q^2}{g}}$
* Critical velocity: $U_c = \sqrt{g h_c} = c$ (celerity of an infinitesimal surface gravity wave).
* Minimum specific energy: $E_{\min} = h_c + \frac{h_c}{2} = \frac{3}{2} h_c$


* **Dimensionless Specific Energy:** Using normalized depth $a = \frac{h}{h_c}$:

$$\frac{E}{h_c} = \frac{h}{h_c} + \frac{1}{2}\left(\frac{h_c}{h}\right)^2 \implies E' = a + \frac{1}{2a^2}$$


* **Step Transition ($z_1 + E_1 = z_2 + E_2$):**
Flow passing over an upward step $\Delta z$:

$$E_1 = E_2 + \Delta z$$



In subcritical flow, the water surface drops over the step. The maximum upward step height before inducing flow choking and raising upstream water levels is:

$$\Delta z_{\max} = E_1 - E_{\min} = E_1 - \frac{3}{2}h_c$$



## Specific Force (Momentum Function $M$)

Across rapid transitions where turbulent dissipation cannot be evaluated directly from energy principles, momentum conservation governs:


$$M = \frac{Q^2}{g A} + \bar{z} A$$


where $\bar{z}$ is the depth to the centroid of flow area $A$. For a rectangular channel of unit width:


$$M = \frac{q^2}{g h} + \frac{h^2}{2}$$

* **Dimensionless Specific Force:** Dividing by $h_c^2$ and substituting $q^2/g = h_c^3$:

$$\frac{M}{h_c^2} = \frac{h_c}{h} + \frac{1}{2}\left(\frac{h}{h_c}\right)^2 \implies M' = \frac{1}{a} + \frac{a^2}{2}, \quad \text{where } a = \frac{h}{h_c}$$



## Alternate Depths vs. Conjugate (Sequent) Depths

* **Alternate Depths ($h_1, h_2$):** Two distinct depths (one subcritical, one supercritical) having the **same specific energy** ($E(h_1) = E(h_2)$). They govern frictionless, continuous channel adjustments (e.g., smooth sills or Venturi flumes).
* **Conjugate (Sequent) Depths ($h_1, h_2$):** Two distinct depths satisfying the **same specific force** ($M(h_1) = M(h_2)$). They define the flow states upstream and downstream of a **hydraulic jump**, where energy is lost to turbulent mixing.

## Hydraulic Jump: Bélanger Equation

Equating specific force across the jump ($M_1 = M_2$) in a horizontal rectangular channel:


$$\frac{q^2}{g h_1} + \frac{h_1^2}{2} = \frac{q^2}{g h_2} + \frac{h_2^2}{2}$$


Rearranging terms:


$$\frac{q^2}{g}\left(\frac{1}{h_1} - \frac{1}{h_2}\right) = \frac{h_2^2 - h_1^2}{2} \implies \frac{q^2}{g} \left(\frac{h_2 - h_1}{h_1 h_2}\right) = \frac{(h_2 - h_1)(h_2 + h_1)}{2}$$


Substituting $\frac{q^2}{g} = \text{Fr}_1^2 h_1^3$ and dividing by $(h_2 - h_1)$:


$$\text{Fr}_1^2 h_1^2 = \frac{h_2(h_1 + h_2)}{2}$$


Introducing the depth ratio $Y = \frac{h_2}{h_1}$:


$$Y^2 + Y - 2\text{Fr}_1^2 = 0$$


Solving for the positive root yields the **Bélanger Equation**:


$$\frac{h_2}{h_1} = \frac{1}{2}\left(\sqrt{1 + 8\text{Fr}_1^2} - 1\right)$$

* **Head Loss in the Hydraulic Jump ($\Delta E$):**

$$\Delta E = E_1 - E_2 = \frac{(h_2 - h_1)^3}{4 h_1 h_2}$$



![[Pasted image 20261003163429.png]]

