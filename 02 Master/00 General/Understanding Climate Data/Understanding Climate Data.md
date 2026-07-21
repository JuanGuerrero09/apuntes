# Module 1: Foundations of Climate Data

- Know what climate data, variables and data records are, where they come from, and why climate data are essential for monitoring climate change.  
- Outline the basic climate data types coming up in this course and how they are linked.
- Explain what data are provided by the Copernicus Climate Change Service (C3S).
- Register and orient yourself in the Climate Data Store (CDS).

### Basics of climate change

##### **Weather or Climate?**

- Weather: day-to-day variation in atmospheric conditions such as temperature, rain, sunshine, wind, or snow. Can change hour by hour and day by day.
- Climate: average weather in a place over a long period of time

Weather has only one possible outcome, while climate is the range of possible outcomes for a season or place.

#### Climate change

Climate change is a long-term shift in climate patterns. It means that the average weather conditions are changing — often becoming warmer and leading to more intense storms, droughts, or shifting seasons in different regions.

### How do we know the climate is changing?

- Temperatures are rising
- Ice is melting
- Oceans are warming
- Sea levels are rising
- Nature is changing 
- Stratospheric temperatures are falling

Effects due climate change:
- More heatwaves
- Stronger storms and hurricanes
- More intense rainfall and flooding
- Longer droughts
- Melting ice and rising seas
- Warmer and acidic oceans

### The role of climate data and information

**Information vs. data: what is the difference?**

- Data: Raw, unprocessed facts and figures. Eg: Temperatures readings, measurements of river water levels, wildfire incidents, data by climate models
- Information: What you get after data has been organised, processed, compressed, contextualized and interpreted. E.g raph showing the rise in average global temperature over the past century, or a map highlighting communities at high risk of flooding.

## Introduction to Observations

### Types of observations

- Early observations:
	- Land stations
	- Sea observations
- Upper-air observations
	- Kites and balloons
	- Aircraft and radiosondes
- Satellite Remote Sensing

### Climate Data Records
A **Climate Data Record** is a long, consistent, quality-controlled series of observations suitable for detecting climate trends and changes over decades.

### Essential Climate Variables

Climate system includes:
- Atmosphere
- Oceans
- Land surface
- Cryosphere
- Biosphere

 Which variables do we need to fully describe the climate, and how well can we observe them? 
	 A set of so-called **Essential Climate Variables**  (ECVs) have been defined by the Global Climate Observing System (GCOS). They depend on _Relevance_, _Feasibility_ and _Cost effectiveness_

Examples of ECV Products:

| ECV                 | ECV Product           | Description                                                                                                                                | Type |
| ------------------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ---- |
| Surface Temperature | Air Temperature       | Air temperature at a known height above surface                                                                                            | CDR  |
| Sea Ice             | Sea Ice Concentration | The fraction of ocean area covered with sea ice                                                                                            | CDR  |
| Sea Ice             | Sea Ice Thickness     | The distance between sea ice surface and sea ice underside                                                                                 | CDR  |
| Fire                | Burned Area           | Burned area is described by a grid where each cell is labelled as burnt if most of that cell is classified as containing burned vegetation | CDR  |
| Land Cover          | Land Cover            | Categories and classifiers of (bio)-physical cover on the Earth’s surface                                                                  | Maps |
Many ECVs (such as sea ice) require multiple ECV products to be well described.

In summary:

- ECVs are observable climate variables that are deemed essential for characterising the Earth’s climate.
- ECV products are climate information products, such as climate data records or maps, that can be used for climate science and climate services.

## Key sources of model output data
### Key time frames

**Climate models** are designed to generate **plausible future climate scenarios** by applying the **laws of physics** to simulate how **different components** **of the climate system interact**.

The process of combining models and observations **to produce a complete picture of past weather and climate is called reanalysis**.

![[Pasted image 20260420125811.png]]

### Introducing models

The role of models in science is to help understand, explain, and predict how natural systems work.

A climate model is a set of mathematical rules that describes how various parts of the Earth system interact and evolve over time. Those rules can either be written directly from our understanding of how nature works, or learned from large amounts of observations using machine learning.

### Introduction to reanalysis

Reanalysis is a term used to describe a reconstruction of past weather and climate by combining observations with models. To understand how this works, it helps to know how weather forecasts are typically produced.

Reanalysis ensures that all past data are processed using the same method, providing consistency across decades. It also provides near-real-time updates that are valuable for monitoring current climate conditions and  helps fill gaps where direct measurements are missing..

|Variables|Large number of variables related to temperature and pressure, wind,  <br>radiation and heat, clouds, lakes, evaporation and runoff, snow, soil,  <br>vegetation, ocean waves and others|
|---|---|
|Horizontal coverage|Global|
|Horizontal coverage|31km x 31km|
|Vertical resolution|137 levels in the atmosphere|
|Temporal coverage|January 1940 to present|
|Temporal resolution|hourly|

This table shows the dimensions of the 5th version of the ECMWF global reanalysis (ERA5).


### Climate predictions and longer term projections

**Predictions describe how the climate evolves, typically in the near future**, **based on current conditions** for example, forecasting temperature or rainfall over the next few weeks or months.

**Projections, explore how the climate may evolve in the longer term, depending on different scenarios of greenhouse gas emissions and societal choices.**


Prediction time frames:
![[Pasted image 20260420231635.png]]

##### **How are weather and climate predictions and projections generated?**

When weather forecasts are based on the current state of the climate system — what we call the initial conditions — **spatial and temporal details** **are most reliable in the near term**. But as time goes on, minor uncertainties accumulate and possible trajectories spread, making the expected outcome less precise. This is often shown using a 'plume’ chart (see the figure below): the forecast starts as a narrow interval, which gradually widens, illustrating how it becomes increasingly difficult to estimate the precise outcome the further into the future we look, as shown by the red lines in the figure.
![[Pasted image 20260420231842.png]]

On shorter timescales — from weeks to seasons, and in some cases up to a decade — predictions work mainly as an initial-value problem: **they depend strongly on the current state of the climate system, such as ocean temperature, heat content or snow and ice cover**.

For longer-term climate projections, beyond a decade, even to the end of the century, the focus is less on initial conditions and more on boundary conditions. Boundary conditions describe the external factors that influence the climate system over decades, such as greenhouse gas concentrations, land-use changes, or solar activity.

## The Climate Data Store (CDS)
### Introducing C3S and the CDS

Copernicus Climate Change Service (C3S) and its Climate Data Store (CDS).

The Copernicus Climate Change Service (C3S) was established by the European Union to support its adaptation and mitigation policies, and to provide public and private entities with reliable, consistent, authoritative, and freely accessible information about climate change. C3S is run by the European Centre for Medium-Range Weather Forecasts (ECMWF).

C3S has developed a Climate Data Store (CDS), which provides a single point of access to a full range of key climate datasets, including observations, ECV products, reanalyses, climate forecasts, and climate projections.

### Using the CDS

Main links:
- https://confluence.ecmwf.int/display/CKB/Copernicus+Interactive+Climate+Atlas%3A+User+Guide
- https://atlas.climate.copernicus.eu/atlas
- https://cds.climate.copernicus.eu/
- https://earthkit.ecmwf.int/

**Explanation of terms used:**

