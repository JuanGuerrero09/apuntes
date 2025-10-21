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
### Web Resources
[[https://thetruesize.com/ | The true size web]]
[[https://spatialreference.org/ | Spatial Reference List]]
[[https://epsg.io/ | EPSG Codes for Countries]]
[[https://ihatecoordinatesystems.com/ | I hate coordinates systems!]] (Web to go in deep with coordinates stuff)
[[http://switchfromshapefile.org/ | Why shapefile is a bad format?]]

# 📝 Notes

## 🗺️ Introducing GIS

A **Geographic Information System (GIS)** integrates **spatial data**, **attribute data**, and **metadata**.
- **Geographic** → Spatially referenced data
- **Information System** → Combination of software, hardware, and databases
- **GIS Application** → Enables queries, analysis, and visualization
#### GIS in Urban Water Systems
Applications in hydraulic networks, drainage, and urban infrastructure.
### GIS in Hydrological Modelling
Used for modeling, visualization, and spatial data management.

### Data Processing Workflow

`Import/Convert → Coordinate information (Projection & Datum) → Subsetting & Resampling → Reconditioning → Geoprocessing → Interpolation`
### Main Applications of GIS
- Map production
- Visualization (2D, 2.5D, 3D, animation, web)
- Geoprocessing
- Geospatial analysis
 ---

### 🖥️ GIS Desktop

Graphical applications typically include:

- Menus
- Toolbars
- Map layers
- Map canvas
- Print layout view

**Layer order (top to bottom):**

1. Points
2. Lines
3. Polygons
4. Rasters

### 💻 GIS Command-Line Tools

- Useful for **testing** and **customizing** GIS operations
- **Scripts** allow batch processing and dynamic modeling

---

### 🧩 GDAL

**GDAL (Geospatial Data Abstraction Library)** — Core library for converting **raster and vector** formats.  
Supports formats like GeoTIFF, ESRI Shapefile, HDF, and KML, and has interfaces in **C++, Java, and Python**.

---
## 🧠 Data Models

### Components

**Features = Geometry + Attributes**

### Vector Data

Represents real-world features using:

- **Points**
- **Lines (Polylines)**
- **Polygons**
#### Points
Defined by X, Y coordinates; no area or length.  
Used for features too small to represent as polygons.
#### Lines / Polylines
Series of connected vertices; represent features with length (e.g., rivers, roads).
#### Polygons
Closed shapes with area; represent regions (e.g., lakes, catchments, countries).
#### Common Issues

- **Scale-dependent accuracy**
- **Slivers:** Small gaps due to lack of snapping
- **Overshoots/Undershoots:** Lines extending too far or not meeting properly

#### Vector Analysis

- Spatial joins
- Geoprocessing (buffer, dissolve, intersect, etc.)

---

## 🌍 Projections and Coordinate Reference Systems (CRS)

### Why Projections?
We need to project the **3D globe** onto a **2D map**.
- **Latitude & Longitude** in degrees → Geographic CRS
- Example: **WGS-84**

**Convert DMS → Decimal Degrees:**

`DEGREES + MINUTES/60 + SECONDS/3600 = Decimal Degrees # Example: 4°21'16" = 4.3544444`

### Map Projections

Transforming a 3D surface to 2D introduces distortions in:

- Area
- Scale
- Shape
- Direction

#### Projection Types

- **Cylindrical:** Preserves distance or area
- **Conical:** Preserves angles
- **Planar:** Preserves distances

**Examples:**

- Mercator Projection
- Albers Equal Area Projection

#### Universal Transverse Mercator (UTM)

Global projection divided into 60 zones, each 6° wide (east–west).

#### Key Terms

- **Datum:** Approximation of Earth’s shape (e.g., WGS84)
- **Spheroid:** Mathematical surface representing Earth’s shape
- **Geoid:** Representation of mean sea level
- **False Northing/Easting:** Offsets to avoid negative coordinates

#### Choosing the Right Projection

Depends on:

- Spatial extent
- Type of analysis
- Data availability

Use **EPSG codes** to standardize projections:

- Amersfoort / RD New: `EPSG:28992`
- Google Earth: `EPSG:4326`
- MAGNA-SIRGAS: `EPSG:3118`
### On-the-Fly Reprojection (OTF)
Allows visualization of layers in different projections simultaneously.

> ⚠️ OTF does _not_ modify layer projection — it only adjusts visualization.

---

## 📂 GIS File Formats
### Vector Formats
- **ESRI Shapefile**
    - `.shp` → geometry
    - `.shx` → shape index
    - `.dbf` → attribute table
    - `.prj` → projection info
- **GeoPackage (.gpkg):** SQLite-based, supports multiple layers in one file (default in QGIS)

### Raster Formats

- **TIFF / GeoTIFF:** Stores raster data + embedded metadata
- **Arc/Info ASCII Grid**

### Spatial Databases

Provide spatial indexing for faster queries:

- PostGIS
- Oracle Spatial
- ESRI Geodatabase
- GeoPackage

### OGC Web Services

- **WMS** → Web Map Service
- **WFS** → Web Feature Service
- **WCS** → Web Coverage Service
### Tiled Web Maps
Efficient online visualization (used by Google Maps, OpenStreetMap).
### File Conversions
- Raster ↔ Raster → _translate_
- Vector ↔ Vector → _save as_
- Raster → Vector → _polygonize_
- Vector → Raster → _rasterize_

---

## 🧾 Lesson 1: Preparing Data from Hardcopy Maps

![[Pasted image 20250930135654.png]]

### 🗺️ Georeferencing

To use hardcopy maps in a GIS, they must be **scanned** and **georeferenced**.  
Georeferencing is also necessary for **raw remote sensing images**, such as **aerial photographs** and **satellite imagery**.

For best results:
- Choose a **clean map sheet** without folds or distortions.
- Use a **large-format scanner** capable of scanning the entire map at once.
- Select a **high resolution** (e.g. **1200 dpi**) to ensure that all details are preserved in the resulting raster file.

During **georeferencing**, we link specific locations on the scanned image to **real-world coordinates**.  
There are two main approaches:
1. **Ground Control Points (GCPs):**  
    Select locations that are clearly visible on the image — such as **bridges**, **road intersections**, or **building corners** — and assign their known geographic coordinates.
2. **Coordinate Grid on Map:**  
    If the map already contains a printed coordinate grid, you can use it as a reference.  
    Make sure you know the **projection** of that grid, which is usually stated in the map legend or margins.
### 📍 Adding Ground Control Points (GCPs)

**Ground Control Points (GCPs)** are known locations with precise coordinates that link the image to a real-world coordinate system.  
When georeferencing a scanned map, it is ideal to use GCPs **in a known projection** to ensure accuracy.

Each GCP should correspond to a recognizable feature both on the scanned map and in the reference coordinate system.  
Once several GCPs are added, QGIS calculates the **transformation error** based on their spatial relationship.
## ⚙️ Reducing Errors and Performing the Transformation

In QGIS, after adding the GCPs, you can check the **Estimated Mean Error (EME)** in pixels — for example, around _40 pixels_ in this case.

There are two main strategies to reduce this error:

1. **Move GCPs:**  
    Use the **red adjustment button** to zoom in and reposition GCPs more precisely on the correct pixel.
2. **Change the transformation type:**  
    Modify the transformation method to recalculate the fitting error.  
    In this example, switching from a **Linear** to a **First Order Polynomial (1)** transformation (via _Settings → Transformation Settings_) significantly improves the accuracy.
    
If the resulting error is **below 1 pixel**, it is considered acceptable.  
The decision to accept a certain level of accuracy depends on the **map’s purpose**.

Once satisfied, press **Start Georeferencing**.  
The map will now appear in the QGIS Map Canvas, and you can **close the Georeferencing window**.
## 🔍 Verify the Georeferenced Map

With the map’s CRS properly set, you can now visualize both:

- **Projected coordinates** (in meters or map units), and
- **Geographic coordinates** (in decimal degrees for latitude and longitude).
![[Pasted image 20250929145049.png]]

#### 🛰️ Add a backdrop to verify alignment
Use the **QuickMapServices plugin** to compare your georeferenced map against a base map such as **Google Satellite** or **OpenStreetMap**.
To install it:

- Go to **Plugins → Manage and Install Plugins**
- Search for _QuickMapServices_ and install it.

Then, add a base map layer and adjust its **transparency** to visually check if the scanned map aligns correctly with the background imagery.

### ✏️ Digitizing Vector Layers from a Georeferenced Backdrop

Once the scanned map is properly georeferenced, it can serve as a **backdrop** for **digitizing vector data**.  
Vectors can represent:

- **Points** (e.g., mountain peaks)
- **Lines or Polylines** (e.g., rivers)
- **Polygons** (e.g., lakes, catchments)

All vector layers should be stored together in a **GeoPackage (.gpkg)** database.  
This allows multiple layers to be organized within a single file.

To create one:

1. Go to **Layer → Create Layer → New GeoPackage Layer**
2. Define:
    - The **database name**
    - The **geometry type** (Point, Line, or Polygon)
    - The **fields** (attributes)
    - The **coordinate reference system (CRS)**
### 🏔️ Digitizing Peaks (Points)

After creating the point layer:

1. Select **Toggle Editing** from the toolbar or via right-click on the layer.
2. Click the **Add Point Feature** tool and place points on the map.
3. Fill in the attribute values (e.g., _Name_, _Elevation_).
4. When finished, **right-click the layer → Open Attribute Table** to review the data.
![[Pasted image 20250929154424.png]]

#### 🌊 Digitizing Rivers (Polylines)
Repeat the process using **New GeoPackage Layer**, but this time select the **Line** geometry type.  
Add the new layer to the existing GeoPackage database so that all data remains grouped.

After defining the field list, start digitizing:
- Use the **Snapping Toolbar** (_View → Toolbars → Snapping Toolbar_) to ensure river segments connect accurately.
- When digitizing tributaries, make sure they **join the main river** at the correct location.

If you want all tributaries of the same river to be a single feature, use the **Dissolve** tool:

1. Go to **Vector → Geoprocessing Tools → Dissolve**
2. Choose _Name_ as the **Dissolve field**
3. Save the output to the GeoPackage
4. Click **Run** to process

You will be able to visually compare the results before and after dissolving.
![[Pasted image 20250929162044.png]]
### 🪣 Digitizing Lakes (Polygons)

For lakes and other areal features, create a **Polygon** layer in the same GeoPackage.

When digitizing polygons:
- Ensure that the **first vertex** and **last vertex** are the same to close the shape.
- If the polygon contains holes (e.g., islands inside a lake), use the **Advanced Digitizing Toolbar**, similar to the Snapping Toolbar used earlier.

> 💡 _General layer order recommendation:_  
> Points → Lines → Polygons → Rasters

### 🎨 Styling

#### Style and Label the Peaks (Points)

Open the **Layer Styling Panel** by clicking:
![[Pasted image 20250929165012.png]]
You can adjust the **Anchor point** for labels and markers to improve placement.
To create labels:
1. Enable **Single Labels** in the _Labels_ section
2. Set the label field to _Name_
![[Pasted image 20250929165109.png]]
To **concatenate multiple fields**, click the **ε (Expression)** button and use an expression like:

`"Name" || '\n' || format_number("Elevation", 0) || ' meters'`

This will display both the name and the elevation value (rounded to zero decimals).

Finally, go to **Automated Placement Settings** and uncheck

> “Allow truncated labels on edges of map.”  
> This prevents labels from being cut off at the map boundaries.

#### #### Styling Mountains, Rivers, and Lakes

You can apply similar styling principles to line and polygon layers:

- Adjust **color**, **line width**, and **fill patterns**
- Create **labels** for rivers and lakes if desired
- Apply **transparency** to improve visibility of the base map

### ✅ In this Lesson, You Learned How To:

- Find the **projection** and **EPSG code** of a map
- Install and use **plugins**
- **Georeference** a scanned map using **GCPs** from a coordinate grid
- Use the **Coordinate Capture Tool**
- Add **online base maps** from the **QuickMapServices plugin**
- Digitize **points, lines, and polygons**, and add **attribute data**
- Use the **Snapping Toolbar** for accurate feature connections
- **Dissolve** vector features by attribute
- Store multiple layers in a **GeoPackage** database
- **Style** and **label** vector layers for clear map visualization

### ### 🔁 Workflow Summary

> **Typical GIS data preparation workflow:**
> 
> 1. Scan the hardcopy map
> 2. Georeference the raster using GCPs
> 3. Verify the projection and accuracy
> 4. Digitize vector layers (points, lines, polygons)
> 5. Store data in a GeoPackage
> 6. Apply styling and labeling for presentation
>

# 🐢 Definitions

GIS: Geographic Information Systems.
Attribute table: Table where all the attribute information for vectors are stored.
Nearest neighbors for interpolation: 

# 📅 Homework
- [ ] Check how to create isochrones for walkable cities
- [ ] TIFF or Grid to raster ⏬ 



