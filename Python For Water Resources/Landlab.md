![[Pasted image 20250413154859.png]]
# Syllabus
- Guía: https://landlab.csdms.io/tutorials/index.html
## Introduction to the Landlab Grid and Fields

## 🧠 **¿Qué es Landlab y qué hace al crear un grid?**
Landlab es una librería Python para modelar procesos en paisajes (como erosión, escorrentía, etc.) usando mallas estructuradas (raster) y no estructuradas (hexágonos, Voronoi, etc.).

---

## 🔷 **Tipos de grid que puedes crear**

- `RasterModelGrid`: celdas cuadradas o rectangulares.
- `HexModelGrid`: celdas hexagonales.
- `VoronoiDelaunayGrid`: celdas basadas en triangulación aleatoria.

```python
import numpy as np
from landlab import HexModelGrid, RasterModelGrid, VoronoiDelaunayGrid

smg = RasterModelGrid(
    (3, 4), 1.0
)  # a square-cell raster, 3 rows x 4 columns, unit spacing
rmg = RasterModelGrid((3, 4), xy_spacing=(1.0, 2.0))  # a rectangular-cell raster
hmg = HexModelGrid(shape=(3, 4))
# ^a hexagonal grid with 3 rows, 4 columns from the base row, & node spacing of 1.

x = np.random.rand(100) * 100.0
y = np.random.rand(100) * 100.0

vmg = VoronoiDelaunayGrid(x, y)

# ^a Voronoi-cell grid with 100 randomly positioned nodes within a 100.x100. square
```



---

## 🔗 **Elementos fundamentales en un grid**

- **Nodos (`nodes`)**: donde defines valores escalares (ej. elevación).
- **Links**: conectan nodos, útiles para flujos.
- **Parches (`patches`)**: celdas con forma.
- **Caras (`faces`)** y **esquinas (`corners`)**: delimitan la geometría.

> 🧩 Landlab usa el nodo como elemento principal, así que siempre hay más nodos que esquinas, más links que caras, etc.

---

## 🧭 **Topología y orientación**

- El nodo 0 está en la esquina inferior izquierda.
- Las orientaciones siguen convención matemática: **sentido antihorario desde el Este**.
- Los links tienen dirección: horizontales → Este, verticales → Norte.

---

## 📦 **Datos en Landlab**

- Los valores (elevación, pendiente, etc.) se almacenan como arrays 1D:


```python
grid.add_zeros("elevation", at="node")  # crea un campo de elevación grid.at_node["elevation"]
```
- Puedes también definir campos en links:

python

CopiarEditar

`grid.add_ones("slope", at="link") grid.at_link["slope"]`

- Puedes usar `.x_of_node`, `.y_of_node`, etc. para conocer coordenadas.
    

---

## 🔁 **Conectividad entre elementos**

- Puedes saber qué links están conectados a cada nodo:
    

python

CopiarEditar

`grid.links_at_node[5]  # [EAST, NORTH, WEST, SOUTH]`

- O qué nodos forman cada patch:
    

python

CopiarEditar

`grid.nodes_at_patch`

- Relación uno a uno:
    

python

CopiarEditar

`grid.node_at_cell grid.cell_at_node`

---

## 🚧 **Condiciones de frontera**

- Los nodos pueden ser:
    
    - `core`: interiores.
        
    - `fixed`: valor fijo.
        
    - `closed`: no permite flujo.
        
- Links pueden ser activos, inactivos, o fijos.
    

Ejemplo para cerrar los nodos de borde inferior:

python

CopiarEditar

`grid.status_at_node[grid.nodes_at_bottom_edge] = grid.BC_NODE_IS_CLOSED`

---

## ✅ **Resumen Express**

|Concepto|Qué es|
|---|---|
|Grid|Malla de celdas que representa el terreno|
|Nodo|Punto donde defines variables (elevación)|
|Link|Conecta nodos, útil para flujos|
|Patch|Área entre nodos, una celda|
|Campos|Arrays 1D de valores ligados a elementos|
|Topología|Todo está ordenado y numerado|
|Condiciones BC|Controlas bordes cerrados, fijos, etc.|
¡Genial! Vamos paso a paso. Primero te doy un **ejemplo práctico con elevación y flujo**, y luego te preparo una **visualización animada** para ver cómo evoluciona.

---

## 🌄 Ejemplo práctico: Elevación + Flujo superficial

Este ejemplo usa `RasterModelGrid`, define una elevación con una pequeña pendiente, agrega lluvia, y simula el flujo superficial con Landlab.

### 🔧 Requisitos

```bash
pip install landlab matplotlib
```

---

### 🧪 Código completo con comentarios

