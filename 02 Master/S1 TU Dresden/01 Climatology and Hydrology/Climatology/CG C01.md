---
Class: "[[Climatology]]"
Professor: Dr. Luise Wanner
Date: 2025-10-17
Last Modified: Friday 17th October 2025 09:19
---
# Friday 17th October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

## Intro Boundary-layer meteorology
_Boundary-layer meteorology_, sub discipline of _meteorology_ is about the _state of and processes in the **air layer** in immediate contact with the Earth's surface._
![[Pasted image 20251017093845.png]]
This air layer, about 1 km in thickness and is the **interface** between the free atmosphere (troposphere to be exact) and the Earth’s surface.

The changes in the _bounday-layer_ state are controlled by processes that transfer *momentum*, *energy* and *materials* within the layers up and below. **Flux Variables** are used to quantify the rate of these *transfer processes*.

*Radiation energy exchange* is a key process that regulates the physical and chemical state of the boundary layer. Solar radiation supplies energy for evapotranspiration.

- Boundary layer structure and heigh changes in a day cycle

![[Pasted image 20251017094433.png]]

The behavior is convective during the Daytime and stable, shear driven turbulence during the nighttime.

![[Pasted image 20251017094511.png]]

### Applications of B-L Meteorology

- Parameterization of **surface fluxes** in numerical weather prediction and climate models 
- Quantify & predict exchange of water and carbon 
	- Improved irrigation of croplands 
	- Carbon sink by land biomass 
- Understanding pathways of biological agents (pollen, spore, seeds) 
- Understanding dispersion of air pollutants 
	- Especially relevant in urban area
## Surface energy and mass balances

### Energy Balance
$$
Input -> System -> Output
$$
By the 1st Principle of Thermodynamics: Input – Output – Storage = 0

Forms of energy:
- Radiant
- Thermal
- Kinetic
- Potential
Transport of energy:
- Radiation
- Conduction
- Convection
Assumption: _A system acts as process-response system: cause leads to effect_

