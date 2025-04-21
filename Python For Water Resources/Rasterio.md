#gis #python #dem
*Descripción:* Rasterio es una librería de *python* que permite leer, escribir y manipular archivos raster (como `.tif`, DEMs, imágenes satelitales). Está construido sobre GDAL, y es esencial para el análisis geoespacial en rásters.


### ⚙️ Componentes Principales

- **DatasetReader**: Objeto para abrir rásters.
- **read()**: Carga bandas individuales como arrays NumPy. Cambia modo de manipulación si son imágenes satelitales (RGB) o de DEM (read(1) para elevación)
- show / show_hist -> Graficar datos

#### Principales Apuntes:

- Permite acceder a metadatos y CRS.
- Compatible con NumPy para análisis.
- Ideal para trabajar con DEMs o imágenes remotas.
- Para visualizar las imágenes se debe usar `from rasterio.plot import show`
- Al usar el rasterObj los ejes son las coordenadas absolutas, al usarlo en el DEM serán coordenadas relativas
- ![[Pasted image 20250414164424.png]]
![[Pasted image 20250414164436.png]]
### Bandas LANDSAT
Para las imágenes LANDSAT se tienen las siguientes bandas:
- LANDSAT 5 -> 1, 2, 3, 4 = R, G, B, INF del espectro visible
# Funciones Principales
```python
import rasterio
from rasterio.plot import show

# Visualización de bandas
show((imagen_satelital, 1), cmap='red')
blue = imagen_satelital.read(3) # array numpy

# Combinar bandas
composicion = np.dstack((red, green, blue))
plt.imshow(composicion)

# Detalles de raster
def describeRaster(rasterObj: rasterio.io.DatasetReader):

    """Describe the raster object and print its metadata.
  Args:
        rasterObj (rasterio.io.DatasetReader): The raster object.
    """

    print("Profile: \n", rasterObj.profile)
    print("Size: \n", rasterObj.width, rasterObj.height) # dimensions of raster (width, height)
    print("Shape: \n", rasterObj.shape) # shape of the raster (height, width) -> (rows, cols)
    print("Size (in pixels): \n", rasterObj.width * rasterObj.height) # size of the raster in pixels
    print("Number of Rows: \n", rasterObj.height) # number of rows in the raster
    print("Number of Columns: \n", rasterObj.width) # number of columns in the raster
    print("Bounds: \n", rasterObj.bounds) # bounds of the raster (left, bottom, right, top)
    print("Coordinate Reference System: \n", rasterObj.crs) # coordinate reference system
    print("Transform: \n", rasterObj.transform) # affine transformation matrix
    print("Resolution: \n", rasterObj.res) # resolution of the raster (x, y) -> also dxy
    print("Data Type: \n", rasterObj.dtypes[0]) # data type of the raster
    print("No. of Bands: \n", rasterObj.count) # number of bands
    print("No. of Pixels: \n", rasterObj.width * rasterObj.height) # number of pixels
    print("No. of NoData Values: \n", rasterObj.nodata) # number of missing values
    print("No. of Overviews: \n", rasterObj.overviews(1)) # number of overviews
    print("Block Size: \n", rasterObj.block_shapes[0]) # block size of the raster
    print("Compression: \n", rasterObj.compression) # compression type
    print("Interleave: \n", rasterObj.interleaving) # interleave type
    print("Driver: \n", rasterObj.driver) # driver type
    print("Tags: \n", rasterObj.tags()) # tags of the raster
    print("Tags (all): \n", rasterObj.tags(ns=None)) # tags of the raster with all namespaces
    print("Tags (ns): \n", rasterObj.tags(ns="")) # tags of the raster with a specific namespace
```
