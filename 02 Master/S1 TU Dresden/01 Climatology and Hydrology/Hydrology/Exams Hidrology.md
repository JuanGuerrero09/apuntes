
### 📖 Hydrology Exam: Complete 52-Question Set

1. **Which physical laws are of fundamental importance for the description of the movement of water?**
    - Conservation of mass and Conservation of energy.
2. **Name the important components and processes of the hydrologic cycle. (name 5)**
    - Precipitation, Evapotranspiration, Runoff, Infiltration, and Storage.
3. **How can the dynamics of the hydrologic cycle be described?**
    - Through water and energy balance equations.
4. **Name the components of the water balance.**
    - Precipitation ($P$), Evapotranspiration ($ETR$), Runoff ($R$), and Change in Storage ($\Delta S$).
5. **Write the water balance equations.**
	- General: $\Delta S = P - ETR - R$.
	- Long-term average: $P = ETR + R$ (where $\Delta S$ is assumed to be zero).
6. **Write down the water and energy balance equations. How are they linked?**
	- Water Balance: $\Delta S = P - ETR - R$.
	- Energy Balance: $R_n = G + H + LE$.
	- They are linked by the **latent heat of vaporization ($\lambda$)**, where $LE = \lambda \cdot E$.
7. **Which hydrologic processes do you know?**
    - Precipitation, Evapotranspiration (Interception, Evaporation, Transpiration), Runoff (Surface, Subsurface, Groundwater), Infiltration, and Storage.
8. **Which model concepts are mainly used in hydrology?**
    - Black-box (Empirical), Grey-box (Conceptual), White-box (Physically based), Stochastic, and Machine Learning.
9. **What is a watershed?**
    - A 3D hydrological system where all surface water converges toward a single outlet point.
10. **How do you estimate the drainage area?**
    - By delineating topographic divides using contour maps or DEMs, drawing divides perpendicular to contour lines starting from the outlet.
11. **What is a subsurface watershed?**
    - A groundwater basin defined by bedrock geometry and impermeable layers; it does not necessarily align with surface topographic divides.
12. **What is the vertical structure of a watershed?**
    - Surface, Soil and Vadose Zone, Groundwater System, and Bedrock.
13. **What is the horizontal structure of a watershed?**
    - Geomorphology/Topography, River Network Structure, Vegetation Cover, and Soil Types.
14. **Describe the interactions of the system: soil, vegetation, and atmosphere.**
    - Water falls as precipitation, is intercepted or taken up by vegetation, infiltrates the soil, and is returned to the atmosphere via evaporation and transpiration, driven by energy gradients.
15. **What is Rainfall — describe?**
    - The process of water falling from the atmosphere. It requires: 1) **Cooling** of moist air to dew-point (mostly adiabatic), 2) **Condensation** onto nuclei (dust/salt), and 3) **Droplet Growth** (coalescence/ice-crystal processes).
16. **What is a double mass curve and how it works as precipitation measurement?.**
    - It's a graphical technique in hydrology to check the consistency of hydrological data by plotting the cumulative data from a target station to the average data from surrounding stations.
17. **What does it mean if a data set is homogenous?**
    - It means the data series is consistent over time, and its statistical fluctuations are caused by climate alone, not by changes in measurement location, instruments, or surroundings.
18. **Name different methods to calculate the spatial rainfall. Name their preferential fields of application and describe the calculation.**
    - **Arithmetic Mean:** For high-density, uniformly distributed gauges.
	- **Thiessen Polygons:** Assigns weights based on the area closer to each gauge; used for non-uniform distributions.
	- **Isohyetal Method:** Uses contour lines of equal rainfall; most accurate for mountainous terrain.
	- **IDW/Kriging:** Statistical interpolation for spatially explicit modeling.
19. **What is the probable maximum precipitation (PMP).**
    - The greatest depth of precipitation for a given duration that is **physically possible** at a specific location and time.
20. **How do we classify hydrological time series from a statistical point of view?**
    - As **Deterministic** (predictable) or **Stochastic** (random). They are further classified as **Stationary** (mean/variance stable over time) or **Non-stationary** (showing trends/shifts).
