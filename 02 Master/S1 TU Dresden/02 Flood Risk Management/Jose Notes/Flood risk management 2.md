---
materia: "[[Flood risk management 2]]"
profesor: PD Dr. Thomas Wöhling
fecha: 2025-10-13
tipo: Clase
etiquetas:
  - universidad
  - 2025/10
  - Remoto/Flood risk management 2
dudas: []
tareas: []
lecturas: []
referencias: []
enlaces_relacionados: []
---

# Flood risk management 2

## Resumen
> Flood risk management requires an understanding of hazard, exposure and vulnerability, and the ability to support decision making under uncertainty. This module integrates the conceptual foundations of vulnerability, the structure of multi-criteria decision analysis (MCDA), and the application of the Analytic Hierarchy Process (AHP) for prioritizing flood mitigation measures.


Exam 50 % and workshops other 50%.

---

## Conceptos clave
  - [[Vulnerability]]
  - [[MCDA in flood risk]]
  - [[AHP method]]

---
# Flood Risk Management II

## 1. Flood Risk Concepts

Flood risk is commonly defined as:

$$
\text{Risk} = \text{Hazard} \times \text{Exposure} \times \text{Vulnerability}
$$
Where:
- **Hazard** : probability & magnitude of flooding  
- **Exposure** : assets, population, infrastructure  
- **Vulnerability** : susceptibility to damage  
Vulnerability is developed in detail in [[Vulnerability]].

## 2. Decision Support in Flood Risk Management
Flood management involves competing objectives:
- Safety  
- Cost  
- Environmental impacts  
- Social acceptance  
- Spatial constraints  
These require structured evaluation approaches such as:
- **MCDA**: see [[MCDA in flood risk]]  
- **AHP**: see [[AHP method]]
MCDA allows integration of qualitative and quantitative criteria, uncertainty, weighting, and scenario comparison.
## 3. Indicators and Criteria
Indicators represent:
- Hazard intensity  
- Building characteristics  
- Socio-economic vulnerability  
- Environmental value  
- Technical performance  
- Implementation feasibility  
A structured indicator hierarchy improves transparency and supports traceable decision models.
## 4. GIS-Based Decision Analysis
GIS supports:
- Spatial data integration  
- Overlay analysis  
- Standardization of indicators  
- Spatial MCDA (SMCDA)  
- Weighted linear combination (WLC)  
- Outranking approaches  
See [[MCDA in flood risk]] for methods and decision rules.
## 5. Analytic Hierarchy Process (AHP)
AHP provides:
- Pairwise comparison matrices  
- Consistency ratio  
- Weight extraction  
- Multi-actor preference integration  
Full methodology in [[AHP method]].
## 6. Integration Framework
The integrated framework for flood risk MCDA includes:
1. Problem structuring  
2. Indicator definition  
3. Standardization  
4. Weighting  
5. Aggregation (additive, multiplicative, outranking)  
6. Sensitivity analysis  
7. Visualization (GIS maps)  
## 7 Scenario planning 
1. Scenario development: focuses on possible change of driving forces of system elements.
2. Scenario analysis: investigates the effect of the changing driven forces via the the system element on system variables.
$$\begin{matrix}\underbrace{\begin{matrix}\text{Climate change}\\\text{land use change}\end{matrix}}\\\text{driver Forces}&\\\downarrow&\\\begin{Bmatrix}\begin{matrix}\text{Run off}\\\text{Land use}\end{matrix}\Biggl\}{\text{Factors}}\\+\\\begin{matrix}\text{Discharge}\\\text{water depth}\\\text{Flood risk}\end{matrix}\end{Bmatrix}\end{matrix} \text{System elements}$$

Inside a flood risk system everything is a element, the things that change due to the driven forces are also called a factor

## 8. Land use as part of the integral flood Risk management 
1. Allocation of land cover classes change
	1. Derivation of propositions 
2. Projection demand of LC classes 
	1. Statistical analysis 
	2. Projections based on 
		1. Projection of socio economic data 
		2. Trend analysis 
		3. Model calculations
