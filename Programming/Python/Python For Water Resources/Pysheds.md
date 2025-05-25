https://github.com/mdbartos/pysheds
https://pythongis.org/part3/chapter-12/nb/00-watershed-analysis-with-pysheds.html
### 🔍 ¿Qué es pysheds?

`pysheds` es una biblioteca orientada al **análisis de cuencas hidrográficas y redes de drenaje** a partir de datos raster, especialmente DEMs. Su objetivo es facilitar tareas típicas de hidrología computacional como:

- Delimitación de cuencas.
- Cálculo de redes de flujo (flow direction, flow accumulation).
- Corrección de DEMs (filling sinks).
- Rastreo de redes de drenaje.
- Generación de mapas de contribución de flujo (contributing area).
## Funciones Principales
### ⚙️ Funcionalidades clave

| Función              | Descripción                                              |
| -------------------- | -------------------------------------------------------- |
| `fill_depressions()` | Rellena depresiones (sinks) del DEM.                     |
| `resolve_flats()`    | Ajusta zonas planas para asegurar continuidad del flujo. |
| `flowdir()`          | Calcula la dirección del flujo (D8, D∞, etc.).           |
| `accumulation()`     | Calcula la acumulación de flujo.                         |
| `catchment()`        | Delimita cuencas a partir de puntos de salida.           |
| `view()`             | Permite extraer subcuencas o zonas de interés.           |
| `clip_to()`          | Recorta el raster a una región definida.                 |
# Conceptos Básicos
## Raster
`Grid` methods operate on `Raster` objects. You can think of a `Raster` as a numpy array with additional attributes that specify the location, resolution and coordinate reference system of the data.
When a dataset is read from a file, it will automatically be saved as a `Raster` object.
```
from pysheds.grid import Grid

grid = Grid.from_raster('./data/dem.tif')
dem = grid.read_raster('./data/dem.tif')
```
### Calling methods on rasters
Hydrologic functions (such as flow direction determination and catchment delineation) accept and return `Raster objects`:
```
inflated_dem = grid.resolve_flats(dem)
fdir = grid.flowdir(inflated_dem)
```
### Raster attributes
#### Viewfinder

The viewfinder attribute contains all the information needed to specify the Raster’s spatial reference system. It can be accessed using the `viewfinder` attribute.

```
dem.viewfinder
```
#### Affine transformation matrix

An affine transform uniquely specifies the spatial location of each cell in a gridded dataset. In a `Raster`, the affine transform is given by the `affine` attribute.

```
dem.affine
```
The elements of the affine transform `(a, b, c, d, e, f)` are:

- **a**: Horizontal scaling (equal to cell width if no rotation)
- **b**: Horizontal shear
- **c**: Horizontal translation (x-coordinate of upper-left corner of upper-leftmost cell)
- **d**: Vertical shear
- **e**: Vertical scaling (equal to cell height if no rotation)
- **f**: Vertical translation (y-coordinate of upper-left corner of upper-leftmost cell)

The affine transform uses the [affine](https://pypi.org/project/affine/) module.
#### Shape

The shape is equal to the shape of the underlying array (i.e. number of rows, number of columns).

```
dem.shape
```
#### Coordinate reference system

The coordinate reference system (CRS) defines a map projection for the gridded dataset. The `crs` attribute is a `pyproj.Proj` object. For datasets read from a raster file, the CRS will be detected and populated automaticaally.

```
dem.crs
```
#### Mask

The mask is a boolean array indicating which cells in the dataset should be masked in the output view.

```
dem.mask
```
#### “No data” value

The `nodata` attribute specifies the value that indicates missing or invalid data.

```
dem.nodata
```
#### Derived attributes

Other attributes are derived from these primary attributes:
##### Bounding box

```
dem.bbox
```
##### Extent

```
dem.extent
```

##### Coordinates

```
dem.coords
```
### Converting the Raster coordinate reference system

The Raster can be transformed to a new coordinate reference system using the `to_crs` method:

```
import pyproj
import numpy as np

# Initialize new CRS
new_crs = pyproj.Proj('epsg:3083')

# Convert CRS of dataset and set nodata value for better plotting
dem.nodata = np.nan
proj_dem = dem.to_crs(new_crs)
```


## View 
The `grid.view` method returns a copy of a dataset cropped to the grid’s current view. The grid’s current view is defined by its `viewfinder` attribute, which contains five properties that fully define the spatial reference system:

- `affine`: An affine transformation matrix.
- `shape`: The desired shape (rows, columns).
- `crs` : The coordinate reference system.
- `mask` : A boolean array indicating which cells are masked.
- `nodata` : A sentinel value indicating ‘no data’.
### Viewing datasets

First, let’s delineate a watershed and use the `grid.view` method to get the results.

```
# Resolve flats
inflated_dem = grid.resolve_flats(dem)

# Compute flow directions
fdir = grid.flowdir(inflated_dem)

# Specify pour point
x, y = -97.294167, 32.73750

# Delineate the catchment
catch = grid.catchment(x=x, y=y, fdir=fdir, xytype='coordinate')

# Get the current view and plot
catch_view = grid.view(catch)
```
### Clipping the view to a dataset

The `grid.clip_to` method clips the grid’s current view to nonzero elements in a given dataset. This is especially useful for clipping the view to an irregular feature like a delineated watershed.

```
# Clip the grid's view to the catchment dataset
grid.clip_to(catch)

# Get the current view and plot
catch_view = grid.view(catch)
```
## File I/O
### Reading from raster files

`pysheds` uses the [[Rasterio]] module to read raster images.

#### Instantiating a grid from a raster

```
from pysheds.grid import Grid
grid = Grid.from_raster('./data/dem.tif')
```

#### Reading a raster file

```
dem = grid.read_raster('./data/dem.tif')
```
### Reading from ASCII files

#### Instantiating a grid from an ASCII grid

```
grid = Grid.from_ascii('./data/dir.asc')
```
#### Reading an ASCII grid

```
fdir = grid.read_ascii('./data/dir.asc', dtype=np.uint8)
```