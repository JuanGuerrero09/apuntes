---
Class: "[[QGIS for Water Resources]]"
Professor: Hans van der Kwast
Date: 2025-10-02
Last Modified: Thursday 2nd October 2025 10:26
---
# Thursday 2nd October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

## Spatial Data Infrastructure (SDI)
### Sharing environmental data

Define open data -> A piece of data/information or source code is open if anyone is free to use, reuse and redistribute it. Publicly funded data are public good and should be free and available
Describe benefits of open data for enviromental management
	- reduce duplicate efforts
	- more data and info linked with models and tools
	- better services
Explain why sharing data is so challenging
	- suspcition from third party data
	- fear that maybe is wrongly used
### Spatial data infrastructure
define spatial data infrastructure (SDI) 
	Enabling enviroment that supports easy access and utilization of geospatial data
	Works with Discovery, Visualization, Evaluation and access of data
diference between GIS and SDI
why sharing data with SDI is good practice

### Interoperable standards and open source software
Describe challenges with integrating (spatial) data
	Incopatibilities within formats
	Missing docs and metadata 
	Data fragmentation and replication
	Data policies
Most used OGC standards
	Open Geostandard Consortium
	FAIR -> Findable Accessive Interoperable Reusables
	WMS -> Web mapping services (render image of the data)
	WFS -> Web feature services (vector data)
	WCS -> Web coverage services (for rasters)
Why interoperable standards are important
	For exchange data 
	Nest SGI
Advantages of open source software
	Interoperability between components
	International standards
	User community
Software components of a SDI
	Spatial database for storing data (PostgreSQL)
	Map server to publishing data (GeoServer)
	Interface for visualization data (Django)
	Catalogue for storing and searching data (PyCSW)
### Metadata
Define metadata
	Detailed description of the dataset with info of the content quality, structure and accessability
Examples of metadata
Why is important to share data 

## Value chain, business model and data policy
Describe Value chain of data
![[Pasted image 20251002002549.png]]

Explain the cost of selling data
![[Pasted image 20251002002730.png]]
Explain strategic risk of selling data
![[Pasted image 20251002002750.png]]
![[Pasted image 20251002002924.png]]

Explain why a data policy should be linked to a bussiness model.
![[Pasted image 20251002003218.png]]
## Theory Vector Overlay Tools
Clip
The overlap part is clipped with information of the first
![[Pasted image 20251002003545.png]]
Difference
The overlap part is cut
![[Pasted image 20251002003620.png]]

Intersection
The overlap part is clipped with information of the two Combine attribute table of both polygons
![[Pasted image 20251002003804.png]]

Union
Se unen las attribute tables de los dos
![[Pasted image 20251002003920.png]]

Symettrical diference 

Overlapping part se corta
![[Pasted image 20251002004005.png]]

![[Pasted image 20251002004033.png]]
![[Pasted image 20251002004103.png]]
![[Pasted image 20251002004121.png]]

---
## Lesson 5

