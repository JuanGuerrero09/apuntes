# Introduction

Learning objectives: 
- Explain the governing processes of flood generation and propagation 
- Conceptualise the main principles of lumped conceptual hydrological modelling; apply the main concepts to build a hydrological model; analyse results and explain its role in flood risk management 
- Conceptualise the main principles of hydrodynamic modelling; apply the main concepts to build a hydrodynamic model; analyse results and explain its role in flood risk management

Topics:

- Concepts of flood generation and propagation (Study hours: 10 contact +6 self study) 
	- River flood (I. Popescu) 
	- Meteorological inputs for flood risk management (S.J. van Andel) 
	- Flood frequency analysis (B. Bhattacharya) 
- Hydrological modelling (C. Bertini) (Study hours: 4 contact + 6 self study) 
- Hydrodynamic modelling 1D, 1D+SA (I. Popescu) (Study hours: 10 contact + 6 self study) 
- Hydrodynamic modelling 1D/2D (S.J. van Andel)

Grades:

- 35 % Assignment Hydrodynamic modelling using HEC-RAS (individual) 
- 25 % Assignment Hydrological modelling using HEC-HMS (individual) 
- 40 % Assignment Hydrodynamic modelling using HEC-RAS (individual)

# Concepts of flood generation and propagation

## River Flood Modelling 

![[Pasted image 20260526141022.png]]

- Kinematic wave routing 
	- Only the gravity and friction term are part of the momentum equation 
- Diffusive wave routing 
	- The inertial terms in the momentum equation have been removed 
- Fully dynamic wave routing 
	- Based on the complete 1-D equations of unsteady flow (St. Venant equations) 
	- Analytical solution – not available 
	- Numerical solutions (approximate methods) 
		- Finite differences 
			- Explicit 
			- Implicit (4 point scheme,6 point scheme, ADI schemes, …etc)  
		- Finite elements 
		- Boundary elements 

### Models

A model should be not use if:
- You don't understand the problem or the system well enough
- Model has not been tested and verified for situations and conditions similar
- Not have enough data

You need to understand:
- Structure
- Assumptions
- Limitations 

### Flow Routing

Flow or flood hydrograph is translated and attenuated as it moves downstream
![[Pasted image 20260526142823.png]]

Types of routing:
- Lumped / hydrologic:
	- Flow is calculated as a function of time alone at a particular location 
	- Governed by continuity equation and flow/storage relationship  
- Distributed/ hydraulic
	- Flow is calculated as a function of space and time throughout the  system 
	- Governed by continuity and momentum equations 

Major factors to consider:
- Backwater effect: attenuation and delay of flood wave, kinematic wave does not account for it.
- Floodplain storage: affect in the attenuation, needs to consider width of floodplain, lateral slope, vegetation
- Channel slope and hydrograph characteristics: steep channel slopes accelerate flood waves, if it flatter the approx methods break down
- Flow networks: For full networks only unsteady flow and diffusion wave equations can be applied
- Sub-critical flow and supecritical flow


### Advantages and disadvantages of hydraulic routing techniques 

- Fully dynamic routing 
- Advantages:
	- Includes inertial and pressure terms 
	- Wave may move in both the upstream and downstream directions 
- Disadvantages: 
	- Laborious computational work 

Diffusive wave routing −Advantages: − More stable than Dynamic Wave Method near critical flow − As accurate as Dynamic Wave Method for supercritical flow − Limitations: − Wave propagation is in the downstream direction only − Not applicable where backwater effects are significant − Not applicable for dam break-type waves on mild slopes 

• Kinematic wave routing −Advantage:  Robust − Limitations: − Wave propagation is in the downstream direction only − Not applicable where backwater effects are significant − Not applicable for fast-rising waves on mild slopes −Important remarks:  −Does not model hydrograph attenuation, only simple translation −Any attenuation is due to numerical solution  scheme (“numerical diffusion”) −Appropriate  to be applied for  − steep slopes (> 2m/km),  − Well defined channels (e.g., urban areas) 


### Discretization / Schematisation

