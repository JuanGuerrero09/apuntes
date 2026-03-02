---
materia: "[[Remoto/02 TUD/Flood risk management 2]]"
profesor: "Nombre del profesor"
fecha_entrega: 2025-11-28
dudas: []
tipo: "Tarea"
estado: pendiente # opciones: pendiente | completado
enlaces_relacionados: []
---

# Workshop II
This workshop presents the complete workflow for analysing **plain-flood hazards and risks**, from rainfall input to damage estimation. The modelling chain links:

> **Risk = f(hazard, exposure, vulnerability)**

Flood events dominate climate-related losses, making quantitative risk analysis essential.
## Unit A hydrodynamic modelling
### **1. Meteorological Input – Design Storms**
Flood modelling starts with a **design storm**, defined by:
- rainfall **depth**,
- **duration**,
- **frequency** (probability of occurrence).
Assumption:
> _The design flood has the same frequency as the design storm._

This introduces hydrological uncertainty but remains standard practice.
### **2. Hydrological Modelling**
A rainfall–runoff model converts precipitation into discharge.  
Processes included:
- interception, evapotranspiration, snow
- soil moisture and infiltration
- groundwater contribution
- channel routing

Runoff formation evolves through:
1. **Formation phase** (on land) -> what is the effective amount of eater that goes to the river.
2. **Concentration phase** (runoff converging to river)
3. **Routing phase** (flood wave propagation)
Runoff models can be conceptual if they aren't attached to  a surface (DEM) else they are called physically based.
Model calibration uses metrics such as **NSE** and **KGE** (looks at the High flow).
### **3. Hydrodynamic Modelling**
Hydrodynamic models compute **water levels and inundation depth** using simplified or full shallow-water equations.
Important aspects:
- backwater effects
- flow direction changes
- floodplain retention
- bank erosion & sediment transport
Outputs include inundation maps for different **return periods** and **maximum water-depth maps**.
### **4. Flood Damage Modelling**
Damage estimation relies on **depth–damage curves**, describing how losses increase with water depth.
Types of damage:
- direct tangible (e.g., structural impact)
- direct intangible
- indirect tangible
- indirect intangible
Building-level damage is estimated using **building typologies**, inventories, and vulnerability functions.  
Results are aggregated into **flood damage maps**.
### **5. Flood Risk Assessment**
Risk combines:
- **hazard** (flood frequency & intensity),
- **exposure** (assets in flooded area),
- **vulnerability** (damage functions).
Risk curves relate **return period** to **expected damage**, allowing quantification of uncertainty across scenarios.
## Unit B economic vulnerability
This unit introduces concepts, methods, and tools to assess **economic flood vulnerability**, with focus on:
1. Vulnerability terminology and conceptual framing
2. Damage potential analysis (land use)
3. Damage modelling for buildings
4. Applications in risk management
5. Practical exercises
The goal is to quantify the _potential consequences_ of flood events within the broader flood-risk chain:
**Risk = Hazard × Exposure × Vulnerability**

## Unit C social vulnerability

### **1. Vulnerability – Terms and Concepts**
#### **Flood Risk**
Combination of:
- **Hazard** (frequency & physical characteristics of floods)
- **Exposure** (assets, people, land uses)
- **Vulnerability** (susceptibility, value, coping capacity)
#### **Vulnerability Dimensions** :
- **Direct tangible**: buildings, infrastructure, agriculture
- **Direct intangible**: life, health, environment, cultural goods
- **Indirect tangible**: production losses, market disruption
- **Indirect intangible**: migration, competitiveness, social effects
#### **Key Definitions**:
- **Flood damage ex post** – measured after an event
- **Flood damage ex ante** – modelled for a future event
- **Asset value** – total value of all assets exposed
- **Maximum probable loss** – damage of the most extreme event
- **Damage expectancy value** – integrated damage across return periods
- **EAD (Estimated Annual Damage)** – yearly-integrated expected damages

### **2. Damage Potential Analysis (Land Use)**
Estimate the damage potential of land-use categories using spatial and socio-economic datasets.
#### **Methodology** :
Damage potential analysis consists of:
1. **Asset value analysis**
    - Determines economic values of land-use units
    - Land cover provides the spatial structure of exposure.
		- Coarse resolution: **CORINE** 
		- High resolution: **ATKIS** 
	- Socio-economic values assigned to each land-use category, using statistical sources like EUROSTAT or national statistical offices.
		- Housing: **~313 €/m²**
		- Business areas: **~324 €/m²**
		- Roads: **~50 €/m²**
		- Agriculture: **0.14 €/m²**
		- Forestry: **0.01 €/m²**
	- Economic values differ strongly between:
		- **Business types**
		- **Regions** 
