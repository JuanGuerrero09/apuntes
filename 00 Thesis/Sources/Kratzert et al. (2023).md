---
Title: Caravan - a global community dataset for large-sample hydrology
Authors:
  - Frederik Kratzert
  - Grey Nearing
  - Nans Addor
  - Tyler Erickson
  - Martin Gauch
  - Oren Gilon
  - Lukas Gudmundsson
  - Avinatan Hassidim
  - Daniel Klotz
  - Sella Nevo
  - Guy Shalev
  - Yossi Matias
Journal: Scientific Data (nature)
Date: 2023-01-31
Year: 2023
Status: To Review
tags:
  - Hydrology
  - Caravan-Dataset
---
Source: [[Caravan - A global community dataset for large-sample hydrology.pdf]]

## Abstract

High-quality datasets are essential to support hydrological science and modeling. Several CaMELS (Catchment Attributes and Meteorology for Large-sample Studies) datasets exist for specific countries or regions, however these datasets lack standardization, which makes global studies difficult. This paper introduces a dataset called Caravan (a series of CaMELS) that standardizes and aggregates seven existing large-sample hydrology datasets. Caravan includes meteorological forcing data, streamflow data, and static catchment attributes (e.g., geophysical, sociological, climatological) for 6830 catchments. Most importantly, Caravan is both a dataset and open-source software that allows members of the hydrology community to extend the dataset to new locations by extracting forcing data and catchment attributes in the cloud. Our vision is for Caravan to democratize the creation and use of globally-standardized large-sample hydrology datasets. Caravan is a truly global open-source community resource.

## Summary

Large-sample hydrology (LSH) is a subdiscipline that relies on data from hundresds to thousands of catchments, many of these are refered to as Catchment Attributes and MEteorology for Large-sample Studies ([[CAMELS]]) datasets. But none of existing CAMELS are global.

The Caravan dataset is a collection of region-specific datasets, which are merged and standardized with the following characteristics: 
1. Standardized: Data are standardized globally meaning that the same meteorological and landscape variables exist for all catchments, and are derived using the same procedures from the same source datasets.
2. Open: All data are publicly available with an open license. 
3. Extensible: All software tools and source datasets used to produce Caravan are open and accessible through a cloud platform (Google Earth Engine) to enable others to extend (i.e., add catchments to) the dataset.

The current Caravan dataset includes streamflow observations from 6830 basins with  daily data from almost four decades (1981–2020), including catchments that experienced significant climate trends. 

There's no streamflow data prior 1981 since is the beginning of the [[ERA5]]-Land [[Reanalysis]]. Caravan includes meteorological forcing data from ERA5-Land and are the following:

- Precipitation
- Potential evaporation
- Air temperature
- Dew point temperature
- Shortwave radiation
- Net thermal radiation at the surface
- Surface pressure
- Eastward wind component
- Northward wind component

And has the catchment attributes derived from HydroATLAS in the following groups:
- Hydrology
- Physiography
- Climate
- Land cover
- Soils and Geology
- Anthropogenic

The dataset is organized in the following subfolders:
- attributes
- shapefiles
- timeseries
- code



### Relevant Definitions

Forcing data: 
Static catchment attributes: 
FAIR: Findable, Accessible, Interoperable and Re-usable

## Extracted Highlights & Quotes

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=92,95,101,48&color=red|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > This paper introduces a dataset called Caravan (a series of CaMELS) that standardizes and aggregates seven existing large-sample hydrology datasets. 
> 
> 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=107,44,109,19&color=red|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > Our vision is for Caravan to democratize the creation and use of globally-standardized large-sample hydrology datasets. Caravan is a truly global open-source community resource.


### Background and Summary

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=112,94,114,76&color=red|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > Hydrological processes (e.g., streamflow generation) are governed by hydroclimatic variables (e.g., rainfall, temperature, humidity) and landscape characteristics (e.g., soils, landcover, human intervention). 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=149,0,155,1&color=red|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > Recognizing this has led to the development of a sub-discipline in the hydrological sciences called large-sample hydrology (LSH), which relies on data from hundreds to thousands of catchments 1

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=201,28,207,1&color=red|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > Many of these are referred to as Catchment Attributes and MEteorology for Large-sample Studies (CAMELS) datasets
> 
> 

