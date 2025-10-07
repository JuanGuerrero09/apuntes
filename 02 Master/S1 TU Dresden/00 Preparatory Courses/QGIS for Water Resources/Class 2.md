---
Class: "[[QGIS for Water Resources]]"
Professor:
Date: 2025-09-30
Last Modified: Tuesday 30th September 2025 09:11
---
# Tuesday 30th September 2025

# 📒Class Summary


# 🕸️Resources



# 📝 Notes

## Raster 🌎

The two data models to represent data in reality in a *GIS*
- Vectors
- Rasters
The Raster data is formed by a *matrix* of *pixels* or *Cells*, ordered in rows and columns and with _resolution_ based on the size of the _height_ and _width_ of the cell. The data types for the raster can be the following:
- Integer - for discrete or boolean data
- Float - for continuous data
- NODATA, mv, nan - for no data or missing values
Why is important to define the data type
- How to visualize or style it
- The type of analysis and calculations available
### Types of Raster
- Boolean - Only bool 0/1 true and false ex. Flooded or not Flooded, Residential or not Residential = Flooded Residential
- Continuous -real values  representing features without sharp borders, It can have gradients = DEM, temperature map, runoff map
- Discrete - to classify by using integer values repressenting classes = Land-use map, soil maps
### Bands in rasters

It can be single band or multiple bands, being single bands in discrete, continuous and boolean rasters by using gradient colors when needed. Or multiple band rasters for *remote sensing* 

Elevation is continuous and single band false color
Boolean and discrete palette unit values
Precipitation uses interpolation to have the continuous data from gauges
### Vector vs Raster

| *Raster*                                  | *Vector*                             |
| ----------------------------------------- | ------------------------------------ |
| Difficult to make overlays                | Easy to make overlays                |
| Difficult to register, scale or reproject | Easy to register, scale or reproject |
| Generally large files                     | Generally smaller files              |
| Difficult to update                       | Easier to update                     |
| Map Algebra                               | Network analysis                     |
| Continuous features                       | Discrete features                    |

## GIS Raster Processing

After this course the learning objective is:
- describe different raster data types
- use map algebra for geoprocessing
### Syntax for operators
### Types of operations

#### Local operations

Independent of the property of neighbouring cells (i.e. no relations in lateral direction), a new map is generated on a cell-by-cell basis
Examples:
	Newmap = MapA + MapB
	DepthToGroundwater = Elevation - GWLevel
	PrecTot = 12 * (Precip_jan + Precip_jul)/2
#### Focal or neighbourhood operations

Relates cells to its neighbouts. It can be:
1. Window operations
2. Flow direction operations
3. Friction path operations
4. Transport of material over flow direction map
5. Visibility analysis
Examples:
	AverageElevation = windowdiversity(Habitats, 5000)
	Diversity = windowdiversity(Habitats, 5000)
	Slopemap = slope(DEM)
	RunoffMapp = accuflux(LddMap, 1000 * RainMm)

#### Zonal or area operations

Cell value is determined on basis of values of cell that are in the same area under consideration
Examples:
	ClassAverage =aareaaverage(tempreature, landuse)
	AverageKsat = aareaaverage(ksat, soilmap)

#### Global function or map operations
Computes one non-spatial value as a function of existing cell values associated with a map

Examples: 
	averagePrecipitation
	TotalPopulation

### Boolean oprations

AND = 1-1 = 1 1-0 = 0 0-0 = 0
OR = 1-1 = 1 1-0 = 1 0-0 = 0
XOR = 1-1 = 0 1-0 = 1 0-0 = 0 if missing value it's always missing value, with 0 or 1
NOT = 1 = 0 0 = 1

## Interpolation 🛸

Thyssen is more realistic to interpolate when there's no a lot of density points for the model, mean IDW works for a lot of points.

---
## Lesson 2: Importing Tabular Data into QGIS

 Firstly, it's a good practice to do a exploratory analysis to the content of speadsheets or csv before importing them to any software.
![[Pasted image 20250930135618.png]]
### Working with Spreadsheets
There are different ways in QGIS to import tabular data:  
- **Layer | Add Layer | Add delimited text layer**. This is the standard importer that allows us to import delimited text files.
- **Layer | Add Layer | Add spreadsheet layer**. This tool can load spreadsheet files (`*.ods`, `*.xls`, `*.xlsx`) as a layer with options to use the first line as a header, ignore rows, and load geometry from x and y fields. 
For the second (and easiest option) the plugin _Spreadsheet Layers_ is needed. When the layer is created toggle the Geometry, add a projection and change the data type when needed. Also if the points don't appear is possible to zoom to layer by right clicking in the layer.
![[Pasted image 20250930104824.png]]
![[Pasted image 20250930105257.png]]

