---
Class: "[[Climatology]]"
Date: 2026-01-15
Last Modified: Thursday 15th January 2026 19:53
---
# 📅 Thursday 15th January 2026

# 📒Class Summary


---
# 📝 Notes

## 6. Experimental determination of energy and mass exchange

### Eddy Covariance

#### Definition
Eddy covariance is a method that is well used for the measurement of fluxes. It is the measurement of the correlation of the characteristics of turbulence elements that pass the sensor in a certain unit of time and originate from a larger area with the vertical wind  speed. 

• Characteristics: temperature, humidity, CO2 concentration, horizontal wind speed, … • Need to be measured at high rate (~ 10-20 Hz) and high precision 

Assumptions: Steady state, homogeneous flow, isotropic turbulence

Fluxnet webpage

Advantages: • Direct measurement method, no application of empirical constants • Atmospheric flux measurements at ecosystem scale • No disturbance of the ecosystem Disadvantages: • Underlying mathematical algorithm is based on assumptions (see chapter 3, slide 12) → only applicable if those are fulfilled → most limiting: horizontal surface homogeneity & steady-state conditions assumptions • Expensive • Set-up, data processing and quality control require a lot of expertise 

The determination of the turbulent fluxes is based on the natvier stokes equations
![[Pasted image 20260116093251.png]]

#### Instrumentation

Ultrasonic anemometer („sonic“) • Measures:  • 3d wind vector • Virtual temperature • Orthogonal vs. nonorthogonal systems 


Infrared gas analyzer (IRGA) • Measures: • H2O concentration • CO2 concentration • Open- vs. closed-path systems 

#### Correction and quality assurance

Limitation Measure 
Steady state conditions Quality test, flagging/discarding data 
No advection / horizontal & homogeneous surface Suitable coordinate system (coordinate rotation),  quality test 
No density fluctuations WPL correction 
Spectral resolution up to 20 Hz Spectral correction 
Averaging period 10-60 minutes Quality test, ogive test if necessary 

##### Corrections



Sonic temperature: • Speed of sound: 푐2 = 403 푇 1 + 0.32 푒 푝 • Sonic temperature:  푇푆 = 푇(1 + 0.32 푒 푝) • Virtual temperature for comparison:  푇푣 = 푇(1 + 0.38 푒 푝) → Sonic anemometers do not measure the sensible heat flux (푤′푇′) but the buoyancy flux (푤′푇푣 ′) → Schotanus correction: buoyancy flux to sensible heat flux (Schotanus et al. 1983) 

Schotanus correction: 

ADD EQ

Coordinate rotation: • Instrument coordinate: • Orthogonal coordinate system from anemometer • Absolute, independent of the flow field • Natural wind coordinate („double rotation“): • Each (30-min) interval is processed individually • x-axis is parallel to interval mean flow • z-axis is normal to y-x-plane of interval mean flow • Mean v and w are zero! 1st rotation:  horizontal wind 2nd rotation:  vertical wind 

Coordinate rotation: • Planar fit coordinate: • Uses mean flow field of a longt term record • z-axis is perpendicular to the mean streamline  plane • x-axis is aligned with the short-term (30min) flow direction • y-axis is perpendicular to z-axis and y-axis 

Coordinate rotation: Natural wind vs. planar fit • Planar fit overcomes some of the problems associated with the natural wind coordinate system (i.e., over-rotation, loss of information, degradation of data quality) • Planar fit requires a period of several weeks (without movement of anemometer!) to determine the mean streamline plane • Sample dataset comparisons indicate that the natural wind system may lead to an  underestimation of the flux by ~9% 

Spectral correction (Moore-correction): • Various factors affect the „true“  measurement rate: • Time constant of the instrument • Path length of the instrument • Distance between the instruments (sonic – IRGA) • The small eddies (=high frequencies) are not  properly resolved • Comparison with model spectra gives transfer function, that corrects for that loss 

!important
**Correction of density fluctuations (Webb-Pearman-Leuning correction):** 

Problem: • Measurement of concentration per volume unit (not per mass unit)  → changes with density, non-negligible influence in open-path IRGAs! 

##### Quality assurance

Test for steady state conditions: 
![[Pasted image 20260116101919.png]]

Test for sufficiently developed turbulence: • Measured integral turbulence characteristics are compared with modeled ones (see chapter 3, slide 58) • Differences of less than 30% indicate good data quality Integral turbulence characteristics for diabatic stratification:  

Footprint analysis: • Important when different  land-covers are nearby • Test how much of the flux is originating from the target land-use • Set threshold to discard intervals with, e.g. less than 80% originating from target land-use • See chapter 5, slides 4 – 11 

TABLE
criterion valuation Area of application Basic research and expensive continuous measurement programs Financial expense 10 – 50 k€ per system Personal expense Continuous scientific and technical support Education Good micrometeorological and measurement technique knowledge Error Depending on micrometeorological conditions 5-10 % Sampling interval 10 – 20 Hz Temporal resolution of fluxes 10 – 60 minutes Application for chemical compounds Selected inert gases (gas analyzers with high time resolution) Restrictions in the application Sufficient homogeneous footprint area & turbulent conditions  necessary, possibly precipitation (open-path IRGAs) 

### Energy Balance Gap

Surface energy balance
$$
R_{net} - (G + S_a + S_b + S_g) = H + \lambda E
$$
Imbalance

$$
I = 1- \frac{ \lambda E}{R_{net} - (G + S_a + S_b + S_g)}
$$

Dispersive fluxes 

TABLE
Turbulent Organized Structures (TOS) Thermally-induced Mesoscale Circulations (TMC) • Very large turbulent eddies that span the entire boundary layer vertically • Develop randomly • Ocurr even over homogeneous surfaces • Induced by thermal surface heterogeneity (e.g. due to different surface albedo, cooling through evaporation) • Do not ocurr over homogeneous surfaces 


#### Footprint mismatch




---
# 💡 Key Takeaways


---
# 💭 Questions


---
# 🐢 Definitions


---
# 📅 Homework



o