### Adding Data from Web Map Services
 Go to the website [https://esa-worldcover.org/en/data-access](https://esa-worldcover.org/en/data-access) and scroll down to the section _Web Map Services_. Go to your QGIS project and click the _Open Data Source Manager_ button  from the toolbar under the main menu.  
  
In the _Data Source Manager_ dialog choose WMS/WMTS and click the New button.  
  
5. In the dialog that follows, type _ESA WorldCover 2020_ for Name.  

6. On the WorldCover data website right-click on the WMTS link and choose **Copy Link**.
7. Paste the link in the _Create a New WMS/WMTS Connection_ dialog in QGIS. Keep the defaults and click _OK_.
![[Pasted image 20251002103155.png]]

![[Pasted image 20251002103210.png]]

In the webviewer screenshot to have the label
![[Pasted image 20251002103840.png]]

![[Pasted image 20251002103820.png]]

Have a closer look at the land-cover map.  

- What are the largest differences in land cover between the upstream and downstream areas of the Rur catchment? -> Tree Cover and Grassland change for cropland
- What are the largest cities in the catchment? Aachen, Düren and Kerkrade
- Compare the land-cover map with _Google Satellite_ from the _QuickMapServices_ plugin. Are there important land cover / land use features missing that influence the hydrology in the Rur catchment?

### Adding Vector Data from OpenStreetMap
OpenStreetMap (OSM) is a collaborative project to create a free editable map of the world. OSM is considered a prominent example of volunteered geographic information (VGI) or crowdsourcing. There are several ways to use the data:  

- Through the interactive map on the OpenStreetMap website ([http://www.openstreetmap.org](http://www.openstreetmap.org/))
- In QGIS you can add OSM basemaps via the _QuickMapServices_ plugin
- In QGIS you can download OSM data directly over the Internet. There are several ways to do this. In this section we’ll use the _QuickOSM_ plugin which uses the [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API).  
    

In this section we are going to download OSM vector data directly in QGIS for the Rur Catchment. We continue from the previous results, but we only visualise the _Rur_Catchment_ and _Channels_Clip_ layers. The other layers should be unchecked.

![[Pasted image 20251002104139.png]]
![[Pasted image 20251002104632.png]]
![[Pasted image 20251002104640.png]]

And run query and the new layer will be added as a temporary scratch layer as indicated by the Temporary Scratch Layer icon in the indicator space to the right of the layer in the _Layers_ panel. This means that it will be discarded after closing QGIS. It is important to make these layers permanent if you want to keep them.

To lookup places type `>` followed by a space and the address.
![[Pasted image 20251002110648.png]]
In this lesson you have learned to:

- add _OGC web map services_ to QGIS
- download vectors from _OpenStreetMap_ using the _QuickOSM plugin_
- style open data from the web


## Calculating Percentage of Land Cover per Subcatchment

### Preparing the Subcatchment Layer

For studies on catchment hydrology it is often important to know the percentage of land cover per subcatchment.

To change tha value of the catchment polygons using the _Field Calculator_ formulate the equation `DN = $id` and click _Update All_.
![[Pasted image 20251002114830.png]]
  
The `$id` function assigns the unique feature id to each feature in the attribute table.  
  
Now we need to add an attribute with the surface area for each subcatchment polygon.  
  
6. Open the _Field Calculator_ dialog.  
  
7. In the _Field Calculator_ dialog, create a new field with the _Output field name CatchArea_. Indicate that the _Output field type_ is _Decimal number (real)_ with an _Output field length_ of 10 and a _Precision_ of 2.  

8. Under the _Expression_ tab, type:  `$area 

Click _OK_ to create the new field with the subcatchment areas.
![[Pasted image 20251002115221.png]]

### Preparing the Land Cover Data
Now we have to prepare the land-cover data, which consists of the following steps you'll be guided through in the next sections:  

#### Download CORINE 2018 data
In the previous lesson we used a WMTS layer for vizualizing land cover. For calculations, however, we can't use the WMTS or WMS rendered pictures - we need access to the data. For this lesson we will download the CORINE 2018 open data from the Copernicus Land Monitoring Service website.

1. Open a browser and go to [https://land.copernicus.eu/pan-european/corine-land-cover](https://land.copernicus.eu/pan-european/corine-land-cover). 
2. Click on CLC 2018.  

You'll see an online map with a preview of the layer.  
  
3. Click the _Download_ tab.
4. For downloading data you need an account. Click the link to register.  
  
Once logged in you can choose from different data formats.



#### Style the land-cover layer

Now we're going to style the CORINE 2018 Land Cover map. In the downloaded dataset you'll find a _Legend_ folder. The folder contains legend files in different formats. Here we'll use the _clc_legend.qml_ file, a QGIS layer style file.  
  
1. Right-click on the land cover layer and choose _Properties_. Go to the _Symbology_ tab.  
  
2. At the bottom of the dialog, go to **Style | Load Style**.

![[Pasted image 20251002134420.png]]

![[Pasted image 20251002134431.png]]

#### Clip and reproject the land-cover layer
The land-cover layer is still too large (even if you downloaded the provided subset), so we're going to prepare a subset that only covers the subcatchments. In addition we're also going to reproject the land-cover layer (EPSG: 3035) to the same projection as the _catchpolygons_ layer (EPSG:32632). Both can be done with one tool.
![[Pasted image 20251002135049.png]]

Copy the style from the ___U2018_CLC2018_V2020_20u1___ layer to the _Corine2018_repr_ layer and remove the ___U2018_CLC2018_V2020_20u1___ layer.  
  
The result should be like this:

![[Pasted image 20251002135058.png]]


#### Aggregate the land-cover classes

Since CORNE has [different levels](https://land.copernicus.eu/user-corner/technical-library/corine-land-cover-nomenclature-guidelines/html) of land-cover classes. The level 3 data (code_18 field) will be changed to only the first one, meaning que XYZ numbers only will keep the X. This is done by opening que attribute table of the layer and go to Field Calculator.
![[Pasted image 20251002135927.png]]


#### Dissolve land-cover features
Now there are many contiguous polygons with the same level 1 class. These have to be merged into one feature. This is done with the _dissolve_ operation.  
  
1. In the main menu go to **Vector | Geoprocessing tools | Dissolve**.
2. In the _Dissolve_ dialog choose _corine2018_repr_ as _Input layer_ and select the _level1_ field as the _Dissolve field_. Save the file to the GeoPackage as _corine2018_dissolved_ and click _Run_.
![[Pasted image 20251002140921.png]]

Now show only 5 features with level 1 classes 1 to 5 . Note that you can click on the field name to sort the features.
![[Pasted image 20251002140233.png]]
Remove _corine2018_repr_ from the _Layers Panel_ and style the _corine2018_dissolved_ layer with colors based on the original CORINE level 3 legend. Note that the Level 1 legend is not provided, so you need to choose the colors in the Layer Styling panel.
![[Pasted image 20251002140239.png]]

### Intersect the Land Cover Layer with the Subcatchment Layer

![[Pasted image 20251002141836.png]]

If there's error solve it doing the process of this[[Class 3#Clipping layers to the catchment boundary | Solving geometry proccess]] and run again the intersection
![[Pasted image 20251002142530.png]]

### Calculate Land Cover Class Area per Subcatchment

Calculate the Area with $area in field calculator, and then the percentage, and then classify as follows.
![[Pasted image 20251002144035.png]]
![[Pasted image 20251002144200.png]]

In this lesson you have learned to:

- add unique values to vector layers
- calculate areas of polygons in attribute tables
- style a vector layer using a .qml file
- _clip_, _reproject_, and _export_ _vector layers_ to another format
- use _conditions_ in the _field calculator_
- apply vector _geoprocessing tools_ such as _dissolve_, _intersection_, and _buffer_
- correct geometry errors
- create pie charts using the _DataPlotly_ plugin

---
# 🐢 Definitions


---
# 📅 Homework