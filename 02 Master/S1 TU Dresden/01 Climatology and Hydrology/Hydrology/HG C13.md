---
Class: "[[Hydrology]]"
Date: 2026-02-02
Last Modified: Monday 2nd February 2026 11:13
---
# 📅 Monday 2nd February 2026

# 📒Class Summary


---
# 📝 Notes

## 8. Evapotranspiration

### Types of evapotranspiration

![[Pasted image 20260202111959.png]]

Percentages:
- Transpiration (70-75%)
- Evaporation from rivers, lakes, bare soil (10-15%)
- Evaporation from interception by vegetative surfaces (15%)
- Sublimation from snow and ice (2-3%)

### 8.1 Free-water evaporation, E
Water balance
Energy balance
Pan evaporation, $E_{pan}$ works as a meassure

Penman equation: most common unsed equation

$$ E = \frac{\Delta R_n + \rho_a C_p (e_s - e_a) / r_a}{\lambda_v (\Delta + \gamma)}$$
### 8.2 Transpiration, T

Diffusion of water vapor from the stopata to the atmosphere

Driven by available energy and **vapour pressure deficit**
Pressure in the soil in order of zero and in atmosphere lower than zero


$$
\Psi_{air} = \frac{R_g\cdot T_b\cdot ln(RH/100\%)}{V_m}
$$
Rg gas constant 8.31 mol-1k-1
Vm partial molar volume of water 18x10^-6
Tb dry bulb temperature
RH Relative humidity

Rate of transpiration vs Parameters
- vs Temperature: increases linearly and then goes constant, more temperature do not imply more transpiration
- vs Wind velocity: Higher velocity increases transpiration in an almost linear correlation
- vs Humidity: A lot an constant for small v alues of humidity, then decreases linearly until H2O concentratieon is greater outside the leaf, then it stays constant

### 8.3 Measurement devices

Tools to measure:
- Porometer
- Potometer
- Climate chamber
- Weighing container
- Sap flow meter

### 8.4 Potential evaporation PET

Def: ET from area uniformly covered with vegetation with unlimited access  to soil water and without advection inputs or heat-storage effects. 

- Climate evaporative demand
	- Empirical: methods: temperature and radiation based
	- Micrometeorological: dependend on several meteorological factors (solar radiation, humidity, wind velocity, T)
- Reference exapotranspiration $ET_0$: the amount of water transpired by a short green crop,  completely shading the ground, of uniform height, and never short  of water.

Calculataions:
- Temperature based:
$$
PET = 29.8 \cdot D \cdot \frac{e_s(T_a)}{T_a+273.2}
$$
- Radiation based
$$
PET = \frac{\alpha_{PT}\Delta \, R_n}{\rho_w\lambda_v(\Delta + \gamma)}
$$
in humid regions: $\alpha_{PT} = 1.26$
- Penman-Monteith equation (which is the imrpvement to only penman?)

$$
 PET = \frac{\Delta (R_n-G) + \rho_a C_p (e_s - e_a) / r_a}{\lambda_v \Delta + \gamma(1+r_s/r_a)}
$$

being G net fround heat flux 
ra aerodynamic resistance =f(u)
rs (bulk) surface resistance f(omega, CO, ligth)

for a well-watered Bermuda grass (12 cm)

ET_0 grass reference evapotranspiration
$$
ET_0 = \frac{0.408\Delta (R_n - G)+\gamma\frac{900}{T+273}u_2(e_s-e_a)}{\Delta + \gamma(1+0.34 u_2)}
$$
$$
ET_0 = \alpha E_{pan}
$$
alpha = 0.5 ... 0.85 

**Crop** evapotranspiration, **$ET_C$**
$$
ET_c = K_c \cdot ET_0
$$

and considering soil water stress
$$
ET_c = K_c K_s ET_0
$$
kc examples:
- pinnaple 0.3
- citrus 0.7
- peaches 0.9
- cotton 1.2

### 8.5 Actual Evapotranspiration, ETR

- Land surface water balance (ETR = P - R)
	- for long term averages
	- ETR are low if the error in P data is not corrected
- Soil water balance method
- Lysimeters
- Turbulent flux measurements
	- eddy-covariance method

Methods for estimating actual evapotranspiration, ETR 
- Lysimeters ETR = P - D - \DeltaS being D drainage water and S storage change
- Eddy covariance measurements
$$
ETR = \frac{\rho_a}{\rho_w}\cdot \overline{u_a'\cdot q'}
$$
with u vertical wind ocmponent and q vertical humidity component




---
# 💡 Key Takeaways


---
# 💭 Questions


---
# 🐢 Definitions


---
# 📅 Homework