21. **What is a DDF — Depth Duration Frequency curve?**
    - A statistical tool that estimates the rainfall depth ($P$) for a specific duration ($D$) and a selected return period ($R$).
22. **What is Runoff?**
	- The surface and subsurface water flow originating from a catchment, measured at a specific outlet. It is the result of precipitation exceeding infiltration and storage capacities.
23. **Name different methods of discharge measurements.**
    - **Stage Measurements:** Staff Gauges, Mechanical Floats, and Pneumatic/Pressure Sensors.
    - **Direct Discharge:** Area-Velocity method, Weirs/Flumes, Tracer (Dilution) methods, and ADCP.
24. **Describe the operation of different discharge methods.**
	- **Gauges:** Staff (manual graduated plate), Float (continuous mechanical transmission), and Pressure sensors (measures $p = \rho g h$).
	- **Area-Velocity:** Sums flow through segments ($A_i \times v_i$).
	- **Tracers:** Uses the dilution of a known mass to calculate $Q$ via the breakthrough curve.
	- **ADCP:** Emits acoustic signals to measure velocity via the Doppler frequency shift.
25. **What is a stage discharge relationship? How can such a relationship be obtained? What is the purpose?**
    - A rating curve relating river stage ($h$) to discharge ($Q$). It is obtained by manual gauging at various water levels to create a continuous $h/Q$ link for future extrapolation.
26. **What is hysteresis in the context of a stage-discharge curve?.**
    - The phenomenon where the $h/Q$ relationship is not unique. The rising limb of a flood typically has higher discharge for the same stage than the falling limb due to surface slope differences.
27. **What is a hydrograph?**
    - A graph showing the variation of **Discharge ($Q$)** over time ($t$). (Note: Rainfall vs. time is a _Hyetograph_).
28. **Why do we have to correct rainfall?**
    - To account for systematic errors such as wind-induced undercatch (especially for snow), evaporation, and wetting losses, ensuring accurate water balance and runoff modeling.
29. **Processes within the snowpack. Name the different phases of snowmelt.**
    - Accumulation, consolidation and melting, and in melting water, ripening and output
30. **What is snow?**
    - A solid form of precipitation that acts as a seasonal water reservoir and influences the energy balance due to its high albedo (0.8–0.9).Understood. I have reformatted questions 31–52 as standalone bolded headers, removing the placeholder dots as requested.
31. **Explain the energy and mass balance equations for snow cover.**
    - **Mass Balance**: $\Delta h_m = P - M \pm LE_a$.
	- **Energy Balance**: $\Delta E = RS + RL + H + LE + HR + G$.
	- Energy balance considers net radiation, sensible and latent heat flux, heat from rain, and ground heat flux.
32. **Name different concepts of snow melt modeling.**
    - **Energy budget approach**: Mechanistic and accurate but high data requirements.
	- **Temperature Index approach**: Empirical, based on the relationship between melt and air temperature.
33. **What is evaporation?**
    - The physical process in which liquid water is converted into water vapor from free-water surfaces or bare soil.
34. **What is transpiration?**
    - The diffusion of water vapor from the plant stomata to the atmosphere.
35. **Which properties determine the amount of interception loss in relation to the total rainfall? Give an example for a developed coniferous forest.**
    - Properties include vegetation type, canopy density, and storage capacity.
	- Coniferous (needle) forests typically have high interception (~15%) due to high surface area and year-round foliage.
36. **What kind of data do you need to run a physically based model for the calculation of evapotranspiration?**
    - Solar radiation, air humidity (vapor pressure deficit), wind velocity, and temperature.
37. **What is the velocity-area method for discharge measurement?**
    - A method where a river cross-section is divided into segments ($A_i$); the mean velocity ($v_i$) of each segment is measured, and total discharge ($Q$) is the sum of flows.
38. **Why is accurate hydrological data collection important for water management?**
    - Because that data is the responsable to be transformed in water flows and volume, crucial elements in the storage, regulation and control elements during water management. Crucial for sustainable water management, climate change impact assessment, and adequate system characterization.
39. **What is the purpose of a lysimeter? Explain its operation and setup the balance equation.**
    - **Purpose**: Directly measure actual evapotranspiration ($ETR$).
	- **Operation**: Measures water balance in a controlled soil volume by tracking mass changes.
	- **Equation**: $ETR = P - D - \Delta S$ (Precipitation - Drainage - Storage Change).
