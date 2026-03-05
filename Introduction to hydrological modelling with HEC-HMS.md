
# Part 1: Terrain processing

Objective:
- Hands on experience on develop _lumped, conceptual, semi-distributed rainfall-runoff models_
- learn how to get data for DTM to delineate a catchments
- develop an event based rainfall-runoff model of a catchment using HEC-HMC

Steps:
- Gather satellite data (Digital terrain model) and pre process it in QGIS
- Catchment delineation in HEC-HMS
- Event based modelling of catchment in HEC-HMS
- Reporting


## Step 1. Gathering and processing DTM

Create a DEM with river networks and catchment polygons using digital elevation data.

Sources: SRTM, ASTER

Raster data needs:
- Re-projected in the reference system of Indonesia (EPSG 2310)
- Reduce dimension of the raster (HEC-HMS can't handle too big raster files)

## Step 2. Catchment delineation

Terrain processing:
- Terrain process uses elevation data as an input and prepares datasets to describe the drainage pattern of the catchment, the datasets are:
	- 5 datasets for flow direction, accumulation, etc
	- two vector datasets on watersheds and steams
	- last dataset is agregated catchment
- Terrain model derive drainage network by:
	- fill sinks
	- flow direction and accumulation determination
	- streams identification
- During filling sinks:
	- filling all depressions by increasing the pit cells to the surronding terrain
	- pits maybe due errors in the DEM
	- depression-less DEM allows water to flow in the terrain
- Flow direction:
	-  Defines direction of the steepest descent for each terrain cell
	- eight-point pour algorithm specifies the following eight possible direction
		- 1 = east, 2 = southeast
		- 4 = south, 8 = southwest
		- 16 = west, 32 = northwest
		- 64 = north, 128 = northeast
- Flow accumulation
	- Part to define the cells that are part of the river network to the ones that are part of the terrain
	- It counts how many cells are contributing to draining in that cell
- Stream definition:
	- Streams are defined in grid cells which receive flow from cells larger than a threshold 

Catchment delineation:
- Objective to locate catchment outlet and delineate catchment and sub catchments
- Also possible in any GIS software but HMS computed automatically the characteristics in the rainfall runoff model
- Not work with many sub-catchments to not over complicate the model

QGIS
- New project
- Check projection
- Layer - add raster layer - add N05 dem astgtm_n05e095_dem
- ricght click in layer, dont change projection in source but do the mathematical process
- Reproject in processing toolbox GDAL - Warp (reproject)
- output file resolution to 60 so is easier to manage and bilinear (2x2 kernel) as resampling method to use

HEC-HMS
- Add terrain data
- Add basin model
- Associate basin model to the terrain data
- GIS - Process sinks - pre process drainage
- Now identify streams is available
- Add outlet shapefile
- Break point selection tool for selecting outlet
- GIS - Delineate elements
	- Subbasin Prefix: W
	- Reach Prefix: R
	- Insert Junctions: Yes
	- Convert Break Points: Yes
![[Pasted image 20260304113503.png]]

![[Pasted image 20260304114037.png]]

- Aggregate (separate or merge different basins)

# Part 2: Hydrological Modelling

## Rainfall-Runoff Model

Primary model for flood forecasting and flood management.

Categories:
- **Distributed physically based:** Mathematical representation of the different processess • Main physical processes considered are:  hydrology and hydraulics of ground surface,  infiltration in the unsaturated zone, and  groundwater in the saturated zone 
- **Lumped conceptual**: Only temporal variation and no spatial variation, cathcments divided in subcatchments, used in HEC-HMS
- **Data driven**: Modelling to approximate $Y=f(x)$ with data, ex use of artificial neural networks
- Systems based
- Hybrid

Event-based models: represent a specific event
Continuous models: represent all-year processes

To compute runoff for forecasting: use rainfall-runoff models (simpler, lumped-conceptual, empirical or data driven models)
To carry scenario analysis (like climate change): use catchment models

### From rainfall to runoff

**Rainfall loss and excess rainfall**

Excess rainfall ends up as direct runoff
Excess rainfall (or effective rainfall) = total rainfall - rainfall loss
Initial abstraction: rainfall amount before the excess rainfall starts


Steps:
- Estimate loss of rainfall (initial abstraction)
- Compute excess rainfall
- Estimate direct runoff
- Estimate baseflow
- Total flow = baseflow + direct runoff


**Rainfall losses estimation: SCS Curve Number approach**

The relation of rainfall vs direct runoff by:
- Land use
- Soil type

Curves give the maximum retention capacity **S** by



- P = total rainfall
- I= Initial abstraction
- $Fa$ = Additional depth of water retained in the catchment after the runoff begins
- Rainfall loss $I_a+ Fa$
- P = effective rainfall
- Total rainfall = P = Ia + Fa Pe
- S = Max potential retention
- Hypothesis:

$$
\frac{Fa}{S} = \frac{P_e}{P - I_a}
$$
Converted to
$$
P_e = \frac{(P-I_a)^2}{P-I_a+S}
$$
Being:
$$
I_a = 0.2 S \qquad S = \frac{25400 - 254CN}{CN}
$$

**Basin model**

It provides the physical representation of watershed and rivers and their connection

The following processes can be modelled:
- **Loss** - rainfall lost through infiltration
- **Transform** - effective rainfall transformed into runoff
- **Baseflow** - water that comes back to the river after infiltration
- Canopy
- Snow
- Surface

Losses - SCS Curve number
Transform - Clark Unit Hydrograph