> [!PDF|note] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=1&selection=210,0,211,62&color=note|Caravan - A global community dataset for large-sample hydrology, p.1]]
> > Although none of the existing CAMELS datasets are global, there are global collections of streamflow data like the Global Streamflow Indices and Metadata Archive (GSIM)
> 
> 
> [!PDF|note] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=18,11,19,53&color=note|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Of these collections, however, are not coupled with catchment attributes or meteorological forcing data. 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=28,2,34,10&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > On the other hand, HydroATLAS 31 provides global catchment attributes, but does not include meteorological or streamflow data.

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=53,45,54,62&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> >  from a scientific perspective, proprietary datasets are a roadblock to open, collaborative, reproducible, and extensible research.
> 
> 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=62,12,65,53&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Four major limitations of many of the existing region-specific datasets: 
> > (i) lack of common standards to allow for intercomparison
> > (ii) lack of metadata and uncertainty estimates to assess data reliability
> > (iii) lack of information about human interventions
> > (iv) limited accessibility. 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=78,2,80,37&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > They propose that community, cloud-based infrastructure could help overcome these limitations, by allowing for the use and development of standardized practices and codebases.

> [!PDF|important] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=81,0,101,104&color=important|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > The Caravan dataset presented here is a step toward realizing this vision. The basis for Caravan is a collection of region-specific datasets, which are merged and standardized in a way that is designed with the following characteristics: 
> > 
> > 1. Standardized: Data are standardized globally meaning that the same meteorological and landscape variables exist for all catchments, and are derived using the same procedures from the same source datasets. 
> > 2. Open: All data are publicly available with an open license. 
> > 3. Extensible: All software tools and source datasets used to produce Caravan are open and accessible through a cloud platform (Google Earth Engine) to enable others to extend (i.e., add catchments to) the dataset.
> 
> 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=104,0,105,69&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Caravan is designed to be extensible, so that anyone can easily derive meteorological forcings and landscape attributes for additional catchments using a standardized procedure. 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=110,77,117,24&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > The current Caravan dataset that we introduce here includes streamflow observations from 6830 basins, spanning most Global Environmental Stratification (GEnS) climate zones 36 , with the exception of arctic, extreme cold, and arid zones. Caravan includes daily data from almost four decades (1981–2020), including catchments that experienced significant climate trends.


### Methods

> [!PDF|note] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=123,0,165,1&color=note|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Daily streamflow observations for the 6830 basins currently in Caravan were aggregated from several existing open datasets: 
> > • 482 basins from CAMELS (US) 
> > • 150 basins from CAMELS-AUS 
> > • 376 basins from CAMELS-BR 
> > • 314 basins from CAMELS-CL 
> > • 408 basins from CAMELS-GB 
> > • 4621 basins from HYSETS 
> > • 479 basins from LamaH-CE 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=180,2,183,1&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Streamflow data is normalized by catchment area to units of mm/day.

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=2&selection=186,0,188,36&color=red|Caravan - A global community dataset for large-sample hydrology, p.2]]
> > Time periods of available streamflow observations varies between basins, however we did not include any streamflow data prior to 1981 because this is the beginning of the ERA5-Land reanalysis, which was used to derive meteorological forcing data. 


![[Caravan - A global community dataset for large-sample hydrology.pdf#page=4&rect=152,436,475,561&color=red|Caravan - A global community dataset for large-sample hydrology, p.4]]

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=4&selection=60,0,65,93&color=red|Caravan - A global community dataset for large-sample hydrology, p.4]]
> > Caravan includes two sets of catchment attributes: (i) attributes derived from HydroATLAS 31,38 and (ii) climate attributes derived from the daily ERA5-Land time series included in Caravan.

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=4&selection=69,101,70,66&color=red|Caravan - A global community dataset for large-sample hydrology, p.4]]
> > HydroATLAS has global coverage with a license that allows for redistribution.

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=4&selection=74,90,76,50&color=red|Caravan - A global community dataset for large-sample hydrology, p.4]]
> > Therefore, we first computed the spatial join of the HydroATLAS polygons and the catchment boundaries and then derived the catchment attributes as an area-weighted aggregate

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=5&selection=15,0,16,88&color=red|Caravan - A global community dataset for large-sample hydrology, p.5]]
> > attributes included in Caravan can be loosely grouped into the following categories: hydrology, physiography, climatology, soils & geology, land cover characteristics, and anthropogenic influences. 

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=6&selection=20,0,26,41&color=red|Caravan - A global community dataset for large-sample hydrology, p.6]]
> > The current version of the Caravan dataset (6830 watersheds) 40 is available at https://doi.org/10.5281/ zenodo.7540792. A project homepage is available at https://github.com/kratzert/Caravan/, including all code and where news and updates are announced.

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=7&selection=98,0,98,103&color=red|Caravan - A global community dataset for large-sample hydrology, p.7]]
> > All time series data except streamflow are aggregated (daily and spatially over basins) from ERA5-Land.


What does it mean that they are aggregated?

> [!PDF|red] [[Caravan - A global community dataset for large-sample hydrology.pdf#page=9&selection=17,0,18,43&color=red|Caravan - A global community dataset for large-sample hydrology, p.9]]
> > Our vision for Caravan is as the foundation of a dynamically growing community LSH dataset that anyone in the hydrology community can access and augment.



