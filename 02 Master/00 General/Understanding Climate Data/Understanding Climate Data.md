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

By the end of this module, you will be able to describe the history of climate modelling and the key components of a climate model, explain the role of grid structures in climate models, discuss different processes in climate modelling, identify the role of chaos,  explain the need for observations in modelling, understand the framework for model evaluation, and finally, be able to find and access data derived from climate models yourself through the Climate Data Store of C3S.

## Introducing climate models

### How this module fits in the course

Examining past climate trends alone doesn't allow for straightforward predictions about future changes. **It is also necessary to develop models that can simulate the many processes governing the climate system's evolution.** In this module, **you will learn about the elements on which climate models are based, how they are made, and how we can use them to improve our estimates of past climate, make climate predictions and projections, and answer scientific questions about the climate system.**

### Recap of the difference between weather and climate



## Characteristics of a climate model

## Evaluating climate models

## Climate model derived data in the CDS

##  Closure of Module 3














Module 3

- Describe what climate models are and how they have evolved.
- Understand the vaious types of model derived data, such as reanalysis, climate predictions and projections.
- Find and access model derived data  in the CDS.

Module 4

- Explain the concept of reanalysis, how reanalysis data are produced and used, what ERA5 is, and why reanalysis is an important and popular data type to characterize and analyse the past and present climate. 
- Go into the C3S website and find reanalysis products that you can use for your own applications.

Module 5

- Recognise the difference between climate predictions and projections,
- Describe prediction systems across different time horizons,
- Explain how multi-model ensembles are used to manage uncertainty, and describe how prediction skill is assessed to ensure reliability. 
- Find data related to seasonal forecasts in the CDS.


Module 6

- Describe how climate projections are made, how they differ from predictions, and how they are used to support informed decisions about climate futures, for adaptation, mitigation and policy planning. 
- Explain methods for downscaling global climate projections to smaller, regional scales 
- Access data on the CDS to inform your climate projection questions.