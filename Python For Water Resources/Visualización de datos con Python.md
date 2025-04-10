# Matplotlib
### Descripción:
Matplotlib es la biblioteca de visualización de datos más utilizada en Python. Permite crear gráficos estáticos, animados e interactivos de forma sencilla. Está pensada para tener una sintaxis similar a MATLAB. Su submódulo más usado es `pyplot`, que proporciona una interfaz basada en funciones para crear figuras y gráficos fácilmente.
#### Componentes Principales

- **Figure**: El lienzo general que puede contener uno o más gráficos (subplots).
- **Axes**: Cada uno de los gráficos dentro de una figura; cada Axes puede contener líneas, imágenes, textos, etc.
- **Axis**: Los ejes X e Y individuales en cada `Axes`.
### Ejemplo
```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots()  # Crea una figura con un solo subplot
ax.plot([1, 2, 3], [4, 5, 6])  # Gráfico de líneas
plt.title("Ejemplo simple con Matplotlib")
plt.show()
```



# Seaborn
#### Descripción:

Seaborn es una biblioteca basada en Matplotlib que proporciona una interfaz de alto nivel para crear gráficos estadísticos atractivos. Está optimizada para trabajar directamente con DataFrames de pandas, y simplifica la creación de gráficos como diagramas de dispersión con regresión, mapas de calor, boxplots, etc.
### ⚙️ Componentes Principales

- Funciones de alto nivel como `sns.lineplot`, `sns.barplot`, `sns.heatmap`, que aceptan DataFrames directamente.
- Integración automática con Matplotlib para modificar estilos, escalas y temas.
### Ejemplo

```python
import seaborn as sns
import matplotlib.pyplot as plt

tips = sns.load_dataset("tips")
sns.boxplot(x="day", y="total_bill", data=tips)
plt.title("Gasto total por día")
plt.show()

```


# Bokeh
#### Descripción:

Bokeh es una librería para la creación de visualizaciones interactivas y de alta calidad para la web. Permite construir dashboards completos y exportarlos como HTML. Bokeh trabaja con `ColumnDataSource`, que actúa como la estructura de datos central (similar a DataFrame).
### ⚙️ Componentes Principales

- **Figure**: Similar a Matplotlib, es el contenedor para los gráficos.
- **ColumnDataSource**: Fuente de datos para los elementos gráficos.
- **Widgets y Layouts**: Permite crear interfaces con pestañas, sliders, botones, etc.
#### Principales apuntes:

- Output en HTML.
- Permite interacción: zoom, hover, selección.
- Ideal para aplicaciones web con Flask, Django o Jupyter.
#### Ejemplo:
```python
from bokeh.plotting import figure, show
from bokeh.io import output_notebook

output_notebook()

p = figure(title="Ejemplo Bokeh")
p.line([1, 2, 3], [4, 6, 2], line_width=2)
show(p)

```

NOTA: La buscar backend que haga que funcione en jupyter

# Pyvista

PyVista es una interfaz de alto nivel para VTK (Visualization Toolkit), que permite crear y analizar mallas 3D fácilmente. Es ideal para representar superficies de terrenos (como modelos digitales de elevación o DEMs), simulaciones numéricas, y datos científicos complejos en 3D.
Pyvista permite analizar mallas y crear superficies 3D. En Pyvista, las mallas son información espacialmente referenciada y generalmente consta de representaciones  geométricas de una superficie o volumen en un espacio 3D. Comúnmente nos referimos  a cualquier conjunto de datos con referencia espacial como una malla, por lo que a  menudo la distinción entre una malla, una cuadrícula y un volumen puede volverse  borrosa, pero eso no importa en PyVista.  
### ⚙️ Componentes Principales

- **Mesh**: Objeto principal que representa la geometría (cuadrículas, superficies, volúmenes).
- **Plotter**: Encargado de mostrar los modelos 3D.
- **Filtros**: Permite cortar, extraer, suavizar, combinar geometrías.
#### Principales apuntes:

- Crea superficies 3D a partir de mallas.
- Ideal para modelos de terreno (como archivos `.tif` o `.vtk`).

```python
import pyvista as pv
mesh = pv.Sphere()
plotter = pv.Plotter()
plotter.add_mesh(mesh, color='skyblue')
plotter.show()

```

# Folium 
### 📝 Descripción

Folium permite crear mapas interactivos utilizando Leaflet.js desde Python. Es muy útil para visualizar datos geoespaciales en mapas, incluyendo capas de calor, marcadores, polígonos, y datos provenientes de GeoJSON.
#### Principales apuntes:

- Fácil integración con `GeoJSON` y `Pandas`.
- Admite capas, marcadores, y mapas de calor.
### ⚙️ Componentes Principales
- **Map**: Objeto base para crear el mapa.
- **Marker**: Añade puntos en el mapa.
- **Choropleth**: Para mapas de calor geográficos.
- **TileLayer**: Cambia el estilo del mapa base.

```python
import folium¡
mapa = folium.Map(location=[40.4168, -3.7038], zoom_start=12)
folium.Marker([40.4168, -3.7038], tooltip="Madrid").add_to(mapa)
mapa
```
# Fiona
### 📝 Descripción

Fiona es una librería para la lectura y escritura de archivos GIS (como los usados en QGIS). Trabaja directamente con formatos como Shapefile (.shp) y GeoPackage, y se basa en la biblioteca GDAL.
#### Principales apuntes:

- Usada comúnmente en combinación con `GeoPandas`.
- Soporta QGIS, shapefiles y otros formatos vectoriales.
### ⚙️ Componentes Principales

- Abstracción simple para leer y escribir archivos geoespaciales.
- Compatible con `geopandas`.
```python
import fiona

with fiona.open("path/to/archivo.shp") as src:
    for feature in src:
        print(feature)

```
# Altair

Altair es una librería declarativa de visualización de datos basada en Vega-Lite. Se centra en visualizaciones limpias y bien estructuradas, ideal para análisis exploratorio rápido.
### 📝 Descripción

Altair es una biblioteca declarativa de visualización de datos en Python basada en Vega-Lite. Se destaca por su sintaxis concisa y su capacidad para crear gráficos interactivos con muy poco código.
#### Principales apuntes:

- Declarativa: defines el _qué_, no el _cómo_.
- Integra muy bien con `pandas`.
### ⚙️ Componentes Principales

- **Chart**: Objeto principal para construir visualizaciones.
- **mark_*()**: Funciones para elegir el tipo de gráfico (e.g. `mark_line`, `mark_bar`).
- **encode()**: Método que define los ejes y variables.

```python
import altair as alt
import pandas as pd

data = pd.DataFrame({'x': [1, 2, 3], 'y': [4, 6, 5]})
chart = alt.Chart(data).mark_line().encode(x='x', y='y')
chart

```



![[Pasted image 20250410165403.png]]

Para calcular de volumen de embalse encerrado

Recortar raster 7
programa que
Calcular la red hidrica
se introducian puntos manuales cada x metros 