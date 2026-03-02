Para abordar con éxito estas dos propuestas del programa Code for Earth del ECMWF, tu investigación y preparación deben centrarse en áreas muy específicas de la ingeniería de software y la hidrología. Basado en las descripciones de los retos y los comentarios de los mentores, aquí tienes un desglose detallado de lo que debes investigar y cómo estructurar tu aprendizaje para cada _stream_.

### Stream 1: Data Visualization (Dashboard Interactivo para Pronósticos de Inundación)

Este reto es fundamentalmente un problema de **ingeniería de datos espaciales y rendimiento frontend**. La meta es lograr que 10,000+ estaciones y capas vectoriales se rendericen de manera fluida (60 FPS) sin bloquear el navegador.

**1. Backend y Manejo de Datos (FastAPI + Zarr)**

- **Estrategias de _Chunking_ en Zarr:** El rendimiento de un dashboard web depende de cómo se leen los datos. Debes investigar cómo optimizar el _chunking_ espacial en Zarr. Para visualización web, los _chunks_ pequeños (100–500 KB) alineados con los tamaños de las teselas del mapa (ej. 256x256) son cruciales para transmitir los datos rápidamente al navegador.
    
- **Lectura Asíncrona con Xarray/FastAPI:** Investiga cómo usar `xarray` con motores asíncronos (`aiohttp` o `fsspec`) dentro de FastAPI para consultar el _datastore_ de Zarr en la nube (AWS S3 o similar) sin bloquear el servidor.
    
- **Vector Tiles (MVT / PMTiles):** Para renderizar la red fluvial y las cuencas sin sobrecargar la red, investiga cómo servir datos geovectoriales utilizando mosaicos vectoriales (Vector Tiles) o el formato PMTiles.
    

**2. Frontend y Renderizado (React + Deck.gl / MapLibre)**

- **Arquitectura Híbrida Deck.gl + MapLibre:** Investiga cómo integrar `react-map-gl` (MapLibre bajo el capó para el mapa base) con `Deck.gl` como capa superpuesta. Deck.gl utiliza WebGL/GPU y está diseñado específicamente para renderizar millones de puntos o geometrías complejas sin problemas de rendimiento.
    
- **Agrupamiento (Clustering) y Simplificación:** Para manejar las 10,000+ estaciones, debes estudiar cómo implementar _clustering_ dependiente del nivel de zoom. MapLibre GL JS tiene funciones nativas para agrupar puntos (`cluster: true`), pero también debes investigar cómo Deck.gl maneja la agregación de datos y las transiciones animadas al hacer zoom.
    
- **Componentes Reutilizables:** Estudia patrones de diseño en React/TypeScript para crear componentes modulares (ej. un componente de gráfica interactiva con `Plotly.js` que se actualice dinámicamente al hacer clic en una estación renderedizada en Deck.gl).
    

---

### Stream 2: Machine Learning (Toolkit de Verificación de Consistencia Física)

Este reto no trata sobre construir un nuevo modelo de ML, sino de **crear herramientas de diagnóstico (MLOps / Quality Control)** para auditar modelos existentes. Los mentores (Kenza, Maliko, Gwyneth) buscan un paquete en Python que identifique cuándo un modelo predice "disparates físicos".

**1. Fundamentos Hidrológicos y Firmas (Signatures)**

- **Firmas Hidrológicas (Hydrological Signatures):** Debes investigar qué son y cómo se calculan. Ejemplos clave incluyen el Índice de Flujo Base (BFI), la pendiente de la curva de duración de caudales (FDC), la respuesta a la estacionalidad (fase y amplitud), y el análisis del comportamiento de la curva de recesión (cómo disminuye el caudal tras una tormenta). Puedes investigar librerías existentes como `hydrosignatures` para entender cómo se implementan matemáticamente en Python.
    
- **Restricciones Físicas Básicas:** Investiga métodos para detectar anomalías obvias: valores de caudal negativos, saltos irrealistas en tiempos de respuesta muy cortos (flashiness), o conservación de masa (el volumen total de escorrentía no puede exceder la precipitación total a largo plazo).
    

**2. Detección de Anomalías y Cambios de Distribución (Drift)**

- **Estadística de Series Temporales:** Como sugirió la mentora Kenza, empieza con baselines estadísticos simples. Investiga pruebas estadísticas para detectar _Distribution Shifts_ (cambios en la distribución) entre los datos históricos de observación y las predicciones operativas. Esto ayuda a detectar si un sensor físico se movió o si el modelo se está degradando.
    
- **Generación de Banderas (Flags) y Reportes:** La mentora Gwyneth mencionó que la salida principal debe ser un sistema de "flags" (banderas). Investiga cómo estructurar la salida de tu código para que devuelva índices de tiempo y ubicación problemáticos, junto con el "tipo de error" (ej. `ERROR_NEGATIVE_FLOW`, `ERROR_IMPLAUSIBLE_RECESSION`).
    

**3. Ingeniería de Software y Ecosistema Científico**

- **Diseño Modular:** Estudia cómo estructurar un paquete Python moderno orientada a objetos usando `xarray` (para datos grillados) y `pandas` (para estaciones puntuales).
    
- **Evaluación de Modelos:** Revisa cómo funcionan otras herramientas de verificación meteorológica como `METplus` o `hydrotools.metrics` para inspirarte en su arquitectura de software.
    

---

### Estrategia para escribir tus Propuestas (Aplicable a ambos)

Basado en el valioso _feedback_ de la mentora en GitHub, tu propuesta para cualquiera de los dos streams **debe estar estructurada obligatoriamente en tres niveles de objetivos**:

1. **Safe Goals (Objetivos Seguros):** Lo que garantizas al 100% que estará terminado y funcional.
    
    - _Ejemplo Stream 1:_ Mapa base con MapLibre, carga estática de las 10,000 estaciones en Deck.gl y gráficas simples con Plotly.
        
    - _Ejemplo Stream 2:_ Paquete Python instalable con tests automatizados que verifique restricciones físicas duras (no negatividad, continuidad) y genere tablas de resumen simples.
        
2. **Stretch Goals (Objetivos Ambiciosos):** Lo que razonablemente puedes lograr si no hay grandes bloqueos técnicos.
    
    - _Ejemplo Stream 1:_ Animación temporal de los pronósticos (time-stepping) a través de las capas de Deck.gl y comparación directa entre múltiples corridas del modelo.
        
    - _Ejemplo Stream 2:_ Implementación de cálculo automático de múltiples firmas hidrológicas complejas (BFI, FDC) y detección estadística de cambios de distribución (drift) en estaciones.
        
3. **Push Goals (Objetivos Óptimos/Ideales):** Lo que harás si todo sale perfecto y terminas rápido.
    
    - _Ejemplo Stream 1:_ Integración de vector tiles nativos para delimitar cuencas río arriba/río abajo de la estación seleccionada.
        
    - _Ejemplo Stream 2:_ Creación de un panel de visualización en Jupyter (notebooks avanzados) interactivo que resalte visualmente con rojo las áreas de la serie temporal donde se activaron los "flags" de error.