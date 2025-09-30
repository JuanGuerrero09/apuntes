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

---
## Lesson 2: Importing Tabular Data into QGIS

 Firstly, it's a good practice to do a exploratory analysis to the content of speadsheets or csv before importing them to any software.
 
### Working with Spreadsheets
There are different ways in QGIS to import tabular data:  
- **Layer | Add Layer | Add delimited text layer**. This is the standard importer that allows us to import delimited text files.
- **Layer | Add Layer | Add spreadsheet layer**. This tool can load spreadsheet files (`*.ods`, `*.xls`, `*.xlsx`) as a layer with options to use the first line as a header, ignore rows, and load geometry from x and y fields. 
For the second (and easiest option) the plugin _Spreadsheet Layers_ is needed. When the layer is created toggle the Geometry, add a projection and change the data type when needed. Also if the points don't appear is possible to zoom to layer by right clicking in the layer.
![[Pasted image 20250930104824.png]]
![[Pasted image 20250930105257.png]]

For the extra table with the temperature data since there is no geometry (coordinates) in the table, we should uncheck the box.
### Convert Spreadsheet to Vector Layer
Since when Adding the spreadsheet is saved as a temporary virtual layer it's necessary to convert it to a GIS vector format, in this case, into a shapefile.




# 🐢 Definitions

Remote sensing: 
# 📅 Homework