2. **Damage estimation**
    - Defines depth–damage relationships
    - Computes damage for specific flood scenarios
### **3. Damage Modelling (Buildings)**
1. **Creation of building taxonomy or typology**
2. **Vulnerability analysis** → depth-damage functions
3. **Damage modelling** incorporating return-period water depths
#### **3.1 Building Taxonomy**
taxonomy creation using:
- Adjacency
- Compactness
- Footprint size
- Height
- Roof form
- Roof slope
#### **3.2 Building Typology (Urban Structural Types – UST)**
 **Urban structural types**
 **Building age groups**
to generate a typology suited for detailed vulnerability estimation.
USTs include categories like:
- Detached houses
- Prefabricated estates
- Linear developments
- Multi-unit residential buildings
#### **3.3 Vulnerability Analysis**
- Description of **representative buildings**
- Identification of **characteristic inundation levels** (slide 31)
- Cost estimation through:
    - quantity surveys
    - expert interviews
    - refurbishment cost breakdown 
Depth–damage curves  provide **synthetic** estimation of damage for each building class.

### **4. Damage Simulation**
The HOWAD model structure integrates:
- Water levels
- Building/land-use units
- Depth-damage functions
to produce:
- **Damage per building**
- **Damage per spatial unit**
- **Damage maps** 
These allow comparison between scenarios with different water levels or return periods.
### **5. Applications**

Applications of vulnerability and damage modelling include:
1. **Information tools:** hazard/vulnerability/risk atlases
2. **Strategy building tools:** action/protection plans 
3. **Strategy implementation:** regulatory flood-risk zoning 
4. **Planning & decision-making:** benefit–cost analyses 
5. **Emergency management:** accessibility and functionality analyses 

Examples include:
- Rhine River Atlas 
- Flood protection planning with structural measures
- Regulatory “no new building” zones
- Emergency routing and critical-infrastructure analysis
## Unit A Social vulnerability for plain floods 
1. Understand **differential social vulnerability**: people are affected differently by floods depending on demographic, social and economic characteristics.
2. Analyse **interrelations between social vulnerability, habitability, and migration decisions**.
3. Learn to **conduct a qualitative interview** with a flood-affected household.
### 1. Vulnerability concepts 
Recap of standard risk terminology 
- **Hazard** – potentially damaging physical event or process (here: flood).
- **Exposure** – people, assets, activities located in hazard-prone areas.
- **Vulnerability** – propensity to be adversely affected, given social, economic, and institutional conditions.
- **Risk** – combination of *hazard, exposure, and vulnerability*.
These concepts frame the move from purely physical flood analysis to **integrated risk management**.
### 2. Background II – Social vulnerability to (flood) risks
#### 2.1 Definitions
- Social vulnerability is *“the degree to which one’s social status influences differential impact by natural hazards and the social processes that create and maintain that status”*
- Factors such as **income, class, race/ethnicity, gender, age, disability, health, literacy, and family structure** shape how people experience disasters .
#### 2.2 Key social vulnerability factors
- **Socioeconomic status** – low income/status → less capacity to absorb and recover losses.
- **Gender** – care responsibilities, labour market position, and norms may increase women’s vulnerability.
- **Race/ethnicity & language** – discrimination and language barriers affect access to information and support.
- **Age** – very young and elderly have reduced ability to move and cope.
- **Rural/urban** – rural livelihoods dependent on resource extraction can be highly exposed.
- **Occupation** – jobs tied to local resources are more impacted.
- **Family structure** – single-parent and large dependent households have fewer resources.
- **Education** – affects access to information and recovery options.
- **Medical services & special needs** – limited access increases vulnerability for ill or disabled populations.
- **Social dependence on services** – people reliant on social protection systems may be especially exposed.

They link these factors to **well-being dimensions** such as food security, health, safety, and displacement/migration  

### 3. Social vulnerability, habitability, and migration
#### 3.1 From hazard to reduced habitability
Floods can reduce **habitability** by:
- **Physical loss of land and property**, and/or  
- **Loss of economic productivity of land** → undermining resource-based livelihoods
#### 3.2 Mobility outcomes
Reduced habitability interacts with pre-existing and new vulnerabilities, shaping **mobility/immobility choices** 
- **Involuntary migration (displacement)** – forced relocation after submergence or destruction.
- **Voluntary migration (“migration as adaptation”)** – strategic search for alternative livelihoods.
- **Involuntary immobility (trapped populations)** – people who want/need to move but **lack capacity**.
you can identify five driver groups for migration (environmental, economic, political, social, demographic), or based on the outcomes based on **need to migrate, desire to migrate, and capacity to migrate**.