```python
import numpy as np
import matplotlib.pyplot as plt
from landlab import RasterModelGrid
from landlab.components import FlowAccumulator, OverlandFlow
from landlab.plot import imshow_grid

# 1. Crear el grid
grid = RasterModelGrid((20, 20), xy_spacing=10.0)
z = grid.add_zeros("topographic__elevation", at="node")

# 2. Crear una pendiente suave de oeste a este
np.random.seed(42)
z += grid.x_of_node / 100 + np.random.rand(len(z)) * 0.01

# 3. Cerrar bordes excepto la salida (parte derecha)
grid.set_closed_boundaries_at_grid_edges(True, True, False, True)

# 4. Añadir campos para el agua superficial
h = grid.add_zeros("surface_water__depth", at="node")

# 5. Inicializar componentes
fa = FlowAccumulator(grid)
of = OverlandFlow(grid, steep_slopes=True)

# 6. Simulación temporal
dt = 1.0  # s
rain_intensity = 1e-7  # m/s
run_time = 300.0  # s
elapsed_time = 0.0

while elapsed_time < run_time:
    fa.run_one_step()  # Actualiza el flujo
    of.rainfall_intensity = rain_intensity
    of.run_one_step(dt=dt)  # Simula flujo superficial
    elapsed_time += dt

# 7. Visualización final
plt.figure(figsize=(10, 4))
plt.subplot(1, 2, 1)
imshow_grid(grid, "topographic__elevation", cmap="terrain")
plt.title("Elevación")

plt.subplot(1, 2, 2)
imshow_grid(grid, "surface_water__depth", cmap="Blues")
plt.title("Profundidad del agua")
plt.tight_layout()
plt.show()
```

---

## 🔄 Visualización animada

Puedo generarte una animación que muestre cómo **evoluciona la profundidad del agua** en el tiempo. Solo una cosa rápida:

👉 ¿Quieres que lo genere ahora como video (GIF o MP4) aquí mismo? ¿O prefieres que te dé el código para que lo corras localmente?

También dime si quieres añadir otros efectos como:

- flujo acumulado (áreas de escorrentía),
    
- velocidad del flujo,
    
- comparación con otra condición (por ejemplo, sin pendiente o sin lluvia).
    

Perfecto 👇 Aquí tienes un **script completo en Python** que genera una **animación de la evolución del flujo superficial** usando `matplotlib.animation`, y además incluye:

- ✅ Elevación (topografía)
    
- ✅ Profundidad del agua
    
- ✅ Flujo acumulado (drainage area)
    
- ✅ Velocidad del flujo
    

---

## 🐍 Código completo con animación

```python
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from landlab import RasterModelGrid
from landlab.components import FlowAccumulator, OverlandFlow
from landlab.plot import imshow_grid

# --- 1. Crear el grid y topografía ---
grid = RasterModelGrid((20, 20), xy_spacing=10.0)
z = grid.add_zeros("topographic__elevation", at="node")
np.random.seed(42)
z += grid.x_of_node / 100 + np.random.rand(len(z)) * 0.01  # pendiente y ruido

grid.set_closed_boundaries_at_grid_edges(True, True, False, True)

# --- 2. Añadir campos iniciales ---
h = grid.add_zeros("surface_water__depth", at="node")
fa = FlowAccumulator(grid)
of = OverlandFlow(grid, steep_slopes=True)

# --- 3. Parámetros de simulación ---
dt = 1.0  # segundos
run_time = 300  # total
n_steps = int(run_time // dt)
rain_intensity = 1e-7  # m/s

# --- 4. Preparar datos para la animación ---
frames = []
titles = []

for step in range(n_steps):
    fa.run_one_step()  # actualiza flow direction y drainage area
    of.rainfall_intensity = rain_intensity
    of.run_one_step(dt=dt)

    if step % 5 == 0:  # guardar cada 5 pasos
        frame_data = {
            "depth": grid["node"]["surface_water__depth"].copy(),
            "area": grid["node"]["drainage_area"].copy(),
            "velocity": grid["link"]["surface_water__discharge"].copy()
        }
        frames.append(frame_data)
        titles.append(f"t = {step * dt:.0f} s")

# --- 5. Animación ---
fig, axs = plt.subplots(1, 3, figsize=(15, 5))
c1 = axs[0].imshow(np.zeros(grid.shape), cmap="Blues", vmin=0, vmax=0.02)
c2 = axs[1].imshow(np.zeros(grid.shape), cmap="viridis")
c3 = axs[2].imshow(np.zeros(grid.shape), cmap="Reds", vmin=0, vmax=0.01)

axs[0].set_title("Profundidad del agua")
axs[1].set_title("Área de drenaje")
axs[2].set_title("Velocidad del flujo")

def update(i):
    data = frames[i]
    depth = grid.node_vector_to_raster(data["depth"])
    area = grid.node_vector_to_raster(data["area"])
    vel = grid.map_link_vector_to_grid(data["velocity"], convert_to_node=False)
    
    c1.set_data(depth)
    c2.set_data(np.log10(area + 1e-10))  # log para visualización
    c3.set_data(vel.reshape(grid.shape))

    fig.suptitle(titles[i])

ani = animation.FuncAnimation(fig, update, frames=len(frames), interval=100)
plt.tight_layout()
plt.show()
```