For the extra table with the temperature data since there is no geometry (coordinates) in the table, we should uncheck the box.
### Convert Spreadsheet to Vector Layer
Since when Adding the spreadsheet is saved as a temporary virtual layer it's necessary to convert it to a GIS vector format, in this case, into a shapefile. *GeoPackages* like the used in the previous lesson are better, but _shapefiles_, however, are still very much used and therefore we also use them in this course.
Right-click on the station layer and choose **Export | Save features as...**, then in the _Save Vector Layer as..._ select the format, *ESRI Shapefile* in this case, add the CRS, since it's from the Netherlands is used _EPSG:28992 - Amersfoort / RD New_, selected by filtering with the number. When added remove the previous temporary layer.

_The advantage of using EPSG codes: they provide standard codes for each projection. It is useful to determine the EPSG code of the projection you want to use for your project._


![[Pasted image 20250930110728.png]]
Although the `knmi_stations.shp` layer is in the EPSG:28992 projection (Amersfoort / RD New), the QGIS Map Canvas still uses the EPSG:4326 projection (lat/lon WGS 84) and has reprojected `knmi_stations.shp` *on-the-fly* for visualization. In order to visualize all layers in EPSG 28992 we have to change the QGIS Project properties by in the menu choosing  **Project | Properties** and then the _Coordinate Reference System (CRS)_ tab.

### Join Attribute Tables
To combine different tables a _join_ must be done. Firstly in the Attribute Table of the data the join parameter should be confirmed to be in both tables. After it, right click in the layer and select properties, then go to join and push *+*, and in the _Add Vector Join_ add the fields that want to be join (only Temperature in this case).

![[Pasted image 20250930112526.png]]

### Edit the Joined Attribute Table
For editing the current Attribute table the missing date will be removed and the temperature will be converted to the right units, select the missing values and remove it from the table.
For the calculations press the _field calculator_ button and _Create a new field_ for the result of the calculation done with the _Expression_, then proceed with OK.
![[Pasted image 20250930113445.png]]
Then remove the origin table from the table list and the Temp column used to do the calculation is also removed from the attribute table of the .shp created file.
>- What columns do you see now? r: Only the ones created with the .shp and the added with the Field Calculator
>-  What can you conclude about the join function? r: Works for center the data around less tables by joining with coincident parameters.

![[Pasted image 20250930114157.png]]
>Note that you could have saved the entire attribute table by saving _KNMI_stations_ to a new shapefile using the previously used **Export | Save Features As** function.

### Interpolate Point Features to Raster

The final task of the lesson is to _interpolate the temperature values to a raster_. 
1. In the main menu choose **Raster | Analysis | Grid (Nearest Neighbor)**.
![[Pasted image 20250930114848.png]]
2. In the _Advanced Parameters_ section, select `T(C)` as _Z value from field_. This is the field that we will interpolate to so-called _Thiessen polygons_.

3. Specify the output file: `tday_NN.tif` by using the browse window and specifying the `.tif` format.  

4. Check the _Open output file after running algorithm_ checkbox.  
  
