#python

# Coliformes

# Glaciares

---

## 🌍 **Fiona**

#### Descripción:

Fiona es una librería para leer y escribir archivos geoespaciales (como `.shp`, `.geojson`, etc.), basada en la interfaz de GDAL/OGR. Se usa comúnmente junto con `GeoPandas`.

### ⚙️ Componentes Principales

- **Collection**: Objeto que representa un archivo geoespacial.
    
- **Feature**: Cada registro del archivo (con geometría + atributos).
    

#### Principales Apuntes:

- Compatible con `with` para manejo seguro de archivos.
    
- Lee archivos espaciales en formato vectorial.
    
- Muy útil para integrar con `GeoPandas`.
    

#### Ejemplo:

```python
import fiona

with fiona.open("datos.shp") as shapefile:
    for feature in shapefile:
        print(feature["geometry"])
```

---

## 📊 **Plotly**

#### Descripción:

Plotly es una librería para crear gráficos interactivos de alta calidad, basada en D3.js. Soporta visualizaciones 2D, 3D y mapas, y se integra fácilmente con Dash para crear dashboards.

### ⚙️ Componentes Principales

- **go.Figure**: Estructura principal para componer un gráfico.
    
- **plotly.express (px)**: API de alto nivel para gráficos rápidos.
    
- **Traces**: Objetos visuales (líneas, barras, mapas, etc.).
    

#### Principales Apuntes:

- Muy potente para notebooks y web.
    
- Existen dos APIs: `graph_objects` (más detallada) y `express` (más rápida).
    
- Soporta exportación a HTML y PNG.
    

#### Ejemplo:

```python
import plotly.express as px

df = px.data.gapminder().query("year == 2007")
fig = px.scatter(df, x="gdpPercap", y="lifeExp", size="pop", color="continent", hover_name="country")
fig.show()
```

---

## 📐 **Shapely**

#### Descripción:

Shapely es una librería para crear y manipular geometrías (puntos, líneas, polígonos). Proporciona operaciones espaciales como intersecciones, uniones y distancias.

### ⚙️ Componentes Principales

- **Point, LineString, Polygon**: Objetos geométricos base.
    
- **Funciones espaciales**: `.intersects()`, `.union()`, `.distance()`, etc.
    

#### Principales Apuntes:

- Muy útil para análisis geométrico puro (sin datos tabulares).
    
- Se usa junto a `GeoPandas`, `Fiona` y `Rasterio`.
    

#### Ejemplo:

```python
from shapely.geometry import Point, Polygon

p1 = Point(1, 1)
poly = Polygon([(0, 0), (2, 0), (2, 2), (0, 2)])
print(poly.contains(p1))  # True
```

---

## 🛰 **Rasterio**

#### Descripción:

Rasterio permite leer, escribir y manipular archivos raster (como `.tif`, DEMs, imágenes satelitales). Está construido sobre GDAL, y es esencial para el análisis geoespacial en rásters.

### ⚙️ Componentes Principales

- **DatasetReader**: Objeto para abrir rásters.
    
- **Transform**: Información de georreferenciación.
    
- **read()**: Carga bandas individuales como arrays NumPy.
    

#### Principales Apuntes:

- Permite acceder a metadatos y CRS.
    
- Compatible con NumPy para análisis.
    
- Ideal para trabajar con DEMs o imágenes remotas.
    

#### Ejemplo:

```python
import rasterio
from rasterio.plot import show

with rasterio.open("dem.tif") as src:
    show(src, cmap="terrain")
    print(src.crs)
    print(src.bounds)
```

---

## 🌐 **GeoPandas**

#### Descripción:

GeoPandas extiende `pandas` para soportar datos geoespaciales. Cada fila es una geometría (punto, línea, polígono) y una tabla de atributos. Ideal para cargar `.shp`, `.geojson`, etc.

### ⚙️ Componentes Principales

- **GeoDataFrame**: Pandas + geometría.
    
- **GeoSeries**: Columna geométrica con métodos espaciales.
    
- **plot()**: Muestra los datos directamente con Matplotlib.
    

#### Principales Apuntes:

- Soporta operaciones espaciales (`.buffer()`, `.intersects()`).
    
- Trabaja con CRS y reproyecciones (`.to_crs()`).
    
- Se integra con `matplotlib`, `shapely`, `rasterio`.
    

#### Ejemplo:

```python
import geopandas as gpd

gdf = gpd.read_file("datos.shp")
gdf.plot(column="poblacion", cmap="viridis", legend=True)
```

---

## 📊 **Dash**

#### Descripción:

Dash es un framework para construir dashboards web interactivos con Python. Está basado en Flask, Plotly y React.js, y permite crear apps analíticas sin necesidad de usar JavaScript.

### ⚙️ Componentes Principales

- **Dash App**: La aplicación web.
    
- **dcc.Graph**: Componente de visualización con Plotly.
    
- **dcc.Input / html.Div**: Elementos de UI.
    

#### Principales Apuntes:

- Usa callbacks para enlazar interactividad.
    
- Ideal para mostrar resultados de modelos o visualización de datos.
    
- Se ejecuta como una app web local o en servidores.
    

#### Ejemplo:

```python
from dash import Dash, html, dcc

app = Dash(__name__)

app.layout = html.Div([
    dcc.Graph(figure=px.scatter(x=[1, 2, 3], y=[4, 1, 2]))
])

if __name__ == '__main__':
    app.run_server(debug=True)
```

---

¿Quieres que los pase a Markdown listo para copiar o subirlo a algún repositorio o nota en Obsidian?