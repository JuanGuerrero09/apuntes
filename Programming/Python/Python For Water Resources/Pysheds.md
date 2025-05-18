https://github.com/mdbartos/pysheds
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