For the rest of the dialog keep the defaults. The dialogue should now look like figure the figure below.
![[Pasted image 20250930115223.png]]
Note that the dialog generates a GDAL command. The tool is essentially a GUI for the [gdal_grid](https://www.gdal.org/gdal_grid.html) command line tool. Same process can be done with **Raster | Analysis | Grid (Inverse Distance to a Power)** (IDW) algorithm.

_With these interpolation tools from the main menu, you can’t control the extent and spatial resolution of the output raster. In the Processing Toolbox there are interpolation tools where you can define the output extent and resolution—for example with the IDW Interpolation tool. The Processing Toolbox is out of scope for this course._

### Style raster results

If labels are being cut off at the map boundary, review the previous exercise to remember how to use the _Automated placement settings_ to prevent it.
##### Recipe to this part 1 NN
![[Pasted image 20250930133217.png]]
14. Change the renderer from the default _Singleband gray_ to _Singleband pseudocolor_.

For continuous rasters we use the _Singleband pseudocolor_ renderer. Although Thiessen polygons in the _T_NN_ layer look discrete, the pixels have real numbers, which is not possible for discrete rasters.  

15. For the _Color ramp_ choose _Spectral_. Click _Classify_ if it doesn't automatically show the result.
By default this color ramp is setup to make the lower values red and the larger numbers blue. This is counter-intuitive. These values represent temperature so the higher values should be represented with warmer/red colors and the lower values with colder/blue colors.  

16. To accomplish this, right-click on the color ramp and choose _Invert Color Ramp_ from the context menu. In order to see the basemap you will apply a _Blending mode_. In the _Layer rendering_ section choose _Multiply_ for the _Blending mode_.

##### Recipe to this part 2 IDW
![[Pasted image 20250930133334.png]]
Use the _Layer Styling Panel_ to style this using the _Singleband pseudocolor_ renderer with the same inverted color ramp. This time switch the _Mode_ to _Quantile_. Also apply a _Multiply_ _Blending mode_ to this raster.
![[Pasted image 20250930133348.png]]
In this lesson you have learned to:

- _import tabular data_ into a GIS
- save tables with geometry to GIS format
- _join attribute tables_
- _edit attribute tables_
- _interpolate_ point data to raster
- style and label point vectors
- style continuous rasters

To submit:
1. Zoom in to a nice extent on your map canvas where you can see the results of Lesson 1 (points, lines and polygons, styled and with a label).

2. In the main menu go to **Project | Import/Export | Export Map to PDF...**

---
## Lesson 3: Spatial Analysis with Map Algebra

With _map algebra_ we can do calculations with raster layers. This is useful for spatial analysis. For example, when we need to evaluate different criteria to find suitable or unsuitable locations we can use map algebra.

After this lesson you will be able to:  

- use _raster attribute tables_  
- apply _map algebra_ for raster analysis
- distinguish _Boolean_, _discrete_, and _continuous_ rasters
- make legends for Boolean, discrete, and continuous maps
- understand the use of _Nodata_
- use _logical operators_
- calculate _distances_ from rasters
- _reclassify_ rasters
- _convert_ raster to vector points
- _sample_ raster values with vector points

### Case of study
In this lesson we'll address the following case.

The municipality of the (imaginary) oasis Aïn Kju Dzjis has hired you to analyse ==which wells are unsuitable for its inhabitants== based on the following conditions:  
  
Condition 1:  
    The wells should be within 150 meters of houses or roads.  
  
Condition 2:  
    No industry, mine, or landfill within 300 meters of the wells.  
  
Condition 3:  
    The wells should be less than 40 meters deep.  
  
You will use map algebra to perform the required analysis.
![[Pasted image 20250930135600.png]]

### Preparation

#### Adding Raster Attributes Tables
After dragging and adding the Raster layers to the map canvas is possible to check the type of raster information on each layer.
- gwlevel = Vector
- roads = vector / discrete raster
- buildg = vector / discrete raster
- dtm = continuous raster

Raster layers, in general, have no attribute table. Each layer is one theme, represented by the values of the cells. The main raster data types are:  

- Boolean rasters: cell values are zero or one, meaning True or False. An example is flooded versus non-flooded areas. They are styled using the _Paletted/Unique values_ renderer.
- Discrete rasters: cell values are integers (whole numbers) representing classes. An example is a land cover map. They are also styled with the _Paletted/Unique values_ renderer.
- Continuous rasters: cell values are real numbers (decimals) representing gradients in the landscape. Elevation en precipitation rasters are examples. They are styled with the _Singleband pseudocolor_ renderer.

>The GIS analyst has to determine the data type, because that is normally not stored in the raster layer. Knowledge of the data type is needed for applying the correct analysis tools and for presenting raster data with the correct styling.

QGIS has the possibility to add _Raster Attribute Tables_ or RAT’s to the raster layers, to add multiple attribute fields to a single raster layer and choose a field for styling.
  
To add a RAT to a layer the first step is to apply a renderer to this discrete raster layer with land-use classes. To add unique values go to the style layer in the styling panel, slect _Paletted/Unique values_ and press _Classify_. Also without the RAT in that part is possible to edit the labels of the cell values to create a legend.

_Layers_ panel, right-click on the layer and choose _Create Raster Attribute Table_. In the _New Raster Attribute Table_ dialog, keep the default _Managed by the data provider._ This will use a _GDAL auxiliary XML_ as the format. Click _OK_.

Then, to change the colors and add the Land Use in the _Raster Attribute Table_ select the _Edit Attribute Table_, add a new column of Land Use to add the information missing, and change the original Classification in Class for *Land Use*, after change colors the results should be like this. Press _Classify_ to confirm and save the changes.

![[Pasted image 20250930145041.png]]

>_You can also create RATs from rasters styled with the Singleband Pseudocolor renderer. Then you need to change the Interpolation setting to Discrete so it uses class ranges._

#### Using the Processing Toolbox
The _Processing Toolbox_ in QGIS provides a lot of tools for processing GIS data. Besides QGIS tools, it also has third-party processing tools that are very useful.  Examples are GDAL, GRASS, SAGA, PCRaster Tools, R and WhiteboxTools. It can be activated by choosing **Processing | Toolbox** from the main menu.

### Condition 1: Wells within 150 meters of houses or roads

Goals:
- Create a *boolean layer* with True for houses and False for other buildings
- Create zones of 150 meters around the houses
#### Create the boolean layers
To create a Boolean layer with True (1) for houses and False (0) for the other classes go to **Raster | Raster Calculator**. There, in the _Raster Calculator Expression_ use `buildg@1 = 1` and `roads@1 > 1` where `@1` mean the _band 1_, since in the excercise there's only one is obvious but this come handy where working with multiple bands in remote sensing.

![[Pasted image 20250930151320.png]]
![[Pasted image 20250930151458.png]]

#### Create the zones around the booleans
In the main menu go to **Raster | Analysis | Proximity (Raster Distance)**. Use the desired layer as input, use _Georeferenced coordinates_ in the distance units and add the maximum distance to be generated and enter `1` for _Value to be applied to all pixels that are within the -maxdist of target pixels_. Set the _Output data type_ to _Byte_ (because we use only 0 and 1) and call the output _Proximity map_ `houses150m.tif`. Leave the other settings at default.
![[Pasted image 20250930152512.png]]
![[Pasted image 20250930153206.png]]


### Condition 2: No industry, mine, or landfill within 300 meters from wells
For this condition is necessary to reclassify the layer to get a boolean map for (and only) the required classes, and then calculate the distance to the True pixels and finally calculate the pixels that are further than 300 m from industry, mine, and landfill.

#### Creating a mask for industry, mine or landfill

From the _Processing Toolbox_ menu choose **Raster analysis | Reclassify by table** and reclassify the raster using a _lookup table_ and fill in the dialog exactly as in the figure below.

![[Pasted image 20250930153555.png]]
![[Pasted image 20250930153658.png]]
- Which expression would you have used for this in the _Raster Calculator_?
It can be created as well with *Raster Calculation*, so the following two conditions are equivalent.
![[Pasted image 20250930155151.png]]
![[Pasted image 20250930155104.png]]

#### Creating the zone

To have a new way to create the 300m zone around the relevant points without the same **| Raster Analysis - Proximity (Raster Distance) |** done before another roundabout can be the following.
![[Pasted image 20250930160044.png]]
And instead of selecting the maximum distance as before the values stay in 0 and select 32 bit, the results of byte and 32bits are the following, showing that for having a continuous raster only the 32 bit keeps enough information (more than 256) for it.

- Is the _inddist_ layer a boolean, discrete, or continuous raster? -> Continuous The values are changing progressively without any sharp border
![[Pasted image 20250930161017.png]]


![[Pasted image 20250930162248.png]]

And finally use the _Raster Calculator_ to calculate `inddist@1 >= 300`. Call the output layer `ind300m.tif`.
- Is the _ind300m_ layer a boolean, discrete, or continuous raster? -> Boolean, could be discrete if there were more than 2 values (let's say, other range between 300 and 450 meters) but since there's only two it's boolean
![[Pasted image 20250930162811.png]]


### Condition 3: Wells less than 40 meters deep

The _gwlevel_ layer gives the absolute elevation of the groundwater level in the well in meters above sea level. In order to calculate the depth to the groundwater, we need to subtract this from the surface elevation given in the digital terrain model (DTM).

Opening the _Raster Calculator_ subtract the absolute well depth from the DTM using this calculation: `dtm@1 - gwlevel@1`. Call the output layer `welldepth.tif`.

- Is the _welldepth_ layer a boolean, discrete, or continuous raster?  
	    Discrete raster

Style the _welldepth_ layer with the appropriate renderer for this raster type.  After it, calculate in the _Raster Calculator_ a boolean map with wells less than 40 m deep. Call the output layer `notdeep.tif`.  Style the _notdeep_ layer.


### Combining conditions and reporting results

Again with raster calculations write `"houses150m@1" AND "ind300m@1" AND "roads150m@1" AND ( "isdeeperthan40@1" == 0)` to get the bool with the combination of conditions.

Then to convert raster cells of the wells to point vectors, for a better visualization, and then - Sample raster values to add attributes from the calculated layers
#### Convert Raster Cells to Point Vectors

To present the end result, we can style the _accessiblewells_ layer. However, it is nicer to present the wells as point features on the map. Therefore, we need to convert the well pixels to point vectors.  
  
In the _Processing Toolbox_ go to **Vector creation | Raster pixels to points**. Then add a field name (like accessible)
 ![[Pasted image 20251001113409.png]]

The point vector layer _wells_ now only contains the field _Accessible_. It is however, more informative to also include other data in the attribute table. With the **_Point sampling tool_ plugin** we can sample the raster layers in this project and add that information to the point attribute table.

In this lesson you have learned to:

- use _raster attribute tables_  
    
- apply _map algebra_ for raster analysis
- distinguish _Boolean_, _discrete_, and _continuous_ rasters
- make legends for Boolean, discrete, and continuous maps
- understand the use of _Nodata_
- use _logical operators_
- calculate _distances_ from rasters
- _reclassify_ rasters
- _convert_ raster to vector points
- _sample_ raster values with vector points

---

# 🐢 Definitions

Remote sensing: 
RAT (Raster Attribute Tables):
# 📅 Homework

Video of lesson 3 
Two videos of lesson 4