40. **What are the driving forces of the hydrological cycle?**
    - **Solar radiation** and **Gravity**.
41. **What is the full form of DDF? Describe the graph of DDF when comparing different return periods.**
    - Is a curve that increases quickly and gets stable over time, which represents how the rainfall intensity is high at first and decreases over time. For different return periods those "inverted-L" would be observed as being far left the biggest return periods, since for a higher return period a bigger and more early increase in the depth would be found.  On log–log or semi-log axes, the curves relating rainfall depth to duration for various return periods appear as nearly straight lines.
42. **Describe how to delineate surface catchment boundaries and the direction of water flow.**
    - By having an elevation model (in form of DEM or contour lines) create perpendicular lines in the maximum elevation points starting from a selected river outlet point. Those represent the separations in the catchments and would determine the water flow direction, that goes from higher to lower grounds.
43. **SCS-CN: Compare catchments based on the Curve Number (CN), soil type, and prior rainfall data.**
    - **CN**: Higher values indicate less infiltration and higher runoff.
	- **Soil/Land Use**: Determines the base CN.
	- **Prior Rainfall**: Determines the Antecedent Moisture Condition (AMC), requiring CN adjustment for dry (AMC I) or wet (AMC III) states.
44. **Write the water balance equations for different spatial and temporal scales.**
    - **Global Annual**: $P = ETR$.
	- **Land Surface**: $P = ETR + R$.
	- **Catchment scale**: $\Delta S = P - ETR - R$.
45. **Name and describe common rainfall measurement instruments.**
    - **Tipping-bucket**: Mechanical/electronic gauge where each tip equals a fixed rainfall volume.
	- **Float recorder**: Provides continuous recording of depth via a mechanical float.
	- **Weighing gauge (Pluviometer)**: Measures the actual weight of liquid and solid precipitation.
46. **Identify different modelling types and list their advantages and disadvantages.**
    - Empirical, conceptual and physically based model. 
	    - Empirical **(Black-box)**: Simple and fast, less detailed information required, but not extrapolable to other catchments
	    - Physically based **(White-box)**: Interpretable and transferable but high computational/data demand, more generalized model since it relies in the physically based equations. More complex and needs more information
	    - Conceptual **(Grey-box)**: Flexible and efficient but requires calibration data. middle ground between the other two, the process has some theorical background, however, is less math applied
47. **Give 3 measurement instruments for each: precipitation, runoff, and evapotranspiration.**
    - Precipitation: Tipping bucket, pluviometer, float recorder gauge
    - Runoff: Pneumatic gauges, weirs, ADCP, tracers
    - Evapotranspiration: Lysimeter, porometer, potometer, Sap flow meter, penman equation.
48. **Explain the different types of modelling (Conceptual vs. Physically Based) and their advantages/disadvantages in detail.**
    - Conceptual: Relies more in available data and possible relations than in theoretical background, allows to create relation (such as stage-discharge curves) with relatively low amount of data. Not extrapolable to other models, relies to heavy in past data so incorrect measurements heavily affects the results.
    - Physically: Are built on top of physical laws based on PDEs (e.g., Saint-Venant); parameters are physical/measurable properties, easily extrapolable to other models, heavy to run since are computationally intensive, not easy to explain to non technical parties.
49. **What are the factors affecting the shape of the runoff hydrograph?**
    - **Catchment**: Shape, size, topography, geology.
	- **Land Surface**: Urbanization, vegetation, antecedent wetness.
	- **Atmospheric**: Rainfall patterns and climate.
50. **List the systematic and random errors in precipitation measurement methods.**
    - **Systematic**: Wind-induced undercatch (largest for snow), evaporation, splashing.
	- **Random**: Reading mistakes and transcription errors.
51. **List the catchment average (spatial interpolation) methods and their advantage, disadvantage, and preferred applications.**

