---
Class: "[[QGIS for Water Resources]]"
Professor: Hans van der Kwast
Date: 2025-09-29
Last Modified: Monday 29th September 2025 09:12
---
# Monday 29th September 2025

# 📒Class Summary

Find the projection in Spatial Reference
Georeference it with the points
Made some corrections for the accuracy


# 🕸️Resources

### Open Source Resources
- QGIS
- GRASS GIS
- Python
- GDAL
- SAGA
- ILWIS

[[https://thetruesize.com/ | The true size web]]
[[https://spatialreference.org/ | Spatial Reference List]]
[[https://epsg.io/ | EPSG Codes for Countries]]
[[https://ihatecoordinatesystems.com/ | I hate coordinates systems!]] (Web to go in deep with coordinates stuff)
[[http://switchfromshapefile.org/ | Why shapefile is a bad format?]]

# 📝 Notes

## Introducing GIS

GIS (*Geographic Information System*) is about **Spatial Data** connected with *Attribute* data and *Metadata*
- **Geographic** -> Spatially-referenced data
- Information System: Software, hardware and databases
- GIS Appliaction -> Create queries
### GIS for urban water systems

### GIS and hydrological modelling
Modeling and Visualisation

### Processing data to use in tools

Import/Convert -> Coordinates information (Projection and Datum) -> Subsetting and resampling -> Recondition correction -> Geoprocess -> Interpolation
### Application of GIS

- Map Production
- Visualization (2D, 2.5D, 3D, animation, web)
- Geoprocessing (for use in tools)
- Geospatial Analysis
### GIS Desktop
Applications with a GUI
- Menus
- Toolbars
- Map layers
- Map canvas
- Print layout view
Usual order for the Map layers 
- Point
- Lines
- Polygons
- Rasters
### GIS Command line apps
*Command line applications* useful for testing and customizing GIS operations.
*Scripts* useful for batch processing and dynamic modelling

### GDAL
Library to convert _raster_ and _vector_ formats. Is a geodata abstracion data that supports GeoTIFF, ERSI Shapefile, HDF, KML that supports most language interfaces: C++/Java/Python.

## PYQIS

## Data components
Features -> Geometry and Attributes
## Vector Data
2 Common data model to represent reality in a GIS, _Vector_ and _Raster_.
_Vector data_ represents real world features in a GIS enviroment
### Points 
(1, X, Y) Location, No area, no length, display with markers
- Applies to:
	- No area
	- To small to be displayed at current scale
- Geometry of only 1 _vertex_ or node
- Point atributes: *Id, Name, Description*
### Lines or Polylines
Series of X, Y points, No area, have length, Connectivity, Direction
Applies to features:
	- Without area but with length
	- Small but representative
- Geometry of 2 or more vertex
### Polygons
Enclosed region, Area, display with fill patter or colour
Apples to:
- Countries
- Provinces
- Catchments
Geometry of 3 or more vertices and the last vertex is the same as the first
### What can be done with vector data?
- Spatial queries
### Problems with vector data
- Accuracy depends on scale
- Slivers: when two figures can have a gap because of the lack of snapping
- Overshoots and undershoots: the lines not connect or pass throught where it should connects

### Vector analysis
- Joints
- Geoprocessing
!Mover todo dentro de introducción
---

## Projections and Coordinated Reference Systems (CRS)

- Explain why we use projections
- Advantages and disadvantages of projections
- Choose the right projection
- Use EPSG codes
- Explain difference between on-the-fly projection and the projection layers

**Why projections?** Because the 3D globe need to be projected in a 2D plain map.
Latitude and longitude in degrees -> Geographic Coordinate Reference Systems 
WGS-84

Converting DMS to decimal degrees
```python
DEGREES + MINUTES / 60 + SECONDS / 3600 = Decimal Degrees
ej.
4ª21'16'' -> 4.3544444
```

### Map Projections

Passing a 3D world to a 2D map gets Distorsion in the following properties of geographic objects:
- Area
- Scale
- Shape
- Direction
#### Projection types

- Cylindrical projections -> Preserve distances or areas
- Conical projection -> Preserve angles
- Planar projections -> Preserve distances

Interesting projections:
- Mercator projection
- Equal Area Projection (Alber's equal area)

#### Universal Transverse Mercator (UTM)
Is a global map projection, divided in 60 equal zones, 6 degrees wide fom east to west. N and S divide the projection-

#### Terminology
Datum: Localised approximation of eath's ellipsoid. Global: e.g. WGS84
Spheroid:
Geoid:
False Northing and False Easting

#### Which Projection to use?
Depends on:
- Regional extent
- Type of analysis
- Availability of Data
### GIS and Projections
Decide on the projection of the model data **before** you start preprocessing. 
Coordinates are more practical, use **EPSG** codes to standardise projections with a project. EPSG codes examples:
- Amersfoort RD/New: 28992 (The one in the netherlands)
- Google Earth EPSG:4326
- MAGNA-SIRGAS EPSG:3118
For check[[https://spatialreference.org/ | EPSG]]

>For example, EPSG:4326 means that the projection is in latitude-longitude
### On-the-fly reprojection (OTF)
All layers visualised in a GIS application need to be in the same projection, so, instead of reprojection all layes to the same projection, JIS applications use On-the-fly reprohection. Beware! 
> OTF reprojection does _not_ change the projection of layers but makes possible to visualize layers of different projections in the map canvas together.

**The projection of the project**


### 3 Cases with projections
1. Projection is known AND projection is assigned -> No action needed
2. Projection is known BUT projection is NOT assigned -> Assign projection to layer
3. Projection is unknown -> Search and assign projection 
---
## GIS File Formats
The GIS File formats are a standard of enconding geographical information into a file, they are created by agencies and developers.
### GIS File format conversions
- **Raster** GDAL
- **Vector** 
### Common vector formats
- ESRI Shapefile
	- Mandatory files
		- .shp shape format, the feature geometry itself
		- .shx shape index format
		- .dbf attribute format (database like)
	- Other important files
		- .prj. Projection format
		- .csv 
qgz only zoom styling y otf
### Common raster formats
- TIFF = Tagged Image File Format, for strong raster graphics images
- GeoTIFF 
	- Public doman metadata standard which allows georefering information to be embedded within a TIFF file, such as
		- map projection
		- coordinate systems
		- ellipsoids
		- datums
- Arc/Info ASCII Grid
### Spatial databases
- Don't store things in files but in a real database
- provides a _spatial index_ that answer queries
- Examples:
	- PostGIS
	- Oracle Spatial
	- ESRI Geodatabase
	- GeoPackage -> default QGIS format and saves to *.gpkg* 

### OGC Web Services

- Data
	- Web Mapping Services (WMS)
	- Web Feature Services (WFS)
	- Web Coverage Services (WCS)

### Tiled web map
Efficient online visualization of maps sinece the layers are divided in many tiles, google maps and open street map uses it.

### File Conversions
- Raster to raster (translate)
- Vector to vector (save as)
- Rasterize (raster to vector)
- Poligonize (vector to raster)

---
## Lesson 1: Preparing Data from Hardcopy Maps
![[Pasted image 20250930135654.png]]

### Georeferencer
In order to use hardcopy maps in a GIS, they need to be scanned and georeferenced. Georeferencing is also needed for raw remote sensing images, such as aerial photographs and satellite images.  
  
For the best result, choose a map sheet that is clean and does not have too many folds. Use a scanner that is large enough to scan the whole map. The resolution of the scanner should be large enough (e.g. 1200 dpi) to have sufficient detail in the resulting raster maps.  
  
For georeferencing we need to link locations on the scanned image to coordinates. There are two ways:  

- Collect ground control points (GCPs) at locations that are clearly visible in the image, such as bridges and  junctions.
- If the hardcopy map contains a coordinate grid, you can use the printed grid as a reference. Make sure that you know  the projection of this grid, which is usually stated on the map.
### Adding Ground Control Points (GCPs)
GCP are known coordinates points that can coordinate with real world coordinates. The easiest way to use it on a scanned map if is available is in a known projection.
## Reduce Erros and Perform the Transformation
In QGIS you can see the estimated mean error (around 40 pixels in this case). There are two ways to reduce the error.
- Move the GCPs with the red button to zoom into the right pixel
- Change the transformation type so the error values are recalculated
Since the grid is well-placed the second option is used changing to a first order polynomial 1 instead of the linear transformation in *Settings | Transformation Settings*. In this case an error of >1 is obtained so it's accepted. The decision to accept a certain accuracy depends on the purpose of the map.
After then press *Start Georeferencing* and the map now appears in the QGIS map canvas, closing the Georeferencing window.
## Verify the Georeferenced Map
With a MAP CRS is possible to see the coordinates in the projection of the project and the coordinates in the Geographic Coordinate System, with coordinates in decimal degrees of longitude and latitude.
![[Pasted image 20250929145049.png]]

#### Add backdrop to verify the result
With the QuickMapServices plugin provides easy access to Google Satellite and OpenStreetMap, it can be installed from **Plugins | Manage and Install Plugins** and check if it fits, once done the transparency can be adjusted to check the results.

### Digitizing Vector Layers from a Georeferenced Backdrop
The georeferenced scanned map can be used as backdrop to digitize vector layers. Vectors can be points (like mountain tops), (poly)lines (rivers) or polygons (lakes). 
The vector layers are created in a *GeoPackage* spatial database so all the layers are together instead of in just one file. This can be done selecting **Layer |  Create Layer | New GeoPackage Layer**
#### Digitize Peaks (Points)

Then select Geometry and create fields, select Toggle Editing in icon or in right-click and then Add Point Feature button, there type the fields information (like the elevation value and name). Finally with right-click Open Attribute Table.
![[Pasted image 20250929154424.png]]

#### Digitize Rivers (Poly-Lines)
Same process with _New GeoPackage Layer_ and selecting the existing _Database_ from the previous process. After adding the Field List select to add a new layer to the database.

If there's a river with a tributary is possible to enable snapping in **View | Toolbars | Snapping Toolbar** and then after digitize the tributary to where it joins the high order river if you want to all tributaries to be the one single feature you need to *dissolve* the feature. By having the first name and use **Vector | Geoprocessing Tools | Dissolve**, choosing the Name as _Dissolve field_ and save the result to the GeoPackage layer and Run is possible to see the results before and after dissolving.
![[Pasted image 20250929162044.png]]
### Digitize Lakes (Polygons)
Same thing with the polygon vector layer for some lakes. The only difference is that the first node should be the same as the last node in order to close the polygon. If there's an island or similar inside the polygon and you prefer to not have it is possible to enable **Advanced Digitizing Toolbar** similar to Snapping Toolbar done earlier.

> _The general order of layers is: points, lines, polygons, rasters._

### Styling
#### Style and labelling the peaks (points)
Open _Layer Styling panel_ from the following button
![[Pasted image 20250929165012.png]]
And adjust Anchor point if is necessary for the annotations for the markers. To create the labels use the following. Using the _Single Labels_ options and setting it to Name will display the name of the peak.
![[Pasted image 20250929165109.png]]
To concatenate multiple fields is possible to use an expression in the **ε** button, when concatenating values is necessary to have _||_ between them. Also to format and select the decimals the correct expression should be `"Name" || '\n' || format_number ("Elevation", 0) || "meters"`.

Finally is possible to click _Automated placement settings_ to uncheck _Allow truncated labels on edges of map_ option. This will prevent labels from being cut off.

#### Styling Mountains, Rivers, and lakes

In this lesson you have learned to:

- find the projection and _EPSG_ code of a map
- install plugins
- _georeference_ a scanned map using _GCPs_ from a grid
- use the _coordinate capture tool_
- use online layers from the _QuickMapServices_ plugin
- digitize points, lines, and polygons and add attributes
- use the _snapping toolbar_
- _dissolve_ features
- store data in a _GeoPackage_
- style and label vectors

### Workflow

> To do the workflow

# 🐢 Definitions

GIS: Geographic Information Systems.
Attribute table: Table where all the attribute information for vectors are stored.
Nearest neighbors for interpolation: 

# 📅 Homework
- [ ] Check how to create isochrones for walkable cities
- [ ] TIFF or Grid to raster ⏬ 