Multi-thread: Braided
Single thread: Meandering and straight

Multichannel: anastomosing


### Validation / Calibration

• Calibration −executing a number of simulations of past observed events and varying parameters 

• Executing with a calibrated model a number of simulations of past-observed events (different from  those used for calibration).  
	−Simulation of a number of past-observed events with the model, computing or otherwise finding the  range of uncertainty for the results, and finding physically logical reasons for differences between  the simulated and observed results.  
	−Analysis of the impact of the differences as well as of the uncertainties upon the results.  

## Flood Frequency Analysis

### Purpose

Why do we need FFA?:
- To design structures
- For generating flood hazard maps

### Return Period

#### FFA Basics

Flood frequency analysis provides information about the statistical potential for floods. Magnitude of the even is inversely related to its occurrence.
Frequency analysis connects the magnitude of extreme events to their frequency of occurrence, having outputs as:
- Flood magnitude of 100 year reutn period?: **???** $m^3/s$
- Flood magnitude of N year reutn period?: **???** $m^3/s$
- Return period of flood magnitude $Q = N$ year

#### Return period and exceedance probability

Probability of occurrence: probability $p = P (X>=x_T)$ of occurrence of event $X \geq x_T$ in any observation (or year) is the inverse of return period
$$
p = P (X\geq x_T) = \frac{1}{T}
$$
![[Pasted image 20260527112232.png]]

#### Probability of occurrence

If we know the return period **$T$** then we can compute the probability
![[Pasted image 20260527112408.png]]

e.g. Compute the probability of a 50-year flood will occur at leat once in 50 years

p = 1/50 = 0.02
1-p = 0.98^50 = 0.36416

is the probability of it to not happen in 50 years, so, the probability that will occur is 1 - P

1-0.36416 = 0.6358 -> 63.58%

e.g. Imagine that you are taking a mortgage for buying a house in a flood plain  Consider mortgage period = 20 years  What is the probability of a 100‐year flood to occur at least once in the  mortgage period? 

Yearly probability = 1/100 = 0.01 or 0.99 of not happening

not happening for 20 years 0.99^20 = 0.8179

meaning, chance for it to happen once in 20 years 1-p = 18.2%


#### Rainfall frequency vs flood frequency

T‐year rainfall occurs on average once  every T‐year  but a T‐year rainfall may not produce a T‐ year flood 

The catchment conditions affect the runoff from a particular storm, if the soil is saturated then a T-year rainfall may produce a runoff $\geq$ T-year flood, if is dry then that T-year rainfall may produce a runoff $\leq$ T-year flood.

### Data issues

#### Max daily flow / average daily flow

Instantaneous peak flow should be used (ideal) in FFA, but usually only available as average daily flow, so FFA annual max discharge is selected from daily flood data.

#### Annual max series data

- In FFA we consider only the annual peak floods  
- Only one flood for a year is considered 
- Selection of annual max flood ensures that discharge can be  treated as a random variable 

#### Peak over threshold (POT) series

Time series with annual max flood may not have many data points  Sometimes more than one peak per year is considered > Peak Over  Threshold time series 

It is possible that the second largest peak in a year is larger than the  peak for some other years  Useful for more frequent floods as there is a chance that this flood will  occur more than once in a year  POT includes all flood events above a threshold  A common threshold is the minimum of the annual max flood values 

![[Pasted image 20260527114556.png]]

#### Independence and homogeneity

In FFA we assume that the data is independent and homogeneous

Homogeneity: Each flood occurs under the same type of conditions
	non-homogeneity would be comparing the flood by a rainfall and other by a dam break

Independence: Floods occur individually and don't influence each other, and once occur after other ends and return to baseflow
![[Pasted image 20260527115112.png]]

For the statistical properties of the data, statistical tests are needed, common test: Kolmogorov-Smirnov test

#### Period of record issue

What is a sufficient period of record for flood frequency analysis?  dataset to include as many different events as possible  the longer the period of record, the higher is the likelihood of capturing the range of  possible events  better to avoid estimating return period flood values that are greater than twice the record  length (most often not respected)  
e.g. if you have 250 years of data do not trust on 500-year floods

