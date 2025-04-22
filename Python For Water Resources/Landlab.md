![[Pasted image 20250413154859.png]]
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