## Radiation
Electromagnetic radiation, governing laws for a **full radiator** (=[[#🐢 Definitions | black body]])

**Planck‘s law** describes the amount of radiation emitted at each wavelength

![[Pasted image 20251017095804.png]]

**Stefan-Boltzmann law** describes how much energy is emitted in relation to the black body‘s temperature:

$$
I = \epsilon_0 \; \sigma \; T_0^4
$$

**Wien‘s displacement law** gives wavelength at which maximal energy is emitted:

$$\lambda_{max} = \frac{b}{T_0}$$
Where:
- I Emitted radiation
- $\epsilon_0$ Surface emissivity, between 0 and 1 and black body = 1
- $\sigma$ Stefan-Boltzmann constant σ≈5.670374419×10−8 Wm−2K−4.
- T surface temperature
- b Wien's displacement constant b≈2.897771955×10−3 m⋅K.
- lambda Wavelength of radiation

Radiation of sun and earth occur at a really different wavelengths. 0,48 and 10 $\micro m$ for Sun (6000K) and Earth (300K) 


Gases and particles in the atmospher absorb and scatter radiation (CHAT GPT CLARIFY THIS )
- **Optical window?** in solar radiation wavelenghts
- **Greenhouse affect**: High absorption/scattering in terrestrial radiation
- Ozone absorbs UV radiation -> importance of Ozone layer 
- Largest contribution to greenhouse effect: __water vapor?__ 

### Radiation interaction with matter

Radiation can be spectrally _transmitted_, _reflected_ and _absorbed_.
$$
\begin{align}  
\psi_\lambda \quad \text{""psi"" transmissivity at wavelength }\lambda \\
\alpha_\lambda \quad \text{""alpha"" reflectivity at wavelength }\lambda \\
\zeta_\lambda \quad \text{""zeta"" absorbtivity at wavelength }\lambda \\  
\end{align}
$$
**Kirchhoff's law**: spectral absorptivity is identical to spectral emissivity 
$$\zeta_\lambda = \epsilon_\lambda \quad \text{""epsilon"" emissivity at wavelength }\lambda$$
-> Good emitters are good absorbers!

- full radiator (black body): $\zeta_\lambda = \epsilon_\lambda = 1$ and $\psi_\lambda = \alpha_\lambda = 0$ 
- opaque body ($\psi_\lambda = 0$): $\alpha_\lambda = 1 - \zeta_\lambda = 1 - \epsilon_\lambda$

- land surface (opaque) absorbs and reflects, but does not transmit (CHAT GPT WHAT DOES MEAN THAT NOT TRANSMIT)
- water bodies and the atmosphere absorbs, reflects and transmits

A lot of solar radiation is visibly light.

### Albedo and emissivity

![[Pasted image 20251017101152.png]]

Albedo -> Solar range, and emessivity -> terrestrial range

**Lambart's cosine law**: gives the flux density of the direct-beam radiation at the surface ($S$) based on the flux density normal to the direct beam ($S_i$) and the angle between the direct beam and the normal to the surface ($\theta$)
$$S = S_i cos\theta$$
A part of the incoming solar radiation is scattered by particles in the atmosphere (like clouds) or backscattered between surface and atmosphere
![[Pasted image 20251017101700.png]]
-> Reaches the surface as diffuse solar radiation ($R_{SW,in}$ _Incoming solar (shortwave) radiation_)

### Energy balance of the total earth-atmosphere system
 > Radiation is the only relevant transport form from/to outer space!
 
Solar constant: $S_0 = 1367 +- 2 W m^-2$ with a variation of 3% on an annual cycle
![[Pasted image 20251017101929.png]]
Globally averaged available energy is ¼: $𝑆_0 / 4 = 342 W/m^2$
- The explication is because of the following The area of the disc of incoming radiation is $\pi r^2$ and the sphere is $4\pi r^2$
![[Pasted image 20251017102059.png]]

Find the Earth's equilibrium temperature: the emitted terrestrial radiation equals the absorbed solar radiation.

The albedo (𝛼) accounts for Earth‘s reflectivity. Earth‘s average albedo: 30 % -> 𝛼 = 0.3, The rest (70 %) is absorbed

$$I = \epsilon_0 \; \sigma \; T_0^4$$
$$
S_0 (1-\alpha)\pi r^2 = 4\pi r^2\sigma T_0^4 
$$
- $S_0$​ = constante solar ($\approx 1361\ \mathrm{W\,m^{-2}}$)
- 𝛼 = albedo planetario (≈0.30)

Stefan-Boltzmann law describes how much energy is emitted based on temperature (assuming Earth is black body, i.e., 𝜀0 = 1)

![[Pasted image 20251017102709.png]]
Earth average surface temperature should be based on the calculations -18 degrees but really is 15 due the GHG

*GHG*: Greenhouse gas effect

![[Pasted image 20251017103008.png]]

Radiation of the sun is splitted in 3 *system boundaries*
	i. Top of Atmosphere (_TOA_)
	ii. Earth Surface (_ES_)
	iii. Atmosphere!
100% Comming in and comming out

![[Pasted image 20251017103244.png]]
Bein $A_C$ Atmospheric clouds and $A_a$ Atmosphere (molecules) 
![[Pasted image 20251017103437.png]]


![[Pasted image 20251017103503.png]]

### Energy balance at an "ideal site"

Ideal site = Flat, horizontal, homogeneous and infinite.
![[Pasted image 20251017103938.png]]
### Common abbreviations
![[Pasted image 20251017103956.png]]

- Daytime: both sides positive
- Nighttime: both sides negative
$$R_{net} = G +H+LE$$
Net radiation during the daytime is positive, meaning that is coming towards the surface, while in the night is away from the surface is negative

Ideal site also means:
- Ideal site -> No advection (homogeneous)
- Ideal day -> No clouds




---
# 🐢 Definitions

**black body**: Ideal object that **absorbs all the radiation** que recibe y **emite radiación perfectamente según su temperatura**. Es fundamental para entender cómo se transfiere energía en la atmósfera, los océanos, y la superficie terrestre.
Albedo: Reflectivity of the solar radiation
Convective:
Shear driven turbulence:
Full radiator:
GHG: 

---
# 📅 Homework