**Confidence in return period:**

![[Pasted image 20260527135916.png]]

### Statistical methods in FFA

![[Pasted image 20260527135958.png]]

Frequency diagram is the starting point for fitting to a probability distribution

The following distributions are used: 
- Normal Distribution 
- Log‐Normal Distribution 
- Extreme Value (EV) Distribution (UK) 
- Log‐Pearson Type III Distribution (US) 

In frequency analysis we consider annual max (or annual min)  values  

#### Log Pearson Type III distribution

Highly used in USA, determined as:
$$
Log_{10}Q = \bar{x} + K\sigma
$$

Where Q is dicharge and $x = Log_{10}(Q)$, $\bar{X} = \sum x/N$ 

Sigma is standard deviation of x and N the number of data points

$C_s$: Coefficient of skewness 

![[Pasted image 20260527140834.png]]
![[Pasted image 20260527140844.png]]

#### Extreme value distribution

![[Pasted image 20260527141047.png]]

EVI for rainfall and EVIII for discharge

!TODO - Chicago Rainfall

![[Pasted image 20260527141156.png]]

#### Outlier detection

![[Pasted image 20260527141250.png]]

!TODO - OUTLIER DETECTION FOR GUADALUPE

![[Pasted image 20260527141314.png]]


### Catchment modelling for FFA

Always go for catchment modelling besides FFA, is an alternative and complementary approach to fitting to a statistical distribution
![[Pasted image 20260527150641.png]]
![[Pasted image 20260527150841.png]]

#### ASSIGNMENT MALGUDI CATCHMENT

![[Pasted image 20260527152131.png]]

## Meteorological inputs for flood modelling

Based on: The atmosphere, an introduction to meteorology

### Weather systems - Predictability

Weather work as systems or components

- Air mass: Large bodies of air with homogeneous temperature and moisture
- Fronts:
	- Cold/Warm front: colder/warmer air mass moving in
	- Occluded front: cold air overtakes warmer air
	- Stationary front: air flows on both sides along the boundary of warm and cold air
	- At fronts warm air is pushed up, then it gets colder and has less potential of keeping water, so it generated rain
- Cyclones; Dynamic high and low pressure systems
	- High pressure system: air moving out at surface, anty-cylone
	- Low pressure system (depression), air attracted, cyclone
- Tropical cyclones: moist and warm air over ocean rises, condensation, does further rise of air and creates a chain effect. They have organised system of clouds and thuderstorms and defined circulation:
	- Tropical depression <63 km/h
	- Tropical storm >63 km/h
- Thunderstorm: More stand alone, can be at edges of cyclones and locally. In warm and humid, and ustable air. Needs a trigger for local fast rising of the warm air
	- Can happen due: orography, pushed up a montain, or pushing through inversion layer by strong surface heating (e.g. summer)
	- Fast rising fast cool of the air

Sorted by decreased predictability, being air mass the more predictable and the less predictable the thunderstorm


### Weather and floods

#### Quantitative Precipitation Forecast QPF

Precipitation is harder to predict than temperature or wind

- ECMWF: Global forecasting system IFS (European)
- NCEP (US)
- AI Global Forecast Models: GraphCast (Google), AIFS (ECMWF)
- Weather research and forecasting model https://www.mmm.ucar.edu/models/wrf

## 1D2D River Flood Modelling Exercise

### SOBEK Rural: Overview

Objective: Gain experience in 1D2D numerical simulation of hydyraulic processess

SOBEK Rural includes:
- 1D FLOW Module 
- 2D Overland flow Module



# Hydrological modelling

Uses NetCDF with 1 time series from the satelite and 1 ts of the rain gauge

if we do this changing the station we have the first par of the assignment

REPEAT THIS CHANGING THE STATION
DO FOR ALL THE 9 STATIONS


IF YOU HAVE TO PUT THE TOTAL DEPTH YOU NEED TO LOOK AT THE SUBMITION ?????

when running with satelite data change total depth, before bias correction

write how do we actually think is the best way to solve the final problem
