---
Class: "[[QGIS for Water Resources]]"
Professor:
Date: 2025-09-30
Last Modified: Tuesday 30th September 2025 09:11
---
# Tuesday 30th September 2025

# 📒Class Summary
In this session, we explored the **Raster data model** and how it differs from the **Vector model** in GIS.  
We studied the main raster data types — _boolean_, _discrete_, and _continuous_ — and their use in spatial analysis and visualization.  
We also introduced **raster operations** (local, focal, zonal, and global) and discussed how these operations are used for map algebra.  
Finally, we applied this knowledge to **importing tabular data**, joining attribute tables, and performing **interpolation** to generate raster datasets.

During the practical part, we learned how to:

- Import spreadsheets into QGIS.
- Convert tabular data into vector layers.
- Join and edit attribute tables.
- Perform interpolation (Nearest Neighbor and IDW).
- Style and visualize raster results.
- Use **map algebra** to analyze spatial data and identify suitable locations based on multiple criteria.

# 🕸️Resources

- **QGIS Documentation:** https://docs.qgis.org
- **GDAL Documentation:** [https://gdal.org](https://gdal.org)
- **Raster vs Vector overview:** ESRI ArcGIS resources
- **Plugins used:**
    - _Spreadsheet Layers_ (for importing Excel/ODS files)
    - _Point Sampling Tool_ (for extracting raster values to points)
- **Raster analysis tools used:**
    - _Raster Calculator_
    - _Proximity (Raster Distance)_
    - _Reclassify by Table_
    - _Grid (Nearest Neighbor / IDW)_

# 📝 Notes

## Raster 🌎

In GIS, there are two main data models to represent real-world information:

- **Vectors**
- **Rasters**

The **Raster model** represents data as a _matrix_ of _pixels_ (or _cells_) arranged in rows and columns, each with a defined _resolution_ based on its height and width.

Raster data types include:

- **Integer:** for discrete or boolean data.
- **Float:** for continuous data.
- **NODATA / mv / NaN:** for missing or undefined values.

### Why defining the data type is important

- It determines how the dataset can be **visualized or styled**.
- It affects what kind of **analysis and calculations** can be performed.

### Types of Raster

- **Boolean:** Only 0/1 (True/False).
    - Example: Flooded vs. Not Flooded, Residential vs. Non-Residential.
- **Continuous:** Real values representing features without sharp boundaries.
    - Example: DEM, temperature maps, runoff models.
- **Discrete:** Integer values representing classes.
    - Example: Land-use map, soil map.

### Bands in Rasters

Rasters can be **single-band** or **multi-band**.

- **Single-band** rasters can represent continuous, discrete, or boolean data, often using gradient colors.
- **Multi-band** rasters are typically used in **remote sensing**, e.g., multispectral or RGB imagery.

**Examples:**

- Elevation → continuous, single-band.
- Boolean and discrete → unit values with a defined color palette.
- Precipitation → continuous, often derived via interpolation from gauges.

### Vector vs Raster

|**Raster**|**Vector**|
|---|---|
|Difficult to overlay multiple layers|Easier to overlay layers|
|Harder to reproject or rescale|Easy to reproject and rescale|
|Generally large file sizes|Generally smaller files|
|Difficult to update|Easier to edit and update|
|Used for map algebra|Used for network and topology analysis|
|Represents continuous phenomena|Represents discrete features|

---

## GIS Raster Processing

After completing this section, you should be able to:

- Describe different raster data types.
- Use **map algebra** for geoprocessing.
### Syntax for Operators

Raster operations can be performed using mathematical and logical operators, similar to algebraic expressions.
### Types of Operations

#### Local Operations

Performed on a **cell-by-cell** basis, independent of neighboring cells.  
Examples:

`Newmap = MapA + MapB 
`DepthToGroundwater = Elevation - GWLevel 
`PrecTot = 12 * (Precip_jan + Precip_jul) / 2`

#### Focal (Neighborhood) Operations

Relate each cell to its neighbors, often within a moving window.  
Examples:

`AverageElevation = windowaverage(DEM, 5000) 
`SlopeMap = slope(DEM) 
`RunoffMap = accuflux(LddMap, 1000 * RainMm)`

#### Zonal (Area-Based) Operations

Compute values for cells within defined zones or categories.  
Examples:

`ClassAverage = aareaaverage(Temperature, Landuse) 
`AverageKsat = aareaaverage(Ksat, Soilmap)`

#### Global Operations

Compute a **single non-spatial value** based on all raster cells.  
Examples:

`averagePrecipitation TotalPopulation`

### Boolean Operations

|Operation|Description|Example|
|---|---|---|
|AND|True only if both inputs are 1|1-1=1, 1-0=0|
|OR|True if either input is 1|1-1=1, 1-0=1|
|XOR|True if inputs differ|1-1=0, 1-0=1|
|NOT|Inverts the value|1→0, 0→1|

Missing values (NaN, NODATA) always propagate through Boolean operations.

---

## Interpolation 🛸

Interpolation is the process of estimating values at unsampled locations based on known data points.

- **Thiessen Polygons (Nearest Neighbor)** are more realistic when few data points exist.
- **Inverse Distance Weighting (IDW)** is more appropriate when many data points are available and values vary smoothly across space.

---

## Lesson 2: Importing Tabular Data into QGIS

Before importing data, always conduct an **exploratory analysis** of the spreadsheet or CSV file.
![[Pasted image 20250930135618.png]]
### ### Working with Spreadsheets

Different methods exist in QGIS for importing tabular data:

- **Layer → Add Layer → Add Delimited Text Layer:**  
    Standard importer for delimited text files (e.g., CSV).
- **Layer → Add Layer → Add Spreadsheet Layer:**  
    Loads spreadsheet files (`.ods`, `.xls`, `.xlsx`) with options to:
    - Use the first line as a header.
    - Ignore specific rows.
    - Load geometry from X and Y fields.

This second (and easiest) option requires the **Spreadsheet Layers plugin**.  
Once imported, enable **Geometry**, assign a **projection**, and adjust **data types** as needed.  
If points are not visible, right-click the layer and select **Zoom to Layer**.
![[Pasted image 20250930104824.png]]
![[Pasted image 20250930105257.png]]

If a table (e.g., temperature data) lacks coordinate fields, **uncheck the Geometry box**.
### Convert Spreadsheet to Vector Layer

Imported spreadsheets are initially **temporary virtual layers**.  
Convert them to a GIS vector format (e.g., Shapefile or GeoPackage):
- Right-click → **Export | Save Features As...**
- Choose **ESRI Shapefile**.
- Select CRS (for the Netherlands: `EPSG:28992 – Amersfoort / RD New`).


![[Pasted image 20250930110728.png]]
> EPSG codes provide standardized identifiers for coordinate systems, making CRS selection consistent and efficient.

Although the shapefile uses EPSG:28992, the QGIS canvas might still display layers in EPSG:4326 (WGS84) with the OTF projection.  
To fix this, go to **Project → Properties → CRS tab** and set the project CRS to 28992.

### Join Attribute Tables

To merge two tables, perform a **Join**:
1. Ensure both tables have a common key field.
2. Right-click the layer → **Properties → Joins → +**
3. Choose the fields to join (e.g., Temperature).

![[Pasted image 20250930112526.png]]
### Edit the Joined Attribute Table

- Remove missing values (e.g., null dates).
- Use **Field Calculator** to create a new field and apply expressions to compute or convert values.
![[Pasted image 20250930113445.png]]
After editing, remove the original temporary tables to keep only the processed shapefile and the new fields.
>- What columns do you see now? r: Only the ones created with the .shp and the added with the Field Calculator
>-  What can you conclude about the join function? r: Works for center the data around less tables by joining with coincident parameters.

![[Pasted image 20250930114157.png]]
>You can also save the entire attribute table to a new shapefile using **Export → Save Features As**.

### Interpolate Point Features to Raster

To interpolate temperature values to raster:
1. **Raster → Analysis → Grid (Nearest Neighbor)**  
    ![[Pasted image 20250930114848.png]]
2. Select the temperature field (`T(C)`) as _Z value from field_.
3. Define output file (`tday_NN.tif`) and enable _Open output after running_.
4. Keep default settings.

![[Pasted image 20250930115223.png]]
This tool uses the `gdal_grid` function behind the scenes.  
IDW interpolation is available under **Raster → Analysis → Grid (Inverse Distance to a Power)**.

> The main menu interpolation tools do not allow control over extent and resolution — use the **Processing Toolbox** for advanced control.

### Style Raster Results

If labels overlap map edges, review the automated label placement settings from the previous lesson.
#### Recipe – Part 1: Nearest Neighbor (NN)

![[Pasted image 20250930133217.png]]

1. Change renderer to **Singleband Pseudocolor**.
2. Choose the **Spectral** color ramp and click _Classify_.
3. Invert the color ramp to match temperature logic (warm = red, cold = blue).
4. Set **Blending mode → Multiply** for better basemap visibility.

#### Recipe – Part 2: IDW

![[Pasted image 20250930133334.png]]

Use the **Singleband Pseudocolor** renderer again with:

- Mode: **Quantile**
- Inverted Spectral color ramp
- Blending mode: **Multiply**

![[Pasted image 20250930133348.png]]

### Lesson 2 Summary

You have learned how to:

- Import tabular data into QGIS
- Save geometries as GIS formats
- Join and edit attribute tables
- Perform raster interpolation
- Style and label point and raster layers

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

## Lesson 3: Spatial Analysis with Map Algebra

With **map algebra**, we can perform calculations using raster layers. This is fundamental for spatial analysis, especially when evaluating multiple criteria to determine suitable or unsuitable areas.

After completing this lesson, you will be able to:

- Use **Raster Attribute Tables (RATs)**
- Apply **map algebra** for raster-based analysis
- Distinguish **Boolean**, **discrete**, and **continuous** rasters
- Create legends for Boolean, discrete, and continuous maps
- Understand the use of **NoData** values
- Use **logical operators**
- Calculate **distances** from raster features
- **Reclassify** rasters
- **Convert** rasters to vector points
- **Sample** raster values using vector points

---

### 🏜️ Case Study: Oasis Aïn Kju Dzjis

The municipality of the **imaginary oasis Aïn Kju Dzjis** has hired you to determine **which wells are unsuitable** for its inhabitants, based on the following spatial conditions:

**Condition 1:**  
Wells must be **within 150 meters** of houses or roads.

**Condition 2:**  
There must be **no industry, mine, or landfill within 300 meters** of the wells.

**Condition 3:**  
Wells must be **less than 40 meters deep**.

You will use **map algebra** in QGIS to perform these analyses.

![[Pasted image 20250930135600.png]]

---

### 🧭 Preparation

#### Adding Raster Attribute Tables (RATs)

After adding your raster layers to the map canvas, inspect each one to determine its data type:

- `gwlevel` → **Vector**
- `roads` → **Vector / Discrete raster**
- `buildg` → **Vector / Discrete raster**
- `dtm` → **Continuous raster**

In general, raster layers do not have attribute tables. Each raster cell represents a value for a single theme, and its type determines how it can be analyzed and visualized:

- **Boolean rasters**: values are `0` or `1` (True/False).  
    _Example:_ flooded vs. non-flooded areas.  
    → Use **Paletted/Unique values** renderer.
    
- **Discrete rasters**: integer values representing classes (e.g., land cover types).  
    → Use **Paletted/Unique values** renderer.
    
- **Continuous rasters**: floating-point values representing gradients (e.g., elevation, precipitation).  
    → Use **Singleband pseudocolor** renderer.
    

> The GIS analyst must determine the raster type, since it’s often not stored in the file metadata. Knowing the data type ensures correct analysis and styling.

QGIS allows the creation of **Raster Attribute Tables (RATs)**, enabling multiple fields per raster and the ability to select fields for styling.

To create a RAT:

1. Apply a **Paletted/Unique values** renderer to your discrete raster (e.g., land use).
2. In the _Layer Styling_ panel, select **Classify** to list unique values.
3. Right-click the layer → **Create Raster Attribute Table**.
4. In the dialog, choose **Managed by the data provider** (uses a GDAL auxiliary XML).
5. Edit the attribute table, add a _Land Use_ column, rename the _Class_ field to _Land Use_, and customize colors.

![[Pasted image 20250930145041.png]]

> You can also create RATs from rasters styled with _Singleband Pseudocolor_. Set **Interpolation** to _Discrete_ so it uses class ranges.

---

#### Using the Processing Toolbox

The **Processing Toolbox** in QGIS provides a wide set of geoprocessing tools — not only from QGIS itself but also from libraries such as **GDAL**, **GRASS**, **SAGA**, **PCRaster**, **R**, and **WhiteboxTools**.  
Activate it via **Processing → Toolbox** from the main menu.

---

## ⚙️ Condition 1: Wells within 150 meters of houses or roads

**Objective:**

- Create a **Boolean layer** (True for houses, False otherwise)
- Generate **150-meter buffer zones** around houses and roads

### 🏠 Creating Boolean Layers

Open **Raster → Raster Calculator**.  
Use the following expressions to define Boolean rasters:

- For houses:
    
    `"buildg@1" = 1`
    
- For roads:
    
    `"roads@1" > 1`
    

Here, `@1` refers to **band 1** — helpful when working with multi-band rasters (e.g., remote sensing).

![[Pasted image 20250930151320.png]]  
![[Pasted image 20250930151458.png]]

---

### 🧩 Creating 150m Zones

Go to **Raster → Analysis → Proximity (Raster Distance)**.  
Use the Boolean layer as input and set:

- **Distance units:** Georeferenced coordinates
- **Max distance:** 150
- **Value within range:** 1
- **Output data type:** Byte
- **Output name:** `houses150m.tif`

Leave all other parameters at default.

![[Pasted image 20250930152512.png]]  
![[Pasted image 20250930153206.png]]

---

## ⚙️ Condition 2: No industry, mine, or landfill within 300 meters

We will reclassify the raster to isolate industries, mines, and landfills, compute distances to those features, and then keep only wells located **300 m or more away**.

### 🏭 Creating a Mask for Industry, Mine, or Landfill

From the **Processing Toolbox**, open  
**Raster analysis → Reclassify by table**.  
Create a **lookup table** specifying the classes corresponding to _industry_, _mine_, and _landfill_, as shown below:

![[Pasted image 20250930153555.png]]  
![[Pasted image 20250930153658.png]]

Alternatively, this can also be done with the **Raster Calculator**:

![[Pasted image 20250930155151.png]]  
![[Pasted image 20250930155104.png]]

Both approaches produce equivalent Boolean rasters.

---

### 🗺️ Creating the 300m Zone

To compute distance zones without using the same tool as before, you can explore an alternative method:

![[Pasted image 20250930160044.png]]

Here, choosing a **32-bit output** instead of Byte allows for continuous values beyond 256.

- The **`inddist`** layer is **continuous**, since pixel values change progressively without discrete boundaries.
    

![[Pasted image 20250930161017.png]]  
![[Pasted image 20250930162248.png]]

Finally, use the Raster Calculator to generate a Boolean map of safe zones:

`"inddist@1" >= 300`

Output name: `ind300m.tif`

- The **`ind300m`** layer is **Boolean**, since it contains only two values (True/False).
    

![[Pasted image 20250930162811.png]]

---

## ⚙️ Condition 3: Wells less than 40 meters deep

The `gwlevel` layer represents the **groundwater level elevation** (in meters above sea level).  
To calculate **well depth**, subtract groundwater level from the **surface elevation (DTM)**:

`"dtm@1" - "gwlevel@1"`

Output: `welldepth.tif`

- The **`welldepth`** layer is **continuous**, representing varying depth values.
    

Style it using a **Singleband pseudocolor** renderer.

Next, create a Boolean layer for wells **less than 40 m deep**:

`"welldepth@1" < 40`

Output: `notdeep.tif`

Style accordingly.

---

## 🧮 Combining All Conditions

Use **Raster Calculator** to combine all conditions:

`"houses150m@1" AND "ind300m@1" AND "roads150m@1" AND ("notdeep@1" = 1)`

This final raster identifies **suitable wells** meeting all criteria.

---

### 💧 Converting Raster Cells to Point Vectors

To better visualize results, convert raster pixels (True cells) to points:

**Processing Toolbox → Vector creation → Raster pixels to points**

Add a field name such as `Accessible`.

![[Pasted image 20251001113409.png]]

Now, to enrich the attribute table with contextual information, use the **Point Sampling Tool** plugin to sample values from all relevant raster layers and append them as new attributes.

---

### ✅ Lesson Summary

In this lesson, you have learned how to:

- Use **Raster Attribute Tables (RATs)**
    
- Apply **map algebra** for raster analysis
    
- Distinguish **Boolean**, **discrete**, and **continuous** rasters
    
- Style and create legends for raster data
    
- Use **NoData** appropriately
    
- Apply **logical operators**
    
- Compute **distances** from raster features
    
- **Reclassify** rasters
    
- **Convert** rasters to vector points
    
- **Sample** raster values using vector points
    

---

### 🐢 Definitions

**Remote Sensing:**  
The science of acquiring information about the Earth's surface using sensors on satellites or aircraft without direct contact.

**RAT (Raster Attribute Table):**  
A table linked to a raster dataset that stores additional attributes (e.g., land use names, colors, or categories) for each cell value.

---

### 📅 Homework

- Watch the **video of Lesson 3**
    
- Watch **two videos from Lesson 4**