- **The IPCC AR6 regions** are a standardised framework of 64 distinct zones — 46 land, 15 ocean, and 3 hybrid — used in the Intergovernmental Panel on Climate Change (IPCC) Sixth Assessment Report (AR6) to deliver consistent, detailed regional climate analyses. 
- The **EUCRA Regions** are the European Climate Risk Assessment (EUCRA) regions that divide Europe into four main geographical macro-regions — Northern Europe, Central-Eastern Europe, Western Europe, and Southern Europe — to analyse climate-related risks. 
- **CMIP6 and CMIP5 are** the sixth and fifth phases of the Coupled Model Intercomparison Project, an international effort to produce and analyse climate model simulations.
- **ERA5** is the fifth-generation ECMWF atmospheric reanalysis of the global climate, produced by the Copernicus Climate Change Service (C3S).
- **ERA5-Land** is a high-resolution, global reanalysis dataset produced by ECMWF and the Copernicus Climate Change Service, providing a consistent, detailed record of land surface variables from 1950 to the present.
- **E-OBS** is a high-resolution, daily gridded meteorological dataset covering Europe and parts of the Mediterranean, providing key climate variables such as temperature, precipitation, sea level pressure, humidity, and radiation from the past to the present.
- **CORDEX-CORE** is a World Climate Research Programme (WCRP) Coordinated Downscaling Experiment (CORDEX) initiative that provides a consistent, high-resolution (0.22 degrees or ~25 km) dataset of regional climate projections for all major human-inhabited continents. The Standardised Precipitation Evapotranspiration Index (SPEI) is a multiscale, climate-based drought index that quantifies drought intensity, duration, and onset by calculating the difference between precipitation (supply) and potential evapotranspiration (demand).

### Strategies for finding data

When choosing which climate dataset to use, consider the question you are trying to answer and which data best fit that purpose.

Consider the following parameters:

- Purpose
- Type of data
- Time period and horizon
- Spatial scale
- Variable and units
- Data format and accessibility
- Uncertainty and ensemble data
- Documentation and provenance

## Closure of Module

### Key learnings from this module

1. Weather and climate are different: weather refers to the day-to-day changes in atmospheric conditions, whereas climate is the average weather over a longer period of time. 
2. Multiple lines of evidence have demonstrated that the climate is changing, including meteorological measurements, satellite observations, and palaeoclimate  indicators. 
3. There are different types of climate data, including observations and model derived data. 
4. Different types of climate data span different time frames, ranging from the historical past to seasonal, decadal predictions, and climate projections. 
5. The Copernicus Climate Change Service (C3S) provides reliable, consistent, and freely accessible climate data and information. 
6. The C3S Climate Data Store (CDS) hosts datasets as well as applications.



# Module 2: How do we observe the climate?

- Describe what observations reveal about climate change, identify different types of observational data and how they are measured, and list processes needed to create reliable observation data and data records.  
- Find and access observational datasets through the CDS.

## Introducing observations


By the end of this module, you will be able to **describe what observations reveal about climate change, identify the different types** of observation data available for the **atmosphere, ocean, and land, distinguish between in situ measurements and remote sensing,** and understand why observation **data often require careful processing**.

### Observational evidence of climate change

**The most prominent evidence of climate change are the atmospheric and ocean temperatures collected over the years from weather stations and ships**.

**Key types of observational evidence for climate change**:
- Instrumental temperature records
- Greenhouse gas measurements
- Physical and biological indicators

**Proxy data:** Information about the palaeoclimate, it **extend our climate knowledge well beyond the brief instrumental record, allowing scientists to reconstruct past temperatures, precipitation patterns, and greenhouse gas concentrations**.

Types of palaeoclimate proxies:
- Ice cores
- Tree rings
- Osean sediment cores
- Coral and cave deposits

Palaeoclimate records provide the **baseline** for natural climate variability and clearly demonstrate the unprecedented nature of modern, human-driven global warming.

### The instrumental record

In the context of climate monitoring, **observation** is the gathering information about the Earth's climate system, and **Measurement** the quantification of a specific physical property using an instrument or sensor.

Remembering:

- **Climate Data Records (CDRs):** long, consistent time series of observations used to detect climate trends and variability.
- **Essential Climate Variables (ECVs):** key variables that describe the state of the climate system.
- **ECV Products:** CDRs that have been developed specifically for an ECV.

**Direct versus indirect measurements**

- Direct: Measurements when an instrument directly detects the variable of interest, recording the variable itself. E.g. thermometer measuring air temperature and a rain gauge measuring precipitation.
- Indirect: Measurements when variables are **derived** from other evidence or proxy data, rather than being measured directly.  E.g: tree rings used to infer past rainfall or temperature, or satellite infrared sensing of cloud tops to estimate precipitation.

**Remote measurement** (better known as **remote sensing**) is performed from a distance. Weather satellites typically carry multiple sensors that measure different properties of the atmosphere, the ocean and land surfaces from space

- In situ instruments: 
	- **A weather station** contains instruments which measure weather conditions (e.g. air temperature, rainfall, humidity, wind speed, etc.) directly on site.
	- **A soil moisture sensor** measures the amount of water in the soil at a specific location.
	- A **buoy** is a floating platform that measures ocean conditions such as sea surface temperature, wave height and period, ocean currents, salinity, etc.
- Spaceborne remote sensing instruments
	- **A weather** **satellite** contains instruments which provide large-scale data on cloud cover, temperature patterns, storm systems, sea surface temperature and atmospheric moisture.
	- The **Soil Moisture and Ocean Salinity (SMOS)** satellite, operated by the European Space Agency (ESA), measures global **soil moisture** over land and **sea surface salinity** over the oceans, as well as sea ice thickness and other geophysical variables such as wind speed over the ocean and freeze/thaw soil state.
	- **Satellite radar altimetry, for example, Sentinel 3 SRAL**, uses radar pulses to measure the height of the sea surface with high precision.

Most ECV products combine direct and indirect measurements.

**Weather observation sites**

A typical weather observation site, or surface meteorological station, mostly collects direct, in situ measurements of atmospheric conditions. These sites are usually operated by national meteorological services and are crucial for both daily weather forecasting and long-term climate monitoring.

It can have the following instruments:
- **Thermometers**: housed in white, louvred shelters (Stevenson screens), positioned 1.25 to 2 metres above the ground, accurately measure **air temperature** while being shielded from direct sunlight.
- **Anemometer**: often mounted on a pole at a standard height of 10 metres, measures **wind speed and direction**.
- **Rain gauges** collect and quantify **precipitation** at the site.
- **Barometers** record **atmospheric pressure**, a key indicator of weather systems.
- **Hygrometers** measure **humidity** or the amount of water vapour in the air.
- **Pyranometers**: less common, to measure incoming **solar radiation**.

historically these readings were taken manually, modern sites utilise **Automatic Weather Stations (AWSs)**. These automated systems can collect data far more frequently, providing a wealth of information.

![[Pasted image 20260421232820.png]]

### The global observing system: structure and domains

Different observing systems, operating in the **atmosphere, on land, and in the ocean,** fit together
Climate observations do not come from a single instrument or network, but from a coordinated system of satellites, ground stations, ocean platforms, and international programmes working together.

**Oceanic Observation**
![[Pasted image 20260518005107.png]]

**Terrestrial observation**

