---
Class: "[[QGIS for Water Resources]]"
Professor: Hans van der Kwast
Date: 2025-09-30
Last Modified: Tuesday 30th September 2025 22:31
---
# Wednesday 1th November 2025

# 📒Class Summary


# 🕸️Resources
[[https://earthexplorer.usgs.gov/ | EarthExplorer]]
[OpenTopography.org](https://opentopography.org/)


# 📝 Notes

## Digital Elevation Models (DEMs)

Goal:
- Define DEM, DTM, DSM
- describe different methods of DEM adquisition
![[Pasted image 20250930225934.png]]

DTM -> Digital Terrain Models that only consist the terrains surface, usually used in hydrology for water over the terrain.
DSM -> Digital Surface Model = DTM + all natural or human-made features (tree and pictures), useful for hydraulic models
DEM -> Digital Elevation Model

### DEM Acquisition
- Ground Surveying
- DGPS (Diferential GPS) measurements
- Stereo Photogrametry
- Digitizing contour lines (CN)
- LIDAR (Laser altimetry)
- Radar Interferometry (SRTM)

### How to use DEM?
- Determine catchment areas
- Delineate drainage networks
- Slope (degree or percentage) and aspect (orientation of slope)
- Identify geological structures
- 3D Simulation
- *Raster map* (with hillshade)
- Calculations (Topographic wetness index)
- Transects

![[Pasted image 20251001094127.png]]
Preguntas:
	Esto es un DSM
![[Pasted image 20250930231458.png]]
	Un Aspect map muestra = the direction of the slopes
![[Pasted image 20250930231546.png]]

	The equidistance of a contour line map is -> The elevation interval of the contour lines

### Flow Direction

8bit, only 8 discrete directions with D8 or Single Flow Direction

### Fill Sinks Algorithms
- SAGA & WhiteboxTools
	- Wang & Liu
	- Planchon & Darboux
- PCRaster
	- Iddcreate
	- Iddcreatedem

### Visualization of Flow Direction

With Accuflux Submit the flow direction mesh

---

## Stream and catchment delineation with GIS
From a DEM in QGIS
![[Pasted image 20250930225905.png]]

¿What is a catchment?
Is an extent or area of land where surface water from rain, snow or others converge to a single point in a lower elevation, usually at the ending of the basin.

How to get a catchment in a GIS software?
![[Pasted image 20250930230210.png]]
#### Download DEM
Open Access Data
- SRTM 1 Arc-Second (enough for catchment) -30
- SRTM Void Filled -30 USA -90 Global
- ASTER Global DEM (GDEM)
	Download at http://earthexplorer.usgs.gov
#### Mosaic DEM tiles
Done if the spread is over more than one tile, merge the correspondent DEMs
#### Reproject DEM
Global datasets are usually in EPSG:4326 (Geographic Coordinate System Lat/Lon). For correct calculation of DEM derivatives the DEM should be reprojected to a Coordinate Reference System. Is necessary to have the measures in meters and no in degrees for the slope calculation.
#### Calculation of slope
In grid slope is calculated as a *focal operation*. The steepest slope is assigned to the cell.

Questions

Order

 Download DEM -> Mosaic -> Reproject -> Subset DEM -> Interpolate voids -> Fill sinks 
Pixels with no data in DEM's are called -> Voids
Strahler order -> Ultimas valor mayor
![[Pasted image 20250930232041.png]]

---
## Lesson 4 Stream and Catchment Delineation

One of the most important uses of GIS in hydrology is the delineation of catchments and streams. This lesson presents a generic workflow for stream and catchment delineation for areas where only open data is available. The Shuttle Radar Topography Mission (SRTM) 1 Arc Second DEM will be used. The workflow will be applied to the Rur catchment in Germany.

After this lesson you will be able to:  

- find and _download SRTM DEM tiles_ from the EarthExplorer website
- _mosaic raster layers_ into a _virtual raster_
- _reproject_ rasters
- _create subsets_ of rasters
- _fill sinks_ in a DEM
- calculate and style _flow direction_ raster layers
- calculate _Strahler orders_
- _delineate streams_
- _delineate catchments_
- style layers for visualising catchments

### Download DEM
For the Rur study area, we will download the tiles from the SRTM 1 Arc-Second global data set. Since the end of 2014 a 1-arc second global digital elevation model (approximately 30 meters at the equator) has been released as open data.
The following steps explain how to download the SRTM DEM tiles for the study area using the _OpenTopography DEM Downloader_ plugin. With the plugin you can download DEMs from [OpenTopography.org](https://opentopography.org/) for a user-selected extent.

In the _OpenTopography DEM Downloader_ dialog, choose **SRTM 30m** from the drop-down menu under _Select DEM to download_.

_Note that you can choose 12 different global DEM data products. The one that works best for your study area, depends on its size and landscape. For larger areas you might want to choose a coarser spatial resolution._

![[Pasted image 20251001135242.png]]

- What is the projection? -> EPSG:4326 - WGS 84
- What are the map units? -> Geographic (uses latitude and longitude for coordinates)
### Reproject
The DEM is in its original Lat/Lon Geographic Coordinate System (GCS) with datum WGS 84 (EPSG: 4326). It is not recommended to use a GCS for DEM analysis, because the z units (e.g. meters) are different than the x and y units (degrees). We need to choose a projection for our project. If the project covers one country we can choose a national projection. In our case, however, the project covers multiple countries (Germany, the Netherlands, and Belgium). Therefore we will use a global projection: UTM Zone 32 North, with WGS-84 as datum.
To reproject the DEM from unprojected GCS (Lat/Lon WGS 84 - EPSG: 4326) to UTM Zone 32 North / WGS 84 (EPSG: 32632).  
From the main menu choose **Raster | Projections | Warp (Reproject)**.
![[Pasted image 20251001135959.png]]
_Note the `gdalwarp` command that will be executed in the background. Under _Advanced Parameters_, we could have specified the extent of the output file based on the _boundingbox_ layer. In that way the _dem_mosaic_ layer is reprojected and clipped in one step._

### Create a subset of DEM
In order to reduce the calculation time of the algorithms, we will subset (or clip) the raster layer to the _boundingbox_ polygon. From the main menu select **Raster | Extraction | Clip Raster by Mask Layer**.
![[Pasted image 20251001140400.png]]
![[Pasted image 20251001140407.png]]
> _Often you'll not have a bounding box shapefile. In that case you can choose_ **Raster | Extraction | Clip Raster by Extent**. _Then you can drag a box in the Map Canvas and use that for clipping. While using that, make sure your on-the-fly reprojection is similar to the layer that you want to clip, because the map canvas coordinates are used by the algorithm._

####  Styling the DEM and adding Hillshade
The DEM is a continuous raster. Continuous rasters represent gradients and can therefore contain real numbers ((also called decimal numbers or floating point). Continuous rasters are styled in QGIS using ramps from the _Singleband pseudocolor_ renderer in the _Layer Styling_ panel.

To change add to the dem the hillshade copy it and change the styling to hillshade 
![[Pasted image 20251002161414.png]]
Hillshade gives the best results with an artificial illumination in the northwest, which in reality can not exist in the Northern Hemisphere. If you move the dial in the _Layer Styling_ panel to the southwest, you will see an inverted relief. Also note that there is a _Resampling_ section. The default resampling method for both _Zoomed in_ and _Zoomed out_ is _Nearest Neighbor_. This method is fine for categorical data however, elevation is considered continuous data, then you should therefore choose a _Zoomed in_ resampling method of _Bilinear_ and a _Zoomed out_ resampling method of _Cubic_.

![[Pasted image 20251001141151.png]]
To blend the DEM with the below hillshade layer change in _Layer Rendering_ the _Blending mode_ to _Multiply_. Blending gives a much nicer effect than transparency. With transparency the colors will fade. Now we can clearly see the elevation differences: the gradient from south to north and the valleys where we expect the streams.
![[Pasted image 20251001141432.png]]
_Blending modes allow for more elegant rendering between GIS layers. They can be much more powerful than simply adjusting layer Opacity. Blending modes allow for effects where the full intensity of an underlying layer is still visible through the layer above. There are 13 blending modes available._ _See [here](https://docs.qgis.org/3.22/en/docs/user_manual/introduction/general_tools.html#blending-modes) for more info._
## Fill Sinks and Calculate Flow Direction
Raw, unprocessed DEMs have artifacts such as depressions. Artifacts are a result of the DEM acquisition process and must be removed before a DEM can be used for hydrological analysis, like catchment and stream delineation or hydrological modelling. There are several algorithms for filling sinks. Here we'll use the [lddcreate tool](https://pcraster.geo.uu.nl/pcraster/4.3.1/documentation/pcraster_manual/sphinx/op_lddcreate.html) from the _PCRaster Tools_ plugin. This tool fills the sinks and creates a flow direction map (also called local drain direction map) at the same time. The resulting flow direction raster can be used in the next steps.  

First we'll install the _PCRaster Tools_ plugin. Then we'll convert the DEM in PCRaster format (.map, which is a GDAL supported raster format). Next we'll fill the sinks and derive the flow direction with the _lddcreate_ tool. Finally, we'll style the flow direction map.

### PC Raster
[PCRaster](https://pcraster.geo.uu.nl/) is a powerful package of software for map algebra and environmental dynamic modelling. The main applications of PCRaster are found in environmental modelling: geography, hydrology, ecology to name a few.

In the PCRaster package a rich suite of geomorphological and hydrological functions is available. These include functions for visibility analysis, catchment analysis and routing of transport (drainage) of material in a catchment using interactively generated local drain direction maps and transport (routing) operations. These operations are made available in the QGIS Processing Toolbox through the _PCRaster Tools_ plugin. Install PCRaster from OSGeo4W before installing the plugin.

### DEM GeoTIFF to the PCRaste
In order to use the PCRaster tools we need to convert raster to the PCRaster map format, which is a GDAL supported format. This is needed, because PCRaster is strict with data types.

PCRaster distinguishes the following raster data types:

- Boolean: cells are 0 (False) or 1 (True).
- Nominal: cells have positive integer values representing classes (discreet raster) without a specific order, for example land-use classes.  
- Ordinal: cells have positive integer values representing classes (discreet raster) with a specific order, for example stream order.
- Scalar: cells have real values (decimal, positive, negative). This is used for continuous rasters.
- Directional: for rasters with a compass direction (e.g. aspect).
- LDD: local drain direction, a specific data type for flow direction rasters.

In the _Processing Toolbox_ go to **PCRaster | Data management | Convert to PCRaster Format**.

### Calculate Flow Direction
The next step is to fill the sinks (artificial depressions in the DEM) and calculate the flow direction raster. PCRaster does both in one step with the [_lddcreate_](https://pcraster.geo.uu.nl/pcraster/4.3.1/documentation/pcraster_manual/sphinx/op_lddcreate.html) tool. Check the [documentation](https://pcraster.geo.uu.nl/pcraster/4.3.1/documentation/pcraster_manual/sphinx/op_lddcreate.html) for the details. In the _Processing Toolbox_ go to **PCRaster | Hydrological and material transport operations | lddcreate**. In the _Lddcreate_ dialog choose _dem_ as _DEM layer_. Keep all other defaults so it will fill the sinks completely. Save the results to _flowdirection.map_.
![[Pasted image 20251001144443.png]]

> _The lddcreate tool fills the sinks in the DEM and results in a local drain direction (flow direction) map. If you need the filled DEM, you can use the lddcreatedem tool._

### Styling the Flow Direction with Arrows
We can further improve the styling of the _flowdirection_ layer by adding arrows. This can be done using the mesh styling functionality of QGIS. To use that functionality, we need to convert the PCRaster LDD to a mesh format. We can do that with the _Crayfish_ plugin.

In the _Processing Toolbox_, go to **Crayfish | Conversions | PCRaster LDD to GRIB**, in the _PCRaster LDD to GRIB_ dialog, choose _flowdirection_ as _Input raster_ and _flowdirmesh.grb_ as _Output file (GRIB)_.

![[Pasted image 20251001145928.png]]
In the _Browser_ panel, expand the _flowdirmesh.grb_ group (you might need to refresh the _Browser_ panel with the refresh button) and drag the flowdirmesh layer with the mesh icon to the map canvas.
![[Pasted image 20251001150301.png]]
When the map canvas shows a completely yellow layer, the _flowdirmesh_ layer has been loaded and we can start styling it. Select the _flowdirmesh_ layer in the _Layers_ panel and open the _Layer Styling_ panel.

#### Visualize Flow Direction in 3D

We can also visualize the flow direction using the QGIS _3D Map View_.
In the main menu, choose **View | New 3D Map View**. And in the 3D Map View choose **Configure...**. Go to the _Terrain_ tab and change the _Type_ to _DEM (Raster Layer)_ and choose _dem_ as _Elevation_. Click _OK_ to apply the settings and return to the 3D Map view.

## Delineate Streams
Now we have the flow direction we can proceed with delineating the streams.
First we'll calculate the Strahler Orders, then we'll calibrate the Strahler threshold to determine the streams.
Before we can derive the streams from the DEM, we need to determine what we consider streams. For this purpose we use the Strahler order. The higher the order, the bigger the stream.
![[Pasted image 20251001153753.png]]
After closing and coming back to only the _dem_subset_ with blended _hillshade_ by unchecking the other layers in the _Layers_ panel (Also zoom out to the full extent) search for `streamorder` in the _Processing Toolbox_ and select **PCRaster | Hydrological and transport operations | streamorder**.

In the _Streamorder_ dialog, select _flowdirection_ for the _Local Drain Direction layer_, use `strahler.map` as the _Stream Order_ output filename, and click _Run_. Click _Close_ when the algorithm is done.
![[Pasted image 20251001154332.png]]
The Strahler order layer is a discrete raster, but the order of the classes is important. Therefore, for PCRaster, it has the ordinal data type. For discrete rasters in QGIS we use the _Paletted/Unique values_ styling. The higher the Strahler order, the bigger the stream. So we will use a color ramp from white to blue for styling, by choosing in the styling Color ramp _blues_
![[Pasted image 20251001154530.png]]

With raster operation of Stahler >= 8 you can get the ones that have a high magnitude.
#### Calculate Channel Network
The next step is to calculate the channel network.  

First we're going to create a layer with the Strahler orders for the rivers by selecting the cells with order equal to or higher than the threshold determined in the previous step. Here we'll use order 8 as threshold.

With the _PCRaster Tools_ plugin, **we can only use raster layers in map algebra**. If we want to calculate a new boolean layer with strahler >= 8 as True (our channels) and < 8 as False, we need to first create an ordinal raster that consists of cells with only value 8. This can then be used in map algebra.  

 In the _Processing Toolbox_ go to **PCRaster | Data management | spatial**  In the _Spatial_ dialogue type 8 for _Input nonspatial_. Choose _Ordinal_ for _Output data type_ and _strahler_ as the _Mask layer_. Call the _Output raster layer ordinal8.map_ and run it.
 ![[Pasted image 20251001160901.png]]

Now we're going to create a boolean layer with 1  (True) for all strahler cells that are >= 8:

In the _Processing Toolbox_ go to **PCRaster | Conditional and boolean operators | comparison operators**. Then, in the _Comparison Operators_ dialogue, choose _strahler_ as _Input raster_, >= as _Comparison operator_ and _ordinal8_ as the second _Input raster_. Call the _Output Boolean raster_ file _channels.map_.

![[Pasted image 20251001161030.png]]
Now we have a boolean layer with the channels that we can use now to assign the river Strahler orders.

7. In the _Processing Toolbox_ go to **PCRaster | Conditional and boolean operators |** **ifthen**.

8. In the _If Then_ dialog, choose channels as the _Input Boolean Condition Raster_ and _strahler_ as the _Input True Raster_. Call the _Output raster channelsstrahler.map_.  

![[Pasted image 20251001161102.png]]

This means: if the channels layer has cells that are True (1), then give those cells the value of the strahler layer. All other cells get "nodata".  

9. Click _Run_ and _Close_ the dialog after processing.

[[https://www.youtube.com/watch?v=aXxHjUcvm88 | Ver video porque honestamente no entendí esto]]

> Main difference is that with PCRaster all the levels of strahler directly

#### Convert Raster to Vector Lines

For better visualisation of the channel network, we need to convert the _channelsstrahler_ layer to a line vector. With GRASS tools from the Processing Toolbox for this, first we need to thin the raster lines, so they are only 1 cell wide. From the Processing Toolbox choose **GRASS | Raster (r.*) | r.thin**  

 In the _r.thin_ dialogue choose _channelsstrahler_ as _Input raster layer to thin_. Keep the defaults and save the _Thinned_ raster as _channelsthin.tif_. Make sure to choose the GeoTIFF format instead of the PCRaster .map format. and run
 
![[Pasted image 20251001162839.png]]
Now we can convert the _channelsthin_ layer to a line vector.

In the Processing Toolbox go to **GRASS | Raster (r.) | r.to.vect*  In the r.to.vect dialog  

- choose _channelsthin_ as _Input raster layer_
- choose _line_ from the drop down menu as _Feature type_  
- check the box to _Use raster values as categories instead of a unique sequence_
- under _Advanced Parameters_ change the _v.out.ogr output type_ to _line_
- name the _Vectorized output_ _channels.shp_
![[Pasted image 20251001200236.png]]
#### Styling the Channels
Now we can style the channels vector layer to get a better understanding of the results. We will apply a styling in such a way that the lines get thicker with higher Strahler orders.  

Open the attribute table of the _channels_ layer.

In the attribute table, you can see that the _cat_ field has the original Strahler order values (in our case 8, 9 and 10). In reality, the Strahler order method starts with value 1 for the smallest tributaries. Therefore, we need to reclassify the values in the _cat_ field to represent the real Strahler orders.

  Click the _Field calculator_ button and in the _Field Calculator_ dialog, create a new field with the name _ORDER_. It should have an _Output field_ _type_ of _Integer (32 bit)_ and _Output field length_ 1. Under _Expression_ write the code as given below:
![[Pasted image 20251001200724.png]]And after having it style it 
![[Pasted image 20251001204951.png]]

## Define Outflow Point
A catchment is an extent or an area of land where surface water from rain, melting snow, or ice converges to a single point at a lower elevation, usually the exit of the basin, where the waters join another water body, such as a river, lake, reservoir, estuary, wetland, sea, or ocean. In order to delineate a catchment we need to have:  

- the coordinates of our outlet in the same coordinate system as the map we are using
- the channel network that matches the flow directions as calculated from a hydrologically correct DEM

The outflow point of the Rur catchment is in Roermond, where the Rur enters the Meuse river (Maas in Dutch). The channel network that has been derived in the previous step is in the _channels_ layer. We will however use the _channelsstrahler_ raster layer, because we need to define the outlet exactly on a river pixel.

In the _Processing Toolbox_ go to **PCRaster | Data management | Column file to PCRaster Map**. In the _Column File to PCRaster Map_ dialog, browse to the text file with the outlet (288647, 5675564, 1), choose _flowdirection_ as the _Raster mask layer_, choose _Nominal_ _(small)_ as the _Output data type_ and save the file as _outlet.map_.
![[Pasted image 20251001214458.png]]

Now the outlet point has been added to the map canvas.  

10. style the point with a clear colour using the Paletted/unique values_ renderer.

## Delineate the Catchment
 In the Processing Toolbox go to **PCRaster | Hydrological and material transport operations | catchment**.  In the _Catchment_ dialog use _flowdirection_ as the _LDD layer_, _outlet_ as the _Outlet layer_ and save the result to _catchment.map_.
![[Pasted image 20251001214901.png]]
### 9. Delineate the Catchment

Now we’re going to use the defined outlet to calculate the upstream contributing area (i.e.catchment) that produces discharge at this location.  

  

1. In the Processing Toolbox go to **PCRaster | Hydrological and material transport operations | catchment**.

  

2. In the _Catchment_ dialog use _flowdirection_ as the _LDD layer_, _outlet_ as the _Outlet layer_ and save the result to _catchment.map_.  

![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4424/image.png)  

  
3. Click _Run_ and _Close_ the dialog after processing.

The result should look like the screenshot in the figure below if you zoom to the extent of the layer. The result is a nominal raster with a cell value 1 for the catchment and 0 for outside the catchment. Nominal, because our outlet raster was defined as nominal data type. If the _outlet.txt_ file had more coordinates of outlets, each catchment would have had cells with the value of the corresponding outlet cell. If you have subcatchments with outlets upstream of a higher order catchment, you can use the PCRaster _subcatchment_ tool to avoid the overlap.

![[Pasted image 20251001215134.png]]
In order to overlay the catchment boundary with other data, it is better to convert it from raster to vector (polygon). To convert the raster layer to vector, go to the main menu and choose **Raster | Conversion | Polygonize (Raster to vector)**.
![[Pasted image 20251001220156.png]]

![[Pasted image 20251001220402.png]]

You might have noticed that the polygon has a hole. This is caused by a huge open pit lignite mine, which results in its own subcatchment in our procedure. However, we would like to see the mine as part of the delineated catchment and will correct this.

Enable the _Advanced Digitizing Toolbar._ (right-click on a toolbar and check the box before the toolbar).  

15. Click the _Delete Ring_ button and click on the mine.

The hole has now disappeared.

16. Toggle off editing, and save the changes.

17. Now remove all unnecessary layers from the layers list so that we have only _channels_, _Rur_catchment_, _dem_subset_, _hillshade_ and _OpenStreetMap_ (in that order).
![[Pasted image 20251001222017.png]]

## Clipping layers to the catchment boundary
For visualization, it is nicer to clip the layers to the boundary of the catchment. First clip the _channels_ vector layer to see only the streams that are inside the catchment. Go to the main menu and select **Vector | Geoprocessing Tools | Clip...**
![[Pasted image 20251001222439.png]]
Fill in the dialog as in the figure below to use the catchment layer as a "cookie cutter" to clip the _Input layer channels_ to the boundary of the _Overlay layer Rur_catchment_. Call the _Clipped layer Rur_channels.shp_. Click _Run_ to run the tool. Click _Close_ to return the main screen.
![[Pasted image 20251001222536.png]]
![[Pasted image 20251001222701.png]]
This is caused by geometrical errors in the _channels_ layer. Let's fix this.

4. In the _Layers_ panel, select the _channels_ layer.

5. In the toolbar of the _Processing Toolbox_, click ![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4432/image%20%286%29.png) to _Edit Features In-Place_.

Some tools support this. For those tools, it is not necessary to save the result into a new layer.

6. Choose **Vector geometry | Fix geometries**.

![[Pasted image 20251001223058.png]]

7. In the toolbar, click ![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4432/image%20%289%29.png) to toggle off editing mode and save the result.

8. In the toolbar, click ![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4432/image%20%2810%29.png) to unselect the lines. Also click ![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4432/image%20%2812%29.png) in the _Processing Toolbox_ to toggle off in-place editing.

Now we can repeat the clipping. There's an easy way to redo operations by using the history.

11. In the toolbar of the _Processing Toolbox_, click ![](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4432/image%20%2811%29.png) to open the __Processing History__ dialog.

![[Pasted image 20251001223028.png]]
![[Pasted image 20251001223117.png]]
We can easily copy the styles from _channels_ to _Rur_channels_.  

15. Right-click on the _channels_ layer and choose **Styles | Copy Style | All Style Categories**.

16. Now right-click on _Rur_channels_ and choose  **Styles | Paste Style | All Style Categories**.

## Styling the Resulting Catchment Area
To show the results of your analysis you can use a technique named _Inverted Polygon Shapeburst Fills_ to focus attention on the Rur Catchment.

1. Open the _Layer Styling panel_ by clicking the ![Open layer styling panel button](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4426/Open%20layer%20styling%20panel%20button.png)button. Set the target layer to _Rur_Catchment_.  
  
2. Change from a _Single symbol_ renderer to an _Inverted polygons_ renderer. This renders the data as the inverse of its geometry, i.e. you'll style everything outside of the polygon. This creates a mask around the Rur valley.  
  
3. Next, select the _Simple Fill_ component. Then change the _Symbol layer type_ to _Shapeburst fill_. In the _Gradient colors_ section use the default _Two color_ method. Change the first color to an RGB value of 135 | 135 | 135. Change the second color to white with an opacity of 65%.

4. In the _Shading style_ section, click the _Set distance_ option and set the distance to 4 mm and increase the _Blur strength_ to 10.  

5. Finally at the top of the _Layer Styling_ Panel select the _Shapeburst fill_ component.  
  
6. Click the _Add symbol_ _layer_ ![add renderer button](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4426/add%20renderer%20button.png)button. Change the new _Simple fill_ renderer to a _Symbol layer type_ of _Outline: simple line_. Give it a _Color_ of black and a _Stroke width_ of 0.46 mm.

This gives us the nicely styled basin as shown in in the figure below.
![[Pasted image 20251001224516.png]]

## Storing the Data in a GeoPackage

To keep the data together and enable easy distribution, it is good to save the layers as a GeoPackage.  
  
1. In the _Processing Toolbox_ look for the _Package Layers_ tool.

2. In the _Package Layers_ dialogue click the ![Browse button](https://ocw.un-ihe.org/pluginfile.php/179865/mod_book/chapter/4425/Browse%20button.PNG)and select all layers. Note that these are only the vector layers.

![[Pasted image 20251001225440.png]]
3. Save it as `Rur_data.gpkg` and click _Run_ and _Close_ when it's done. By default it will also save the styles.

4. We can add the raster layers from the _Browser_ panel. Simply drag the raster layers (in our case _dem_subse_t) to the `Rur_data.gpkg`. You might need to refresh the _Browser_ panel to see the GeoPackage.

The layers in our project still refer to the the GeoTIFFs and the shapefiles. Let's change that in such a way that they will be linked to the layers in our GeoPackage.

5. Select a layer in the _Layers_ panel and right-click. From the context menu, select **Change Data Source...**. Select the corresponding layer in the GeoPackage.
![[Pasted image 20251001225454.png]]

6. Repeat this for all layers (except of course the _OpenStreetMap_ layer).

Now we can save the project to the _Rur_data.gpkg_ with the correct paths.

7. In the main menu choose **Project | Save to | GeoPackage...**
![[Pasted image 20251001225505.png]]
8. In the pop-up, browse to the _Rur_data.gpkg_ at _Connection_ and name the _Project Rur_. Click _OK_ to save the project in the GeoPackage.

The end result should now look like this:

![[Pasted image 20251001225520.png]]



In this lesson you have learned to:

- find and _download SRTM DEM tiles_ from the EarthExplorer website
- _mosaic raster layers_ into a _virtual raster_
- _reproject_ rasters
- _create subsets_ of rasters
- _fill sinks_ in a DEM
- calculate and style _flow direction_ raster layers
- calculate _Strahler orders_
- _delineate streams_
- _delineate catchments_
- style layers for visualising catchments


---
# 🐢 Definitions

Blending modes:
Ldd:
.map extensions
# 📅 Homework