|**Method**|**Description**|**Advantages**|**Disadvantages**|**Preferred Application**|
|---|---|---|---|---|
|**Arithmetic Mean**|Simple average of all rain gauges.|Very fast and easy to calculate.|Assumes uniform rainfall; highly sensitive to gauge location.|High-density networks in flat terrain.|
|**Thiessen Polygons**|Assigns weights based on the area closer to each gauge than any other.|Accounts for non-uniform gauge distribution.|Does not account for topography/elevation (orographic effects).|Large catchments with uneven station spacing.|
|**Isohyetal Method**|Uses contour lines of equal rainfall (isohyets) to calculate area-weighted averages.|Most accurate; can incorporate professional judgment of topography.|Labor-intensive and requires significant manual effort or high-res data.|Mountainous terrain with strong orographic influences.|
|**IDW (Inverse Distance Weighting)**|Values at ungauged points are determined by a weighted average of nearby gauges based on distance.|Deterministic and easy to automate in GIS.|Sensitive to outliers and "bullseye" effects around gauges.|Automated mapping for dense, relatively uniform networks.|
|**Kriging**|A statistical method that uses spatial autocorrelation (variance) to interpolate values.|Provides the "Best Linear Unbiased Estimate" and quantifies uncertainty.|High computational cost and requires a complex statistical setup.|Scientific research and high-precision spatial modeling.|

52. **What causes floods (Meteorological and Catastrophic)?**
    - Meteorological:
	    - Extreme storm events
	    - Long duration precipitation
	    - Snowmelt
	- Catastrophic:
		- Dam break and earthquake/tsunamis

---
## Extra exam questions

- DDF Calculation, calculate $\alpha$ and $u$ given a return period to calculate $H(t)$.
- What is the full form of DDF? How should the DDF for different return periods graph behave?
- **Write the water balance equations for different time schales.**
	- Global yearly average: $P = ETR$
	- Yearly average for the land surface: $P = ETR + R$
	- Land surface for shorter periods: $P = ETR + R + \Delta S$
	- Arbitrary area at the land surface (excluding human intervention) $P = ETR + SW_{out} + \Delta S + GW_{out} - SW_{in} - GW_{in}$
- Steps for analysis of precipitation measurements?
	- Homogeneity (variation by meteorological reasons)
	- Consistency (remove outliers and fill data gaps)
	- Correction (wetting  + etr + wind
- Factors affecing the shape of the runoff hydrograph?
- List the errors in precipitation measurement methods 
	- Wetting and evaporation error
	- Wind induced error
	- Other errors, fog, mist frost.
- What are the six storage compartments for water?
	- Storage in rivers and lakes, ocean, groundwater, soil storage, interception, snow/ice storage
- Name the three process of Runoff formation
	- Runoff formation
	- Runoff concentration
	- Flood routing / wave propagation
- Name different methods of discharge measurement:
	- Stage gauges (Manual non recording, mechanical float gauge, pneumatic gauge/pressure sensor)
	- Flow measurements (Current methers, weirs, flumes, tracers, ADCP)
	- Deriving (Stage-discharge relationship)
- What is a hydrograph
	- A graph showing how the river discharge (or water level) changes with time at specific location in a river catchment.
- What is governing the transport processes in soils?
	- Non linear soil hydraulic functions
	- Boundary conditions
	- Water ponettial
	- Porosity
	- Gravity
- What does it mean if a data set is homogeneous
	- A time series is homogeneous if the variations are caused by meteorological reasons only
- What are the factor influencing the water balance?
	- Climate, morphology, vegetation and soils
- **Name the processes within the snowpack. .**
    - Accumulation, consolidation and melting
- Name the different phases of snowmelt
	- Warming, ripening and output
- Describe the operation of the following methods: Current meter, stage reading, weirs, tracer method, ADCP
	- Current meter induces a current and by the change in the magnetic field estimate the velocity
	- Stage reading relates the height with the water discharge
	- Weir works as a structure that based on the behaviour of the water when it passes through allows to calculate the discharge
	- ADCP uses the doppler effect to estimate the discharge based on the wave behaviour.
- How does the subsurface recharge change over the year
	- Water surplus, soil / gw storage depletion, subsurface recharge
- Which processes lead to precipitation?
	- Cooling of moist air to dew point -> condesnation -> droplet growth
- How does a lysimeter work?
	- A lysimeter is a specialized, buried, and physically isolated container of soil designed to measure the water balance, specifically evapotranspiration, percolation, and nutrient leaching within a soil column