### 4. Empirical social science methods (qualitative)
#### 4.1 Qualitative vs quantitative research
- **Qualitative** 
	 - Objective: understand underlying **reasons, beliefs, motivations**.  
	 - Data: **textual data** (interviews, observations).  
	 - Small, purposive samples.  
	  - In-depth interviews, focus groups.  
	  - Analysis: interpretive, contextual.

- **Quantitative**
	- Objective: **quantify** patterns, generalize to populations.
	- Data: **numerical**.  
	- Large, representative samples. 
	- Surveys, structured questionnaires.
	- Analysis: statistical.
### 4.2 Interview formats 
- **Structured interviews** – standardized, closed questions; similar to surveys.
- **Unstructured interviews** – open, flexible, exploratory.
- **Semi-structured interviews** – mix of closed and open questions; allow comparability **and** depth.
Example **semi-structured interview guide**  with four main topics: demographic background, migration history, perceptions of flood risk, and perceptions of environment/habitability  

### 6. Key takeaways
- Social vulnerability is **structurally produced**, not just a function of physical hazard.  
- Flood impacts on **habitability** can trigger diverse mobility outcomes: migration, displacement, or being trapped.  
- Understanding these processes requires **qualitative, interview-based research** focusing on lived experiences, perceptions, and decision-making.

---
## Application HEC-RAS 


- Project setup and default settings 
- Preparing Terrain and Land Cover data
- Geometry creation – 2D Flow Areas and mesh
- Boundary Conditions and Unsteady Flow Data
- Setting hydrodynamic parameters
- 2D Simulation Computation
- Results viewing and analysis

## Social vulnerability survey 

1. The key aims of the questionnaire are to explore:
	- How are people differentially affected by floods due to underlying social inequalities and vulnerabilities?
		- Socio economic status: Some have money to relocate and others can not, preexisting policies
		- Age: Feasibility to work and relocate, working age, possibility to access loans, they didn’t have people dependent on them 
		- Race/ ethnicity:  in this case, this factor didn’t affect the vulnerability of the case e studies.
		- Rural/urban: in this case rural areas located in flood prone areas. 
		- Occupation: Nan
		- Family structure: A strong family structure, composed of working age individual, facilitated the relation  
		- Education : Education facilitates access to life time earnings. 
		- Medical services : Nan
		- Social dependence’s : Shelters and relocation supported by the government, comutital safety nets.  
		- Special needs population: is harder to relocate whit kids or elderly
	- How do flood risks shape people’s perceptions of habitability of the region?
		- people would be pushed to move out, or to stay if they have the means to adapt and prepare themselves self for this events.
	- How can this influence people’s decisions to migrate or stay?
		- If the habitability is bellow an acted threshold, people might decide to move out if they have the economy means. 
2. Briefly describe the research context (based on the reading material/other scientific sources); who are your study participants
	1. People that live in the Czech Republic in the Becza basin, from different socio economical background, and different abilities to migrate. 
3. Additionally, state: Which social vulnerabilities/inequalities are relevant to the research setting? How does your questionnaire allow you to explore these in greater detail?
		- House hold level.

| Main topic                                               | Subtopic and question samples                                                                                                                                                                                                                                                                                                                              |     |
| -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| Demographic<br>information and<br>residential background | Residence time in the region? Do you live in a rural or urban area ? Describe your house hold? What are the age and occupation of the member of your house hold?                                                                                                                                                                                           |     |
| Environmental threats<br>experienced                     | How far from the river ? Have you experienced a flood event? Did you receive a warning? How long did recovery take for your house hold?                                                                                                                                                                                                                    |     |
| Differentiated<br>vulnerabilities                        | Did your age, health or occupation affected your ability to evacuate? Do you have a Special need person dependent on you ? How hard would it be for you to have a job? Do you have access to insurance? Your socio economical position enables you to properly respond to a flood event? occupational losses? income losses? Access to shelter?   --sort-- |     |
| Perceptions of<br>habitability                           | Do you feel safe living here? What challenge do you see for staying in this region? Plans for future generations?                                                                                                                                                                                                                                          |     |
| Mobility and<br>immobility decisions                     | Have you ever consider moving away? Do you fell you face any obstacles to move out? What motivates you to stay despite the flood risk? Did you temporarily relocate after a flood? have you been displaced? would you move if you have government support.                                                                                                 |     |
|                                                          |                                                                                                                                                                                                                                                                                                                                                            |     |
w