---

## ✅ Resultado

Cuando corras el script:

- Verás una **animación** con tres subgráficos:
    
    - 💧 _Profundidad del agua superficial_
        
    - 🌊 _Área de drenaje acumulada_
        
    - 🌀 _Velocidad del flujo superficial_
        

---

### ⚙️ ¿Quieres guardar el video?

Puedes añadir estas líneas al final si quieres guardar la animación:

```python
ani.save("flujo_superficial.mp4", fps=10, dpi=150)
```

---

¿Te gustaría que adapte este código para un DEM real, o con entrada de embalse? También puedo ayudarte a combinar esto con datos reales en formato GeoTIFF o ASCII Grid.





## Working with Digital Elevtion Models (DEMs)
## Plotting
## Boundary conditions
## Introduction to Components
## Advanced Grid and Fields: Gradients, Flux-Divergence, Mapping



# Introduction Model
#dem 
# Grid
# Components
# Utilities


# Interesting
- Check priority_flood_flow_router

## ¿Qué hacen `DepressionFinderAndRouter` y `FillDepressions`?

### 🔹 `FillDepressions`

- **¿Qué hace?** Rellena depresiones cerradas (sumideros) en el modelo de elevación para asegurar que el flujo superficial pueda continuar hasta un borde o un outlet.
    
- **¿Por qué es necesario?** En muchos DEMs reales hay errores o microdepresiones que detienen el flujo simulado (¡pero no en la realidad!). Si no las rellenas, los flujos se quedan atascados y no se puede acumular correctamente el agua.
```python
from landlab.components import FillDepressions
fd = FillDepressions(mg)
fd.run_one_step()
```
### `DepressionFinderAndRouter` (más avanzado)

- **¿Qué hace?** Encuentra depresiones y calcula cómo se llenan e interconectan al subir el nivel del agua. Es más realista si modelas inundaciones o llenado progresivo.
    
- **¿Cuándo usarlo?** Si tu objetivo es simular embalses o lagos, es más apropiado que `FillDepressions`.
    

```python
from landlab.components import DepressionFinderAndRouter 
dfr = DepressionFinderAndRouter(mg) 
dfr.run_one_step()`
```


📌 _Para delinear cuencas, normalmente `FillDepressions` basta._ Usa `DepressionFinderAndRouter` si después vas a simular llenado de embalses o inundaciones.
## ¿Para qué sirve `FlowAccumulator`?

- Calcula cómo fluye el agua en cada celda hacia abajo, y hacia qué nodo receptor fluye.
- Genera campos como:
    - `"flow__receiver_node"` → hacia dónde fluye cada celda
    - `"drainage_area"` → cuánta área drena hacia cada nodo

🔧 Es la base para **identificar cuencas y calcular acumulación de flujo**.

## ¿Cómo defino un `outlet_node_id` si no tengo uno?

Como tú bien dices, **puedes elegir un punto con coordenadas** (X, Y), y convertirlo a un nodo con esta función:


```python
def get_node_from_coords(mg, x, y):
"""Convierte coordenadas reales a un nodo de Landlab."""     return mg.node_at_point((x, y))`
```

## Añadimos función `delineate_basin_from_coords`

Aquí está el código que puedes incluir en tu script. Acepta coordenadas y te da la máscara de la cuenca:


```python

def delineate_basin_from_coords(mg, x, y):
	"""Delinea la cuenca aguas arriba desde una coordenada (x, y)."""     
	from landlab.components import FlowAccumulator, FillDepressions # Rellenar depresiones y calcular flujo
    FillDepressions(mg).run_one_step()
    FlowAccumulator(mg).run_one_step()      
    # Convertir coordenadas a nodo     
    outlet_node = mg.node_at_point((x, y))      
    # Delinear cuenca desde el nodo outlet     
    receivers = mg.at_node["flow__receiver_node"]     
    stack = [outlet_node]     
    visited = set()      
	while stack:
		node = stack.pop()         
		if node not in visited:             
			visited.add(node)             
			donors = np.where(receivers == node)[0]
			stack.extend(donors)      
	basin_nodes = np.array(list(visited))     
	mask = np.zeros(mg.number_of_nodes, dtype=bool)     mask[basin_nodes] = True     	return mask`
```
## ¿Cómo visualizar esa cuenca?

python

CopiarEditar

`mask = delineate_basin_from_coords(mg, x=3000, y=1500) imshow_grid(mg, mask, at="node", cmap="Blues")`