### 8.1 methods 
1. Post calcification comparison 
2. Geo-spatial analysis for division of systematic and random change result 
3. Transition matrix 

GIS-Algorithm
1. Buffering mayor roads 100 m, roads 50 m 
2. Buffering largest cities for the hole catchment 
3. Buffering rivers depending on order 
4. Nutrient rich soils and and soil with high ground water 

You can create suitability map for each LC class , but. Single point can be suitable for 2 type of changes, then we can rank the suitability or change based on a multicriteria approach.  
The projection demand for LC classes, the change of the demand for a certain LC class normally may be derived from various sources

### 8.2 land use parameters values 
They are projected in 2 principal ways
1. Projection according to the land cover change 
2. Projection of individual parameter values 

### 8.3 land-use parameter 
Each land use parameter needs to be analyzed for each land use type:

## 9 Frame work of climate change modeling
### 9.1 background 
- flood damages amounted to 325 bn USD$ 
- Overall protection from floods is not possible
	- costal floods 
	- Fluvial floods 
	- Flash floods 
- flood risk is generally assessed based on: 
	- hydrological and hydrodynamic event
	- Losses and damages in flood plains
	- Boundary conditions
- Risk are quantitatively described by risk curves

### 9.2 problem
- significant discrepancy between previous assessed risk and observed flow conditions and damages 
- Current assessment approaches is too narrow to consider the dynamic character of floods
	- Dynamic influenced by natural and anthropogenic induced alterations
- greater exposure and vulnerability
- Rising number of extreme rainfall events
- Change within the frequency and severity of floods

==Flood risk of the past is not an accurate predictor of flood risk of the future==
### 9.3 Methodological framework 
Simulation flood risk:
1. Atmospheric processes
2. Hydrologic processes 
3. Hydrodynamic processes
4. Loss and damage processes
	1. Risk curves
Quantification of uncertainties and dynamics of flood risk 
$$\begin{matrix}
&\text{Data base}&\\
\text{Climate Data}&\text{Spatial Data}& \text{Economic data}
\end{matrix}$$
## 10. Measurement and instruments for Risk reduction overview 
Flood risk management
- risk analysis
	- Hazard Analysis
	- Vulnerability analysis
	- Risk determination
- Risk evaluation 
	- Evaluation of risk 
	- Evaluation of risk reduction
- Risk reduction 

Reduction coefficient
$$
FR=f((p,m,t)_{source},\quad(i,a,f)_{patway},\quad(s,r)_{Receptor},\quad(v,c,d)_{consequence})
$$
P= probability, m=magnitude,==t=retension==
I= inundation, a=attributes, 

1. Pre flood deign implementation, long term intervention increasing retention, reducing vulnerability, insurance, disaster exercise.
	1. Prevention -> reduce magnitude of floods  
	2. Control -> reduce magnitude of floods 
	3. Mitigation ->  reduce vulnerable elements
	4. Preparedness -> Behavioral preparation 
2. Flood event management, short therm intervention, early warning, reservoir control, defense, evacuation, rescue
	1. Defense 
	2. Warning
	3. Emergency response
3. Post flood recovery, short term intervention, relief cleaning, reconstruction, organizational and financial.
	1. Recovery
### 10.1 Measure and instrument for risk reduction
Measure: intervention causing impacts directly, biophysical intervention.
Instrument: Intervention triggering mechanism which lead to impacts indirectly.

We can also find , structural methods and not structural methods
Classification:
- measurement
	- Adaptation measures
		- Direct physical intervention in natural structures
	- Control measures 
		- introduction, alteration of removal of built structures
	- Retreat measures 
		- Permanent or temporal relocation of elements and uses at risk 
- Instruments (Regional or local level)
	- Regulation instrument 
		- Prescriptive regulation of land and behavior in combination whit legally backed enforcement power.
	- Stimulation instruments 
	- Compensation instruments 
		- Distribution of the risk responsibility 
	- information instruments 
		- Transfer the knowledge to the people