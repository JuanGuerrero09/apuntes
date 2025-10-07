---
Class: "[[QGIS for Water Resources]]"
Professor:
Date: 2025-10-03
Last Modified: Thursday 2nd October 2025 15:57
---
# Friday 3rd October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

In this lesson, you will compose a final map showing the result of the catchment delineation analysis. You will start with a basic print layout and enhance it with standard map elements. You will also learn some tricks such as use of variables and expressions to add some automation to the map.

## Map Design in GIS
- Design maps using GIS
- Choose the appropriate legends
- Choose the appropriate file type, resolution and compression method for maps
Maps are output from _GIS_ with hardcopy maps, presentations and in the Web

#### Which map elements?
Mandatory
- Title
- Legend
	- Real objects to map symbols
	- Key to used symbols
	- Intuitive colours and symbols
	- Units
- Scalebar
- North arrow
Optional
-  Acknowledgments
- Name of the map projection
- Logo
- Grid
![[Pasted image 20251002154330.png]]

Continuous raster -> Ramps
Discrete raster -> Random colors but intuitive
Scale 
	words (1cm represents 250m)
	ratio 1:25 000
	scale bar (recomendation to always use scalebar)
Fonts 
	Paper: Sans-serif
	Computer code: monospaced
Overview (big map small size)
Formats
	GIS Map
		Screen (100 dpi)
			Vector = GIF, PNG
			Raster = JPG, PNG
		Paper (>600 dpi)
			Vector = EPS, SVG, PDF
			Raster = PDF, TIFF

Example
![[Pasted image 20251002155535.png]]

![[Pasted image 20251002155555.png]]

## Lesson 7
### Map Design Considerations - Adding More Data
From the course data find the _MapComposition.gpkg_. Add the _CountryBoundaries_ layer found inside. If it lands within the existing _Main Map_ group, right-click on it and choose _Move Out of Group_.  
  
_This dataset was downloaded from [Natural Earth](https://www.naturalearthdata.com/). This is another fantastic public domain resource for global GIS data._
![[Pasted image 20251003131126.png]]

In this lesson you have learned to:

- craft a basic map layout
- add standard map elements
- add _legend patches_  
- use a _variable_ to add your name to the map
- use an _expression_ to automate the map with the current date
- work with _map themes_
- export the map


---
# 🐢 Definitions


---
# 📅 Homework