The terrestrial component of the Earth system includes the land surface, hydrology, cryosphere, and biosphere. Key observing systems for climate are the so-called **Global Terrestrial Networks (GTNs)**, which operate under the auspices of the **Global Climate Observing System (GCOS)**.
![[Pasted image 20260518005205.png]]
1. [GTN-H](https://www.gtn-h.info/networks/ "GTN-H")
2. [GTN-P](https://gtnp.arcticportal.org/about-the-gtnp "GTN-P")
3. [GTN-G](https://www.gtn-g.ch/ "GTN-G")
4. [BSRN](https://bsrn.awi.de/ "BSRN")

Important satellite systems for terrestrial observation include **Sentinel-2, Sentinel-3, and Landsat**, which carry sensors that detect visible and infrared light used to map land cover, glacier changes, and estimate above-ground biomass.

### Coordination, gaps, and application of the global observing system

The global observing system for climate is a vast, interconnected network gathering information about our planet from every angle. Coordinating this system to monitor weather and climate is a major international effort. Key players in this coordination include the **World Meteorological Organisation** (WMO), the WMO **Integrated Global Observing System** (WIGOS), the **Global Climate Observing System** (GCOS), and various **space agencies**.

**Gaps and challenges in climate observation**

Despite significant progress over the years, global climate observation systems still have several key gaps that limit our ability to monitor the climate. Please see the figure below for the current gaps and challenges in climate observations.

![[Pasted image 20260518010154.png]]

### In situ observation and remote sensing

Most **in situ observations** are essentially 'on-the-spot' **measurements** of specific variables such as temperature, rainfall, ozone, etc.
![[Pasted image 20260518010342.png]]

**Examples of in-situ networks**:

- Atmosphere
- Ocean
- Land

**Remote sensing** involves gathering information from a distance using **advanced measurement instruments on the ground or on satellites**. Remote sensing provides three key added values compared to in situ observations:
- Global coverage
- Efficiency
- Filling gaps

Types of remote sensing:
- Passive sensing: to detect emitted or reflected electromagnetic radiation (e.g. visible light or infrared radiation). This can be used to estimate ECVs such as sea-surface temperature, ocean colour, or cloud properties.
- Active sensing: An active sensor emits its own radiation (e.g. radar pulses or laser light) and then measures the reflected signal. This can be used, for example, to determine changes in sea-ice thickness or land elevation.

**Main types of satellites:**
Satellites generally operate in two main types of orbits — geostationary and polar-orbiting —
- **Geostationary (GEO) Satellites:** These are located high above the equator and orbit Earth at the same rate at which the Earth spins around its own axis, thereby appearing stationary over a single region. This allows them to provide continuous, frequent updates on a large area, making them ideal for tracking rapid weather events, cloud properties, and atmospheric motion.
- **Polar-Orbiting (LEO) Satellites:** These fly much closer to Earth, circling from pole to pole. As the Earth rotates, they provide global or near-global coverage, observing every part of the planet over several passes. They carry instruments for detailed measurements of ECVs, including temperature, humidity, sea ice, and land surface properties.

**Examples of critical satellite missions:**
- **The Copernicus Sentinels**: provide continuous, long-term observations of key climate variables. They monitor sea level (Sentinel-6), sea ice and glaciers, ocean colour, sea and land surface temperature (Sentinel-3), land cover and land-use change (Sentinel-2), and atmospheric composition including aerosols, ozone, and methane (Sentinels-4 and 5). These missions form the backbone of many C3S ECV products, which are vital for understanding our planet's evolving environment.
- **The European meteorological** missions, focus on atmospheric observations for weather forecasting and climate reanalysis. **Metop satellites** (in low Earth orbit) provide detailed global measurements of temperature, humidity, ozone, and trace gases, whereas **Meteosat satellites** (geostationary orbit) offer continuous monitoring of clouds, storms, radiation, and atmospheric dynamics over Europe and Africa.
- **ESA Earth Explorers** are research missions designed to improve understanding of specific Earth system processes. Examples include **CryoSat-2** for ice thickness and glacier change, SMOS for soil moisture and ocean salinity, **GOCE** for Earth's gravity field, and **EarthCARE** for clouds, aerosols, and radiation interactions. These missions often pioneer new observation techniques later adopted operationally.
- **Other satellite missions** from space agencies from around the world, such as **NASA and JAXA**, complement European observations. For example, **GRACE and GRACE-FO track** changes in ice mass and groundwater via gravity measurements; **ICESat-2** measures ice-sheet elevation; **CERES** monitors the Earth's radiation budget; and **GOSAT** provides long-term measurements of atmospheric greenhouse gases such as CO₂ and CH₄.

**Strengths and limitations of in situ and satellite observations**
- In situ:
	- Strengths: 
		- Direct measurements
		- Detailed information at specific locations
		- Can measure variables that satellites cannot (e.g. subsurface conditions)
	- Limitations:
		- Sparse spatial coverage
		- Limited availability in remote regions
		- May have gaps or inconsistencies in long-term records

- Remote sensing:
	- Strengths: 
		- Global coverage, including remote and inaccessible regions
		- Consistent, repeated measurements over long periods
		- Excellent for large-scale
	- Limitations:
		- Limited details at small or local scales
		- Some sensors cannot see beneath clouds
		- Limited ability to measure subsurface conditions
		- Limited accessibility in remote regions
		- Requires calibration with in-situ data

In situ observations provide accurate local measurements, while remote sensing offers broad spatial coverage. They complement each other: satellites rely on in situ data for validation, and in situ networks alone cannot deliver global coverage.

## Climate Data Records

### Challenges in observation data

Uncertainties in climate observations arise from measurement errors, instrument changes, and the nature of the measured variables.

**General sources of uncertainty:**

- Incomplete geographical coverage: For many ECVs, observations are unevenly distributed across the Earth. In particular, in situ observations have significant gaps over the oceans, polar regions, deserts, parts of Africa and South America, and high mountain areas
- Gaps in historical records: Long records of weather observations are scarce, and many have missing data. Only a few records extend back to the 1850s.
- Use of indirect measurements: Many ECVs are only observed remotely by satellite. Additional information is needed to estimate climate variables from indirect measurements, which often introduces additional uncertainties.
- Biases and errors: All observations are subject to systematic differences (biases) and random errors. These can arise from instrument performance, changes in measurement techniques, or environmental factors.
- Varying standards and inhomogeneities: Different countries and organisations use different measurement protocols, instruments, and operating procedures. Changes over timeintroduce 'inhomogeneities' that appear as climate shifts but are due to changes in observation methods.
- Difficulties in data interpretation and access: Having adequate metadata is crucial for interpreting observation data. However, metadata are often incomplete or inconsistent. Data access and sharing policies can also limit the availability of observations.

**C3S ECV Products and harmonised datasets** have already been corrected, quality-controlled, and prepared for reliable climate analysis.

### Homogenising observations and generating ECV products

**Raw observations should not be used to detect climate trends**

Any changes in the observed record that are **not** due to climate change must be accounted for. The process of removing artificial changes in time series is called **homogenisation.**

**Fundamental Climate Data Records**

A **Fundamental Climate Data Record** (FCDR) is a **long-term**, **well-calibrated**, and **quality-controlled record** of sensor observations, such as satellite radiances, backscatter, or radio occultation measurements.

**Global ECV products**

Homogenised time series of in situ observations and FCDRs are the building blocks for global ECV Products. In most cases, **multiple records are combined to maximise the spatial coverage of the products**

### Data rescue

**Data rescue** is the process of discovering, preserving, applying quality control, and digitising historical observation data found in documents and other media. **The goal of data rescue is to ensure that the data remain accessible and usable for climate analysis, reanalysis, and future research**.

**where do the data come from?** 
- Handwritten ship logs, personal journals, and historical newspapers.
- Old records and reports held by the National Meteorological and Hydrological Services.
- Printed logbooks, photographs, manuscripts, and microfilms in academic archives, libraries, museums, and scientific societies.
- Records of agricultural, military, and transportation agencies, including aviation and maritime.
- Diaries, parish records, or community chronicles held by religious organisations, local historians, and individual observers.
- Repositories of images of historic records, maintained by some international data centres.

C3S provides a Data Rescue Service that **coordinates and guides data rescue activities worldwide.**


## Observation data from C3S

### Accessing C3S observation data

[https://cds.climate.copernicus.eu/](https://cds.climate.copernicus.eu/)

![[Pasted image 20260519005856.png]]

Explanation of terms:
- NetCDF (Network Common Data Form) is a file format for storing and sharing scientific data, in particular, large, multidimensional, array-oriented datasets such as those in atmospheric and oceanographic sciences. It is a self-describing, portable, and scalable format that can store data with dimensions such as time, space, and altitude, and it includes metadata, such as units and copyright information.

- The analysis of the GPCP provides global estimates of precipitation as monthly and daily means, based on estimates using microwave imagers on polar-orbiting satellites and infrared imagers on geostationary satellites.

### European State of the Climate, Climate Bulletins and Global Climate Highlights


## Closure of Module 2

### Key learnings from this module
This module explained how we observe and understand climate change, starting with the instrumental record that provides direct evidence of long-term climate trends.

1. Observations clearly show that Earth's climate is warming, and the changes we see today are consistent with the impacts expected from increasing greenhouse gas concentrations.
2. In situ measurements provide high-accuracy, location-specific observations, while satellite remote sensing delivers spatially continuous global coverage, and their integration improves the accuracy, consistency, and completeness of climate datasets.
3. Observation data face challenges such as gaps, inconsistencies, and varying measurement methods, all of which must be carefully addressed to ensure accurate and trustworthy climate information.
4. Homogenising observations ensures that inconsistent measurements are transformed into consistent, high-quality datasets that reliably reveal climate trends and changes.
5. Data rescue preserves irreplaceable historical observations so they can be digitised, shared, and used to extend and strengthen our understanding of past climate.



# Module 3: How do we model the climate?

- Describe what climate models are and how they have evolved.
- Understand the vaious types of model derived data, such as reanalysis, climate predictions and projections.
- Find and access model derived data  in the CDS.

By the end of this module, you will be able to describe the history of climate modelling and the key components of a climate model, explain the role of grid structures in climate models, discuss different processes in climate modelling, identify the role of chaos,  explain the need for observations in modelling, understand the framework for model evaluation, and finally, be able to find and access data derived from climate models yourself through the Climate Data Store of C3S.

## Introducing climate models

### How this module fits in the course

Examining past climate trends alone doesn't allow for straightforward predictions about future changes. **It is also necessary to develop models that can simulate the many processes governing the climate system's evolution.** In this module, **you will learn about the elements on which climate models are based, how they are made, and how we can use them to improve our estimates of past climate, make climate predictions and projections, and answer scientific questions about the climate system.**

### Recap of the difference between weather and climate

- **weather refers to short-term changes in the atmosphere**, such as temperature, rain, sunshine, wind, or snow.
- **climate is the average weather in a place over a long period of time.**

### Climate models and their evolution

**Model complexity and computational requirements**

Climate models are mathematical representations of the Earth's climate system.
- data-based models: rely on empirically observed relationships among different kinds of climate variables, e.g. ECMWF's AI-based NWP model (AIFS)
- physical models based on the physical laws of thermodynamics and fluid dynamics

**Historical evolution of climate models**
- **Energy Balance Models (EBMs)** and **Radiative–Convective Models**  simple, focusing on the balance between incoming solar and outgoing infrared radiation or on the vertical temperature structure of the atmosphere.
- **General Circulation Models (GCMs)**, introduced three-dimensional representations of the atmosphere and oceans. By solving physical equations of motion at discrete grid points, GCMs allowed scientists to simulate circulation patterns, precipitation, and large-scale climate variability.
-  Coupled **Atmosphere–Ocean General Circulation Models (AOGCMs)** link atmospheric, oceanic, sea-ice, and land-surface processes, capturing interactions across Earth's major systems., most advanced model family today is the **Earth System Models (ESMs)**


## Characteristics of a climate model

### Climate model components

An advanced climate model combines mathematical representations of multiple Earth system components, such as the atmosphere, ocean, sea and land ice, and land surface, allowing them to exchange energy, mass, and momentum.

**Each component has its own internal dynamics, yet they are all interlinked:** ocean heat uptake affects atmospheric circulation, vegetation feedbacks influence carbon, etc.

### Model grid

The models are based on systems of equations that describe the fundamental laws of physics and chemistry. To solve this complex system of equations numerically, climate scientists divide the planet into a three-dimensional grid, like a giant sphere divided into smaller boxes. **Each of these boxes, called grid cells, represents a specific volume of the atmosphere, ocean, or land**.

### Spatial and temporal scales

**At the largest scale, global atmospheric circulation patterns, such as the Hadley cell and atmospheric jets, play a central role in distributing energy and moisture around the planet.** These motions operate over long timescales, ranging from weeks to decades, and impact everything from temperature distributions to global precipitation patterns.

**On an intermediate scale, motions include weather systems such as cyclones, thunderstorms, and fronts, spanning tens to hundreds of kilometres and evolving over hours to days.**

**At the smallest scale, motions such as turbulence and eddy currents affect the mixing of heat, moisture, and momentum in the atmosphere and oceans.** These motions are fast, occurring over fractions of a second to several hours.

![[Pasted image 20260523150116.png]]

Clarifying interactions between different scales is essential for understanding the Earth’s climate system. For example, small-scale ocean turbulence can influence large-scale ocean currents, while large-scale atmospheric motions can impact local weather systems.

Climate models have a finite spatial resolution; some processes occur at scales smaller than the model’s grid and they are called sub-grid processes.

### Subgrid processes

In climate models, scientists often use a technique called parameterisation to represent processes that happen on scales too small for the model grid. **Parameterisations are used to simulate processes such as radiation (how visible light and infrared radiation are transmitted and absorbed), cloud formation, moist convection, small-scale waves, and turbulence in the boundary layer (the part of the atmosphere closest to the Earth's surface)**.

Parameterisations are approximations that are fundamental to accounting for sub-grid processes but are also a major source of model error. **Early models had coarse resolutions, with grid cells spanning hundreds of kilometres, which were sufficient for simulating broad patterns but could not capture smaller-scale motions.**


### Static versus dynamic components

Static components are prescribed, they could be fixed in time if this is a reasonable assumption (e.g. the shape of the continents, mountain ranges, bathymetry of the ocean floor, and long-term soil types) or they could vary in time (e.g. solar forcing, concentration of greenhouse gases)

**In contrast, dynamic components evolve over time and are directly calculated within the model.** Dynamic components in weather and/or climate models include atmospheric variables (e.g. winds, temperature, humidity), surface temperatures over land, ocean and sea ice.

Dynamic components are updated at every model’s time step, ranging from seconds to hours, or even days. Static components are prescribed throughout the model’s integration time.

### Chaos and the role of ensembles

**Chaos refers to the behaviour of certain complex systems that, although governed by deterministic physical laws, exhibit extreme sensitivity to initial conditions.**

**The climate system is an example of a chaotic system.** **A practical consequence of the climate system's chaotic nature is that we need to assess its future evolution probabilistically, using a technique called ensemble forecasting.**


### Need for observations in climate modelling

Importance of observations:
- Essential for developing models
- Needed to initialize models and provide boundary conditions
- Critical for evaluating and validating models
Reanalysis merges observations with model output to reconstruct past and current climate states, while forecasts and projections use models to predict short-term variations and long-term changes in the climate system.

### Reanalysis, predictions and projections

- **Reanalysis**: combines historical observations (from satellites, weather stations, radiosondes, etc.) with a numerical model to reconstruct past weather and climate conditions.
- **Predictions**: use the current state of the climate system to forecast what will happen in the near future, such as weather forecasts (days ahead), seasonal outlooks (months ahead), or decadal predictions (years ahead).
- **Projections**: explore possible future climates based on different scenarios of greenhouse gas emissions and socio-economic change combined with natural forcing.

## Evaluating climate models

### Climate model evaluation

Climate models are evaluated by **comparing their simulations against historical observations and/or reanalysis data** across a range of climate variables.

**Models are evaluated against multiple observational datasets to account for measurement uncertainty**.

### Forecast skill

The evaluation of climate predictions relies on specific metrics that assess the model's ability to predict key features of climate variability. This framework typically combines deterministic metrics (mean error, root mean square error, and anomaly correlation) and probabilistic metrics (Continuous Ranked Probability Score, Brier Skill Score, and rank histograms)


## Climate model derived data in the CDS

### Accessing C3S model derived data

[https://cds.climate.copernicus.eu/](https://cds.climate.copernicus.eu/)

In datasets and product types you can see: 
- Reanalysis
- Projections
- Observations
- Forecast

In temporal coverage can be filtered future, past and present

## Closure of Module 3

### Key learnings from this Module

1.  Weather describes short-term atmospheric changes, while climate represents long-term patterns. 
2. Climate models are mathematical representations of the Earth's climate system and have evolved from simple energy-balance tools to advanced models that simulate interconnected components. 
3. Climate models divide the Earth into 3D grid cells, in which physical, chemical, and biological processes are represented by equations solved using numerical methods. 
4. The climate system involves processes across many spatial scales, from global circulation to small-scale turbulence, and understanding how these scales interact is essential for accurate weather and climate modelling. 
5. Parameterisation allows climate models to represent small-scale processes with reasonable approximations.  
6. Climate and weather models combine static components, which are prescribed to the model, with dynamic components that are simulated by the model.  
7. The climate system is chaotic, meaning that small differences in initial conditions can lead to different outcomes, but using ensembles helps quantify uncertainty and improve the quality of predictions. 
8. Observations are essential in climate modelling for developing, initialising, forcing, and evaluating models. 
9. Climate models are evaluated by comparing simulations (either individual ones or ensembles) with observations using a range of metrics. 
10. Climate predictions are also evaluated using appropriate metrics to assess forecast skill and practical value for specific applications.


# Module 4: Why do we need reanalysis?

- Explain the concept of reanalysis, how reanalysis data are produced and used, what ERA5 is, and why reanalysis is an important and popular data type to characterize and analyse the past and present climate. 
- Go into the C3S website and find reanalysis products that you can use for your own applications.

## What is reanalysis?

### How this module fits in the course

Not all regions, especially the Global South, have dense observed climatological measurements, and there are always gaps in the observed data. In such cases, reanalysis products become essential

### What is climate reanalysis?

**Reanalysis** is the reconstruction of past weather from a combination of historical and contemporary observations and forecast models.

Important characteristics of reanalysis:
- No gaps in time or space
- Constrained by observations
- Physically consistent

Reanalysis **can provide meaningful estimates of variables that are not directly observed**.

### How a reanalysis dataset is produced

Most climate reanalysis datasets are produced using infrastructure and methods originally developed for operational Numerical Weather Prediction (NWP). NWP systems operate in real time, using massive volumes of data from many different observing systems.

Several times each day, newly observation data are screened and combined with model data to produce a global weather analysis, which is then used to initialise a new forecast. This process of repeatedly injecting new observation data into a modelling system is called **data assimilation.**

Data assimilation is **a continuous process that uses real observations to constrain a model.**

 The **goal of climate reanalysis**, on the other hand, is to **ensure temporal consistency across several decades or even centuries.**

**Spatial resolution of a global reanalysis is typically coarser by a factor of 2 or 3 relative to the resolution of a modern NWP system.**

### Strengths and limitations of reanalysis

Strengths:
- Comprehensive data
- Based on observations
- Physical consistency
- Temporal consistency

Limitations:
- Resolutions
- Accuracy
- Trends


### The ERA5 climate reanalysis

The fifth generation of ECMWF’s global reanalysis (ERA5) is a global climate reanalysis dataset produced by ECMWF on behalf of C3S.

Main **technical characteristics** of the ERA5 dataset:

- ERA5 provides estimates of **350 different variables**, covering the entire global atmosphere, land surface, and ocean surface.
- Data are available in **hourly time steps for the entire 85-year period**, on horizontal grids at a resolution of approximately 31 km (0.25°) globally.
- ERA5 provides **uncertainty estimates** for most variables, but these are available only at reduced spatial (~62 km) and temporal (3-hourly)
- ERA5 assimilated a broad set of **reprocessed and newly available observations**, not previously used in reanalysis, including many satellite records.

ERA5 cannot be treated as an absolute certainty. Reanalysis can underestimate extreme events due to sparse observations, so it should be incorporated the uncertainty margin into the risk calculation.

**Uncertainty information for ERA5 data**

ERA5 includes estimates of uncertainties based on an **ensemble technique**. This is done by producing 10 slightly perturbed reanalyses — called the ensemble — alongside the main ERA5 reanalysis. 

![[Pasted image 20260524091726.png]]


### Use cases for ERA5

The many use cases for a climate reanalysis, such as ERA5, include climate monitoring, detection and attribution of climate change, atmospheric research, and support for numerical weather and climate modelling.

e.g:
- Water Resources: ERA5 data support hydrological forecasting, river basin management, and flood early warning systems, providing precise surface humidity, temperature, and precipitation inputs for efficient water use and disaster risk reduction.
- Offshore wind energy: Providing long-term wind speed, gust and temperature data, ESOX [https://climate.copernicus.eu/esox-lautec-using-climate-data-simulate-offshore-wind-power-operations](https://climate.copernicus.eu/esox-lautec-using-climate-data-simulate-offshore-wind-power-operations)
- Renewable energy infrastructure planning: Assess renewable energy potential and integrate climate considerations https://cds.climate.copernicus.eu/datasets/sis-energy-pecd?tab=overview
- Agriculture and crop modelling: AgERA5, agrometeorological indicators https://cds.climate.copernicus.eu/datasets/sis-agrometeorological-indicators?tab=overview
- Public health and heat stress monitoring: ERA5-HEAT, to develop Universal Thermal Climate Index [https://cds.climate.copernicus.eu/datasets/derived-utci-historical?tab=overview](https://cds.climate.copernicus.eu/datasets/derived-utci-historical?tab=overview)

One example of a C3S web application that supports climate adaptation is the European Climate Data Explorer (ECDE). ECDE is an online, user‑friendly tool developed to make climate data from C3S easily accessible for climate adaptation planning in Europe.



## Evolution of reanalysis

### History and diversity of reanalysis products

Why are so many reanalysis products? - Now it has specialized products

e.g.
- ERA5-Land: 9km resolution instead of 31 km as ERA5
- CERRA: For Europe: 5.5km
- CARRA: Arctic, 2.5km res

### A closer look at other reanalysis products

**a.    ERA5-Land** 

ERA5-Land is a global land surface dataset derived from ERA5, but it offers a higher resolution of about 9 km and more detailed information on 60 land surface variables, including soil, lakes, snow, evaporation and runoff.

**ERA5-Land is generated by running an advanced land surface model** forward in time using near-surface weather information from the ERA5 reanalysis, such as temperature, humidity, wind, surface pressure, and precipitation.


**b.**       **CERRA**

CERRA (the Copernicus European Regional Reanalysis) is a high-resolution regional reanalysis for the European domain. CERRA has a **horizontal resolution of 5.5 km** and 106 vertical levels.

**The main added value of CERRA is its higher horizontal resolution**. **This results in a better description of the model topography and physiographic data, especially in coastal and mountainous regions**.

**c.**       **CARRA**

CARRA (the Copernicus Arctic Regional Reanalysis) is a high-resolution regional reanalysis covering two Arctic domains. **High-resolution reanalysis of the Arctic region is particularly important because climate change is more pronounced there than elsewhere on Earth**.

A new version of CARRA, designated as CARRA2, has recently become available in the C3S Climate Data Store. Unlike the original CARRA reanalysis, which covers two Arctic sub-domains, CARRA2 covers the entire pan-Arctic region from 40 degrees North.

### The next generation: ERA6

ERA6, the next-generation reanalysis from ECMWF, is now in production. ERA6 is based on a much more advanced model version (IFS 49R1) than ERA5 — reflecting more than eight years of R&D improvements. The first release of ERA6 data is expected by late 2026.

ERA6 will have:
- Higher resolution
- More observations
- Improved atmospheric model
- Updated land surface components
- Advance data assimilation
- Ocean coupling
- User-driven products
- Improved uncertainty estimates


### Future developments

**The next-generation ERA7 reanalysis** will likely build on current trends — drawing on lessons learned since the 1980s and incorporating breakthroughs now emerging with ERA6.

**A vision for reanalysis beyond ERA7** is that users will no longer see reanalysis as a dataset, but rather as a toolset. A user can request climate information in a format that makes sense to them, which will then trigger a process that attempts to return this information.

## Reanalysis datasets in the CDS

### Introduction to the ERA Explorer

The ERA Explorer web application available through the CDS. This application is interactive and underpinned by ERA5 data in the CDS.

https://apps.climate.copernicus.eu/overview?app=era-explorer

![[Pasted image 20260525101425.png]]

## Closure of Module 4

### Key learning from this module

1. Reanalysis provides a consistent reconstruction of past and present climate conditions by combining observations with a weather model, giving us the best available estimate of how the atmosphere, ocean and land surface evolved over time.
2. A reanalysis dataset is produced by blending observations with a numerical weather model through data assimilation, creating a consistent and complete picture of the climate across space and time.
3. ERA5 offers high-quality, high-resolution climate information with strong physical consistency. However, users must be cautious of any biases, any non-physical trends, and regional limitations when interpreting the data.
4. ERA5 supports better decision-making across sectors — from agriculture and water management to energy, transport, and disaster risk reduction — by offering reliable data, which can be tailored to diverse operational and planning needs.
5. Reanalysis products like ERA5-Land, CERRA, and CARRA offer added value by providing higher-resolution or region-specific information, allowing users to choose the dataset that best matches their spatial scale, variable needs, and application.


# How do we make future climate predictions?

- Recognise the difference between climate predictions and projections,
- Describe prediction systems across different time horizons,
- Explain how multi-model ensembles are used to manage uncertainty, and describe how prediction skill is assessed to ensure reliability. 
- Find data related to seasonal forecasts in the CDS.

## Introducing climate predictions

### How this module fits in the course

 Climate predictions use scientific climate models to estimate future climate conditions over weeks, months, or even years. They build on knowledge of the current climate system (like oceans, atmosphere, and land) and combine it with simulations to predict likely trends and variations of climate variables. Unlike weather forecasts, which predict the weather in the coming days, and sub-seasonal forecasts, which extend to three to six weeks ahead, climate predictions focus on longer-term climate patterns.

### Difference between predictions and projections

- Weather predictions: Weather predictions are concerned with the occurrence of meteorological events at a specific location and time (e.g. will it rain in Bonn 3 days from now?)
- Climate predictions: provide information on the probability of events during an extended period in the future (e.g. what is the probability that the average temperature in London in the next season falls within the 20% highest values of the last 30 years?)
- Climate projections:  provide an estimate of the changes in climate statistics for several decades into the future assuming that the composition of the atmosphere (e.g. the concentration of CO2, aerosols, ozone, etc.) will change according to a prescribed scenario.

### Climate predictions at different timescales

To produce a prediction, a model needs two key types of information: 

a) the **initial values** of all the model variables at the starting time, and 

b) a **specification of the state** of any components whose evolution is not predicted directly by the model

---

### Uncertainties and errors in climate predictions

Every prediction — whether for weather, seasonal climate, or longer-term trends — is affected by errors and uncertainties. These arise from several sources.

- Initial conditions:We never know the exact state of the real atmosphere, ocean, or land surface. Observations are incomplete or imprecise, so the model starts from an approximation of reality.
- Boundary conditions and atmospheric composition: Some aspects of the climate system, such as vegetation cover, aerosol sources, or greenhouse gas concentrations, are prescribed during the prediction. These inputs also contain uncertainties that influence the outcome.
- Model approximation: Numerical models solve complex physical equations using approximate methods. The so-called parameterisations simplify small-scale physical processes (such as cloud formation or turbulence) that cannot be represented directly, introducing further uncertainty.

Because of the non-linear and chaotic nature of the atmosphere and ocean, small errors in any of these areas tend to grow over time as the model runs.

When a model simulation begins from observed data, this can lead the simulated climate to gradually drift away from the observed climatology, which climatologists refer to as **model drift**. In mathematical terms, this happens because the model naturally evolves toward its own preferred state — known as its attractor — which may not perfectly match the real-world climate.

Because of climate drift, when making climate predictions it is not advisable to compare the raw numerical model output directly with real-world observations. Instead, we compare **model anomalies** — that is, deviations from the model’s own climatology for a specific time of year — with observed anomalies, which represent deviations of observed variables from the real-world climatology.

### Introduction to ensembles

We can estimate the uncertainty in a climate prediction by performing **ensemble predictions**. Instead of producing one forecast, we run the model multiple times, introducing small perturbations to represent possible sources of error.

The ensembles can:
- **Create different initial conditions** that vary within the range of observational uncertainty;
- **Prescribe alternative boundary conditions** for the model; 
- **Perturb or modify some of the model’s physical calculations**, for instance by slightly adjusting the rates of change or using different parameter values;  
- Include the predictions from several different models for the same variable and time period (a **multi-model ensemble**).


## Predictions at different time horizons 


### Introduction to seasonal forecasts

Unlike weather forecasts, which provide day-to-day conditions, seasonal forecasts estimate average climate conditions over weeks to months, and past forecasts (hindcasts) are used to assess skill of the forecast.

The aim of seasonal forecasts is to predict how the **probability distribution of climate variables** in the coming months or seasons differs from the **long-term climatological distribution**. For this reason, seasonal forecasts are usually presented as **anomalies** — deviations from a reference climate state.

Although day-to-day weather cannot be predicted beyond about two weeks, predictability on seasonal time scales arises from slower-evolving phenomena that influence the atmosphere over longer periods.

### How seasonal forecasts are made

The state-of-the-art coupled models used for seasonal prediction represent the interactions and evolution of variables in the atmosphere, ocean, land surface, and sea ice. For each of these components, we need to specify their values at the initial time of the forecast — information provided by sophisticated data assimilation systems that combine observations with model estimates.

The evolution of the ocean, land, and sea-ice variables is influenced by their continuous interaction with the atmosphere, and the growth of errors in the atmospheric component will eventually affect the other components as well. To estimate the increasing uncertainty in predictions over time, forecasts are made using ensembles that include many separate model runs (typically between 20 and 50 members).

### What are hindcasts and how are they used?

Hindcasts, or reforecasts, are forecasts that start from past dates spanning several years — typically the last 20 to 30 years — and are produced using the same model version as that used for operational climate forecasts.

The main purpose of a multi-year set of hindcasts is **to define the model climatology as a function of forecast lead time.**

The key quantity derived from the hindcast climatology is the **mean model state** for a specific calendar month and forecast lead time. These climatological means are used to calculate model anomalies in operational forecasts.

Another crucial application of hindcasts is **the evaluation of seasonal forecast skill.** Because hindcasts cover past periods for which reanalysis data are available, they allow direct verification of model performance.

### Multi-model systems

One way to address the uncertainty caused by model errors is to combine forecasts from several different models into a multi-model system. A number of studies have shown that multi-model seasonal forecasts generally provide **higher reliability and skill** than forecasts from any individual model.

C3S provides multi-model seasonal forecasts that combine data from leading forecasting centres. At the time of writing, this includes nine [WMO-designated Global Producing Centres for Long-Range Forecasts](https://community.wmo.int/site/knowledge-hub/programmes-and-initiatives/climate-services/global-producing-centres-long-range-forecasts):  

1. the European Centre for Medium-Range Weather Forecasts ([ECMWF](https://www.ecmwf.int/en/forecasts/documentation-and-support/long-range))
2. the UK's national meteorological service ([Met Office](http://www.metoffice.gov.uk/research/climate/seasonal-to-decadal/gpc-outlooks)) 
3. the French meteorological service ([Météo-France](http://elaboration.seasonal.meteo.fr/))
4. the German meteorological service ([Deutscher Wetterdienst, DWD](https://www.dwd.de/EN/ourservices/seasonals_forecasts/project_description.html))
5. the Euro-Mediterranean Center on Climate Change ([Centro Euro-Mediterraneo sui Cambiamenti Climatici, CMCC](https://www.cmcc.it/projects/c3s-seasonal-forecasts))  
6. the US National Weather Service's NCEP ([National Centers for Environmental Prediction, NCEP](https://cfs.ncep.noaa.gov/))  
7. the Japan Meteorological Agency ([JMA](https://ds.data.jma.go.jp/tcc/tcc/products/model/outline/cps2_description.html))
8. Environment and Climate Change Canada ([ECCC](https://climate-scenarios.canada.ca/?page=seasonal-forecasts))
9. the Australian Bureau of Meteorology ([BOM](http://www.bom.gov.au/climate/outlooks/#/overview/summary/)).

### Interannual to decadal predictions

Although most seasonal predictability is confined to the first three to six months of the forecast, there is evidence that some climate phenomena can be predicted at longer time ranges.  

El Niño–Southern Oscillation (ENSO) have been achieved for **lead times exceeding one year**, although the detailed teleconnection patterns associated with individual events remain difficult to predict beyond a few months.

ECMWF has been producing forecasts of ENSO indices up to 14 months ahead for several years now, by extending a subset of its operational seasonal ensemble member

Predictability at the multi-year timescale arises from two main sources:

- **Knowledge of the initial state** of the climate system, particularly sub-surface ocean conditions, and 
- **Information on external forcings**, such as greenhouse gases, aerosols, and recent volcanic eruptions.
## Skill assessment

### Skill assessment principles

The skill of a forecast refers to how closely its predictions match observed outcomes, typically evaluated against a **reference forecast**, such as the long-term climatological average, to determine whether the model adds predictive value.

for seasonal to multi-annual forecasts, measures of skill are usually calculated from the set of hindcasts used to calibrate the operational forecasts.

In some situations, probabilities can be converted into categorical (yes/no) forecasts by applying a threshold — that is, deciding that an event “will occur” if its predicted probability exceeds a certain value. A correct prediction (or **hit**) occurs when the event is forecast and it does happen, while a **false alarm** occurs when the event is forecast but does not happen.

### Skill assessment metrics

A commonly used measure of skill is the **linear correlation** between the time series of forecast anomalies and those from reanalysis data. This correlation shows how closely the forecasted variations match the observed ones over time

The core principles behind evaluating forecast quality, such as reliability, accuracy, and usefulness


## Closure of Module 5


- Climate predictions use numerical climate models to estimate future climate conditions over weeks, months, or even a few years, starting from an estimate of the current state of the climate system (including atmosphere, oceans, sea-ice and land). 

- The climate simulated by climate models differs from the observed climate, therefore the original climate prediction data are affected by systematic biases which depend on the variable, the location and time of the year. Usually, these biases grow with forecast time. 

- To evaluate the performance of climate models, scientists run hindcasts (or reforecasts) over past periods. Hindcasts serve two main purposes: 1) to compute the model climatology and anomalies and 2) to assess forecast skill, helping to understand how well the models reproduce known historical climate conditions. 

- A bias-corrected output of climate predictions is produced by computing anomalies, that show the differences with respect to the model climate for the appropriate forecast time. 

- C3S provides multi-model seasonal predictions for up to 6 months, from ensemble forecasts produced by nine Global Producing Centres of Long-Range Forecasts. 

- The C3S Climate Data Store (CDS) also includes data from experiments run under the Decadal Climate Prediction Project, which were part of a contribution to the Sixth phase of the Coupled Model Intercomparison Project (CMIP6).


## Module 6: How do we make longer-term projections?

- Describe how climate projections are made, how they differ from predictions, and how they are used to support informed decisions about climate futures, for adaptation, mitigation and policy planning. 
- Explain methods for downscaling global climate projections to smaller, regional scales 
- Access data on the CDS to inform your climate projection questions.

### How this module fits in this course

![[Pasted image 20260529094843.png]]


### Introducing climate projections

Climate projections are **numerical simulations** that estimate how the Earth’s **climate might evolve** in the future. They are based on specific assumptions about how the concentrations of greenhouse gases (such as CO₂, methane, and ozone) and aerosols may change over time.

Differences between simulations:
- Assumptions about atmospheric composition:  climate projections use **pre-defined concentration scenarios**, which describe a **range of possible futures** depending on different assumptions about greenhouse gas emissions and other human activities
- Starting conditions: Climate predictions begin from an initial state that reflects the observed conditions of the climate system at a given time. Climate projections, however, **start from a modelled state** that is already consistent with the model’s own long-term climatology.
- Length and resolution of simulations: Because climate projections extend over much longer periods than seasonal to interannual predictions (often more than 100 times longer), they **require substantial computing resources**. For this reason they are typically run at a lower spatial resolution or with a smaller ensemble size.

### Climate forcings

Greenhouse gases (GHGs) play a key role in the Earth’s energy **balance by absorbing and re-emitting infrared radiation within the atmosphere**, effectively trapping heat and keeping the planet warmer than it would otherwise be.

The kind of changes that alter the Earth¡s energy balance are known as climate drivers or climate forcings, and have changed naturally over millennial to geological time scales.

Climate scientists often use the concept of **radiative forcing** to describe how changes in the atmosphere affect Earth’s energy balance. A **positive** radiative forcing means that more energy is entering the climate system, leading to warming, while a **negative** value means that more energy is leaving, leading to cooling.

### Climate forcing scenarios

For climate projections we need estimates of how the concentrations of radiatively active atmospheric constituents, such as greenhouse gases (GHGs, primarily carbon dioxide and methane) and aerosols, will change over time.

### Model intercomparison projects


The climate projections that underpin the findings of the IPCC Assessment Reports are produced through a coordinated set of numerical experiments known as the **Climate Model Intercomparison Project (CMIP)**.

Each CMIP phase features several Endorsed Model Intercomparison Projects (MIPs), which focus on specific aspects of climate research.

The scientific value of climate projections lies in the **statistical analysis over longer-term, typically multi-decadal, periods** (for example, 30 years), rather than in the year-to-year evolution of individual events, which has no predictive meaning in this context.

### CMIP data on the CDS

Data from the CMIP5 and CMIP6 experiments are available through the Copernicus Climate Change Service (C3S) website, the Copernicus Interactive Climate Atlas ([https://atlas.climate.copernicus.eu/atlas](https://atlas.climate.copernicus.eu/atlas)) offers an accessible way to explore results from historical and scenario simulations, alongside other C3S datasets, like reanalysis.

Through the Atlas, you can create customised plots showing simulations of selected climate variables under different scenarios with different SSP projections.

![[Pasted image 20260529130456.png]]

![[Pasted image 20260529130508.png]]

Is possible to seach for those in the CDS and CDS applications  

**The key message is that the CDS not only offers climate model output, such as CMIP6 projections, but also examples of ready-to-use datasets for specific sectors, such as water resources.**

## Downscaling

### Introducing downscaling

 In CMIP6, the horizontal resolution of the atmospheric component of most state-of-the-art models is typically around 50 to 100 km, these models can realistically simulate large-scale atmospheric features such as extratropical weather systems and tropical cyclones, **their resolution is too coarse to capture smaller-scale weather phenomena**, like intense thunderstorms, local wind patterns, or heavy rainfall events.

To obtain the finer-scale information needed for local climate adaptation planning and for assessing the intensity of extreme events, scientists have developed **downscaling techniques** to generate high-resolution climate information from global historical and scenario simulations.

**Downscaling methods**   
Methods to downscale climate information can be broadly divided into two categories: statistical and dynamical approaches.

- **Statistical downscaling**, results from global historical simulations are used as statistical “predictors” of observed conditions over a multi-decadal reference period. statistical downscaling is cheap to perform in computational terms, it relies on the assumption that the relationships between large-scale and local-scale climate variables will remain similar in the future to those observed in past decades, even in a different climate.
- **Dynamical downscaling**, which involves running a high-resolution **regional climate model (RCM)** over a limited area, using boundary conditions taken from a global climate simulation using the same concentration scenario.

![[Pasted image 20260529132950.png]]

**Statistical downscaling**:
- Advantages: 
	- Provides high-resolution data or even data at a single point of interest (e.g., local temperature or rainfall) at low computational cost.
	- Typically easier and faster to produce, can be done using standard software libraries (e.g., Python) on a normal computer.
	- Can be combined with bias correction to tune to local observational records, improving representation of local climate features.
- Disadvantages
	- Depends on the assumption that past relationships remain valid in the future, which may not always hold under strong climate change.
	- Usually available for a limited set of variables only, which may limit multi-variable or impact-model applications.
	- Outputs from different variables may not always be physically consistent, which can be problematic for modelling impact processes (e.g., hydrology).

**Dynamical downscaling**:
- Advantages:
	- Provides a physically consistent simulation of the regional climate, including multiple variables.
	- Better able to capture extreme events, complex terrain, coastlines, and mesoscale weather systems.
	- Useful for applications that need many climate variables simultaneously (e.g., hydrological or crop modelling).
- Disadvantages
	- Requires climate modelling expertise and computing infrastructure.
	- Computationally expensive, meaning fewer simulations may be available and uncertainty may be less thoroughly sampled.
	- Data volumes can be very large, making downloading and processing more demanding.
	- Results are still influenced by the global model providing the boundary conditions, so limitations from the global model can propagate into the regional one.

### Introducing CORDEX

The Coordinated Regional Climate Downscaling Experiment (**CORDEX**) brings together international efforts to perform and evaluate regional climate downscaling. **CORDEX aims to ensure that different downscaling techniques can be objectively compared and assessed.**

A detailed overview of CORDEX activities, data, and results is available on the CORDEX website ([https://cordex.org/](https://cordex.org/)).  Historically there have been three main types of CORDEX simulations:

- Evaluation experiments: These simulations have been driven by the ERA-Interim reanalysis for a period in the past. Because the boundary conditions come from a reanalysis system, they can be used to assess how well regional climate models reproduce observed climate features when provided with near-perfect large-scale information
- Historical experiments: These simulations also cover a period in the past (typically 1951-2005) but using boundary conditions from historical GCM simulations.  Similar to the historical CMIP simulations, these runs do not necessarily reproduce the exact weather in the past.
- Scenario experiments: The aim of these simulations is to provide climate projections following the RCP forcing scenarios (RCP2.6, RCP4.5, and RCP8.5). The boundary conditions are taken from GCM simulations following the same RCP pathways run under the CMIP5 protocol. The period covered is typically 2006-2100.

While currently CORDEX data are available only for the RCP scenarios, downscaling of CMIP6 is currently underway, and a selection of the data will be added to the CDS in due course.

### Accessing CORDEX data on the Climate Data Store

The C3S Climate Data Store (CDS) provides access to both the original data from CORDEX experiments covering 14 different geographical domains, as well as a variety of climate indicators for the European region derived from EURO-CORDEX simulations.

You can look at the CORDEX data in the CDS link below:  
[https://cds.climate.copernicus.eu/datasets/projections-cordex-domains-single-levels?tab=overview](https://cds.climate.copernicus.eu/datasets/projections-cordex-domains-single-levels?tab=overview)


## Closure of Module 6

### Key learnings of this module

- **Climate projections** are numerical simulations of the future evolution of the Earth’s climate, based on specific assumptions about how key climate drivers such as greenhouse gases (CO₂, methane, etc.), aerosols, and ozone will change in the future.
- In successive phases of the **Coupled Model Intercomparison Project (CMIP)**, different sets of scenarios have been used to describe the evolution of these drivers: the **Representative Concentration Pathways (RCPs)** in CMIP5, and the **Shared Socioeconomic Pathways (SSPs)** in CMIP6.
- Unlike climate predictions, global climate projections do not start from the observed state of the climate system. Instead, they begin from equilibrated model states at the end of long simulations covering pre-industrial conditions and the historical period (1850–2014 in CMIP6), in order to avoid the accumulation of model biases over time.
- In **dynamical downscaling** experiments regional climate models are driven by boundary conditions from global simulations. These experiments follow protocols set by the **Coordinated Regional Climate Downscaling Experiment (CORDEX)**.
- The **C3S Climate Data Store (CDS)** provides access to data from pre-industrial, historical and scenario simulations of several global models (both CMIP5 and CMIP6), as well as evaluation, historical and scenario runs from CORDEX regional experiments.
### What’s next?

Congratulations! You have now completed all the modules of this MOOC on Understanding Climate data: From analysis of the past to future projections.
