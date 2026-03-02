# Inteligencia Artificial Hidrológica: Currículo de Especialización y Guía de Desarrollo Técnico Avanzado 2026

## Resumen Ejecutivo

La hidrología computacional ha experimentado un cambio de paradigma fundamental en la última década, transitando desde modelos conceptuales basados en reglas físicas simplificadas hacia arquitecturas de aprendizaje profundo (Deep Learning) capaces de ingerir volúmenes masivos de datos heterogéneos. Hacia el año 2026, la integración de redes neuronales recurrentes físicamente restringidas, modelos de visión por computador para percepción remota y grandes modelos fundacionales (Foundation Models) geoespaciales define la frontera del conocimiento en la gestión de recursos hídricos. Este documento técnico presenta una hoja de ruta exhaustiva dividida en dos componentes estratégicos: un plan de estudios intensivo de 18 semanas diseñado para elevar a profesionales con competencias básicas de programación a un nivel de experto en Machine Learning (ML) aplicado a la hidrología, y una especificación técnica detallada para seis proyectos "Capstone" que operacionalizan estos conceptos. El objetivo es dotar al practicante no solo de la capacidad de entrenar modelos, sino de diseñar sistemas hidrológicos resilientes, interpretables y escalables que respondan a los desafíos climáticos contemporáneos.

---

# Reporte 1: Syllabus Semanal Detallado - Maestría en Machine Learning para Hidrología (Horizonte 2026)

Este plan de estudios está estructurado para desglosar la complejidad inherente al modelado ambiental moderno. A diferencia de los cursos introductorios de ciencia de datos, este syllabus asume una competencia funcional en Python y se enfoca rigurosamente en las particularidades del dominio hidrológico: la autocorrelación temporal, la heterogeneidad espacial, la necesidad de conservación de masa y la integración de fuentes de datos satelitales multiespectrales.

## Módulo I: Fundamentos de Datos Hidrológicos y Paradigmas de Modelado (Semanas 1-3)

El primer bloque establece la infraestructura intelectual y técnica necesaria. El estudiante debe comprender no solo cómo manipular datos, sino por qué los enfoques tradicionales de modelado (como HBV o SAC-SMA) están siendo complementados o reemplazados por enfoques diferenciables.

### Semana 1: Del Modelado Conceptual al Aprendizaje Diferenciable

La semana inaugural se dedica a la teoría del modelado. Históricamente, la hidrología se basaba en cerrar balances de masa y energía mediante ecuaciones empíricas calibradas manualmente. El aprendizaje profundo introduce el concepto de "sesgo inductivo" (inductive bias), donde la arquitectura de la red se diseña para favorecer soluciones que tengan sentido físico.

**Conceptos Clave:**

- **Evolución Histórica:** Análisis crítico de modelos conceptuales (HBV, SAC-SMA) frente a modelos basados en datos. Discusión sobre el dilema de la equifinalidad en la calibración tradicional versus la generalización en redes neuronales.
    
- **Teoría de Sistemas Dinámicos:** Interpretación de la cuenca como un sistema dinámico de entrada-estado-salida. Comparación entre la memoria de un sistema físico (almacenamiento en suelo/acuífero) y la memoria de una red recurrente (estado de celda).
    
- **El Paradigma de la Diferenciabilidad:** Introducción a la programación diferenciable. Por qué el descenso de gradiente (Backpropagation) permite optimizar parámetros a escalas que la calibración tradicional (ej. SCE-UA) no puede alcanzar.
    

**Recursos y Lecturas:**

- _Paper Fundamental:_ "Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks" (Kratzert et al., 2018).
    
- _Lectura Teórica:_ Capítulos selectos sobre "Differentiable Physics" en el contexto de ciencias de la tierra.
    
- _Tutorial Práctico:_ Configuración del entorno `neuralhydrology` y ejecución de un modelo base de regresión lineal para establecer una línea base de rendimiento.
    

### Semana 2: Ingeniería de Datos Geoespaciales y Series Temporales Masivas

El cuello de botella en el ML hidrológico moderno rara vez es el algoritmo, sino la I/O (Entrada/Salida) de datos. Con datasets que superan los terabytes (como las proyecciones climáticas CMIP6 o reanálisis ERA5), el manejo eficiente de arrays multidimensionales es crítico.

**Conceptos Clave:**

- **Estructuras de Datos Multidimensionales:** Uso avanzado de NetCDF4 y Zarr. Comprensión de "chunks" (fragmentos) y compresión para optimizar la lectura paralela.
    
- **Procesamiento Paralelo en Python:** Implementación de flujos de trabajo con `Xarray` y `Dask`. Cómo realizar operaciones de reducción temporal (ej. de horario a diario) y enmascaramiento espacial sin cargar todo el dataset en la memoria RAM.
    
- **Sincronización Espacio-Temporal:** Alineación de forzamientos meteorológicos (precipitación, temperatura) con datos de caudal observados. Manejo de zonas horarias y agregaciones (suma vs. promedio) críticas en hidrología.
    

**Recursos y Lecturas:**

- _Documentación Técnica:_ Xarray: "Parallel computing with Dask" y guías de optimización de NetCDF.
    
- _Tutorial:_ "Efficient Data Loading for Hydrology" en la documentación de `neuralhydrology`.
    
- _Dataset:_ Descarga y exploración de la estructura de archivos de CAMELS-US. Análisis de la jerarquía de carpetas y metadatos.
    

### Semana 3: Benchmarking y Datasets de Gran Escala (Large-Sample Hydrology)

La hidrología de gran muestra (Large-Sample Hydrology) es el combustible del Deep Learning. Esta semana se centra en la exploración y limpieza de los datasets estándar de oro que permiten el entrenamiento de modelos generalizables.

**Conceptos Clave:**

- **Ecosistema CAMELS:** Estudio comparativo de los datasets CAMELS (US, GB, CL, AUS). Análisis de los atributos estáticos: topografía, geología, cobertura de suelo y climatología. ¿Cómo influyen estos atributos en la respuesta hidrológica?.
    
- **Nuevos Estándares Globales:** Introducción a Caravan y LamaH-CE. Ventajas de los datos estandarizados globalmente frente a los datasets nacionales heterogéneos.
    
- **Limpieza de Datos:** Detección de anomalías en series de caudal. Identificación de periodos con influencia humana (embalses, extracciones) que violan la suposición de "cuenca natural" necesaria para el entrenamiento supervisado básico.
    

**Recursos y Lecturas:**

- _Paper:_ "The CAMELS data set: catchment attributes and meteorology for large-sample studies" (Addor et al., 2017).
    
- _Herramienta:_ Uso de `pandas` avanzado para el perfilado de datos de series temporales (missing values, gaps, outliers).
    
- _Recurso:_ Repositorio de Caravan (Google Research) y sus scripts de preprocesamiento.
    

## Módulo II: Arquitecturas Recurrentes y Modelado de Procesos (Semanas 4-8)

Este módulo constituye el núcleo del aprendizaje profundo en hidrología. Se profundiza en la arquitectura LSTM, que ha demostrado ser el estado del arte para la predicción de lluvia-escorrentía, superando consistentemente a los modelos tradicionales.

### Semana 4: La Arquitectura LSTM y su Analogía Hidrológica

Más allá de ver la LSTM como una "caja negra", se estudia su estructura interna para entender por qué funciona tan bien en hidrología.

**Conceptos Clave:**

- **Anatomía de la Celda LSTM:** Desglose matemático de las puertas (gates): _input gate_ (precipitación efectiva), _forget gate_ (procesos de decaimiento como evapotranspiración/flujo base) y _output gate_ (escorrentía). El estado de celda ($c_t$) como un proxy del almacenamiento de agua en la cuenca.
    
- **Backpropagation Through Time (BPTT):** Desafíos del entrenamiento de secuencias largas (gradientes que se desvanecen/explotan) y cómo la LSTM mitiga esto mediante su "carril rápido" de gradiente en el estado de celda.
    
- **Implementación en PyTorch:** Escritura de una celda LSTM desde cero (sin usar `nn.LSTM`) para comprender el flujo de tensores.
    

**Recursos y Lecturas:**

- _Paper:_ "Understanding LSTM Networks" (Christopher Olah’s Blog) - lectura esencial para la intuición visual.
    
- _Código:_ Implementación de `CudaLSTM` en `neuralhydrology` para eficiencia computacional.
    

### Semana 5: Modelado Regional y Multicuenca (Entity-Aware LSTM)

El salto cualitativo en el rendimiento de los modelos modernos proviene del entrenamiento simultáneo en cientos de cuencas. Esto permite que el modelo aprenda una "hidrología universal".

**Conceptos Clave:**

- **Generalización Espacial:** Entrenamiento de un único modelo en todo el dataset CAMELS-US (671 cuencas). Estrategias de muestreo para balancear cuencas áridas y húmedas durante el entrenamiento.
    
- **Entity-Aware LSTM (EA-LSTM):** Una arquitectura modificada donde los atributos estáticos de la cuenca (geología, suelo) controlan explícitamente las puertas de entrada, modulando la respuesta dinámica. Esto es análogo a parametrizar el modelo físico basándose en las características del terreno.
    
- **Prediction in Ungauged Basins (PUB):** Validación espacial cruzada. Cómo evaluar la capacidad del modelo para predecir en cuencas que no vio durante el entrenamiento.
    

**Recursos y Lecturas:**

- _Paper:_ "Towards learning universal, regional, and local hydrological behaviors via machine learning applied to large-sample datasets" (Kratzert et al., 2019).
    
- _Tutorial:_ Configuración de experimentos multicuenca en `neuralhydrology` usando archivos YAML de configuración.
    

### Semana 6: Funciones de Pérdida y Métricas Específicas del Dominio

El uso del Error Cuadrático Medio (MSE) estándar a menudo no es óptimo para hidrología, donde los picos de flujo son raros pero críticos.

**Conceptos Clave:**

- **Métricas Hidrológicas Diferenciables:** Implementación de la Eficiencia de Nash-Sutcliffe (NSE) y Kling-Gupta Efficiency (KGE) como funciones de pérdida. Análisis de cómo el KGE equilibra correlación, sesgo y variabilidad, evitando la subestimación de picos típica del MSE.
    
- **Funciones de Pérdida Personalizadas:** Diseño de pérdidas que penalizan errores en momentos específicos (ej. picos de crecida) o en rangos específicos de la curva de duración de caudales.
    
- **Evaluación Diagnóstica:** Uso de firmas hidrológicas (hydrological signatures) para evaluar si el modelo acierta por las razones correctas (ej. índice de flujo base, elasticidad de la precipitación).
    

**Recursos y Lecturas:**

- _Paper:_ "Decomposition of the mean squared error and NSE performance criteria: Implications for the hydrological modelling" (Gupta et al., 2009).
    
- _Código:_ Módulo `nh.evaluation.metrics` en la librería `neuralhydrology`.
    

### Semana 7: Física Informada I - Mass-Conserving LSTM (MC-LSTM)

La crítica principal al ML en ciencias físicas es la falta de adherencia a leyes fundamentales. La MC-LSTM responde a esto arquitecturalmente.

**Conceptos Clave:**

- **Arquitectura MC-LSTM:** Rediseño de la LSTM para que el estado de la celda sea una cantidad conservada (masa de agua). Las entradas se suman y las salidas se restan, garantizando por diseño que $\Delta S = P - E - Q$.
    
- **Interpretabilidad Física:** Análisis de los estados internos de la MC-LSTM. Correlación de los "cubos" de memoria de la red con observaciones reales de nieve, humedad del suelo y almacenamiento subterráneo.
    
- **Restricciones Suaves vs. Duras:** Comparación entre añadir un término de penalización en la función de pérdida (restricción suave) vs. diseñar la arquitectura para cumplir la ley física (restricción dura).
    

**Recursos y Lecturas:**

- _Paper:_ "MC-LSTM: Mass-Conserving LSTM" (Hoedt et al., 2021).
    
- _Repositorio:_ `github.com/ml-jku/mc-lstm`.
    

### Semana 8: Física Informada II - Sistemas de Tiempo Continuo (ODE-LSTM)

Los datos hidrológicos reales suelen tener huecos o venir en intervalos irregulares. Los modelos de tiempo continuo abordan esto naturalmente.

**Conceptos Clave:**

- **Neural Ordinary Differential Equations (Neural ODEs):** Concepto de definir la derivada del estado oculto mediante una red neuronal: $\frac{dh}{dt} = NN(h, x)$.
    
- **ODE-LSTM:** Una arquitectura híbrida que usa una LSTM para procesar observaciones cuando llegan y una ODE para evolucionar el estado del sistema en los intervalos sin datos. Ideal para asimilación de datos y manejo de series temporales irregulares.
    
- **Aplicaciones:** Predicción en cuencas con sensores propensos a fallos y fusión de datos de múltiples frecuencias (ej. lluvia horaria + caudal diario).
    

**Recursos y Lecturas:**

- _Paper:_ "Learning Long-Term Dependencies in Irregularly-Sampled Time Series" (Lechner & Hasani, 2020).
    
- _Documentación:_ Clase `ODELSTM` en `neuralhydrology`.
    

## Módulo III: Visión por Computador y Percepción Remota (Semanas 9-12)

La hidrología espacial requiere procesar imágenes satelitales para mapear la extensión de agua. Este módulo transiciona de series temporales 1D a tensores espaciales 3D/4D.

### Semana 9: Fundamentos de Radar de Apertura Sintética (SAR) para Agua

A diferencia de las imágenes ópticas, el radar puede "ver" a través de las nubes, lo cual es vital durante inundaciones.

**Conceptos Clave:**

- **Física del SAR:** Retrodispersión (backscatter). Por qué el agua aparece oscura (reflexión especular) en bandas VV/VH. Desafíos como el viento (rugosidad superficial) y el "shadowing" urbano.
    
- **Preprocesamiento Sentinel-1:** Calibración radiométrica, corrección de terreno (RTC) y filtrado de Speckle (ruido granular). Uso de herramientas como SNAP o librerías Python (`snappy`, `asf_search`).
    
- **Datasets de Entrenamiento:** Exploración profunda de Sen1Floods11 y WorldFloods. Entendiendo las etiquetas: "Weakly labeled" (generadas por algoritmos) vs "Hand labeled" (curadas por humanos).
    

**Recursos y Lecturas:**

- _Dataset:_ Documentación de Sen1Floods11 y WorldFloods v2.
    

### Semana 10: Segmentación Semántica con U-Net

La arquitectura U-Net es el estándar para la segmentación de imágenes biomédicas y geoespaciales.

**Conceptos Clave:**

- **Arquitectura Encoder-Decoder:** El camino de contracción (captura de contexto) y el camino de expansión (localización precisa). El rol crucial de las _skip connections_ para recuperar detalles espaciales perdidos en el _pooling_.
    
- **Entrenamiento desde Cero:** Implementación paso a paso de los bloques convolucionales en PyTorch. Manejo de tensores de entrada multicanal (ej. 2 canales SAR + 1 canal DEM).
    
- **Data Loaders Espaciales:** Estrategias para cortar imágenes satelitales grandes en "chips" (ej. 256x256 o 512x512) y reconstruir la predicción final (stitching).
    

**Recursos y Lecturas:**

- _Paper:_ "U-Net: Convolutional Networks for Biomedical Image Segmentation" (Ronneberger et al., 2015).
    
- _Tutorial:_ "Semantic segmentation with U-Net implementation from scratch" (YouTube/GitHub resources).
    

### Semana 11: Estrategias de Entrenamiento y Aumentación

El entrenamiento efectivo de modelos de visión requiere técnicas robustas para evitar el sobreajuste y manejar el desbalance de clases (mucha tierra, poca agua).

**Conceptos Clave:**

- **Data Augmentation Geoespacial:** Rotaciones, espejos, y transformaciones elásticas. Por qué algunas aumentaciones ópticas (cambios de color) no aplican a datos SAR.
    
- **Funciones de Pérdida para Segmentación:** Cross-Entropy ponderada vs. Dice Loss vs. Lovász-Softmax Loss. Cómo optimizar directamente la métrica IoU (Intersection over Union).
    
- **Transfer Learning:** Uso de codificadores pre-entrenados (ej. ResNet en ImageNet) como backbone para la U-Net. Ventajas y desventajas al aplicar pesos de fotos naturales a imágenes de radar.
    

**Recursos y Lecturas:**

- _Paper:_ "The Lovász-Softmax loss: A tractable surrogate for the optimization of the intersection-over-union measure" (Berman et al., 2018).
    

### Semana 12: Evaluación de Modelos Espaciales

La evaluación de mapas de inundación requiere métricas que penalicen tanto la omisión (no detectar riesgo) como la comisión (falsas alarmas).

**Conceptos Clave:**

- **Métricas de Píxel vs. Objeto:** IoU, F1-Score, Precision, Recall. Análisis de matrices de confusión.
    
- **Validación Cruzada Espacial:** Por qué no se deben mezclar chips adyacentes en train/test (fuga de datos espacial). Estrategias de división por eventos de inundación o regiones geográficas distintas.
    
- **Benchmark Sen1Floods11:** Comparación de resultados del modelo propio con el estado del arte publicado en el paper del dataset.
    

## Módulo IV: Arquitecturas Avanzadas y Modelos Fundacionales (Semanas 13-15)

Hacia 2026, el campo se mueve hacia modelos pre-entrenados masivos y arquitecturas que modelan relaciones complejas no lineales en el espacio y el tiempo.

### Semana 13: Transformadores (Transformers) para Series Temporales

¿Pueden los mecanismos de atención reemplazar a las recurrencias en hidrología?

**Conceptos Clave:**

- **Mecanismo de Atención:** Self-attention aplicado a secuencias temporales meteorológicas. Ventajas en paralelización frente a LSTMs.
    
- **Transformer vs. LSTM en Hidrología:** Discusión sobre por qué los Transformers a veces luchan con la naturaleza continua de los procesos hidrológicos y cómo las codificaciones posicionales (positional encodings) afectan la generalización temporal.
    
- **Temporal Fusion Transformers (TFT):** Arquitecturas híbridas diseñadas específicamente para predicción multi-horizonte interpretable.
    

**Recursos y Lecturas:**

- _Paper:_ "Attention Is All You Need" (Vaswani et al., 2017) - lectura fundamental.
    
- _Implementación:_ Clase `Transformer` en `neuralhydrology`.
    

### Semana 14: Graph Neural Networks (GNN) para Enrutamiento

Las cuencas no son entidades aisladas; están conectadas por ríos. Las GNNs permiten modelar esta topología explícitamente.

**Conceptos Clave:**

- **Grafos Hidrológicos:** Representación de subcuencas como nodos y tramos de río como aristas dirigidas. Matriz de adyacencia derivada del Modelo Digital de Elevación (DEM).
    
- **Message Passing:** Cómo la información del agua (caudal) se propaga de nodos aguas arriba a nodos aguas abajo mediante capas convolucionales de grafos (GCN, GAT).
    
- **Modelos Híbridos LSTM-GNN:** Uso de LSTMs para generar escorrentía local en cada nodo y GNNs para enrutar ese flujo a través de la red. Mejoras significativas en cuencas grandes y complejas como el Danubio.
    

**Recursos y Lecturas:**

- _Paper:_ "A GNN Routing Module Is All You Need for LSTM Rainfall–Runoff Models" (Mosaffa et al., 2025).
    
- _Librería:_ `PyTorch Geometric` (PyG).
    

### Semana 15: Foundation Models Geoespaciales (Prithvi & Beyond)

El uso de modelos "pre-entrenados una vez, aplicados en todas partes".

**Conceptos Clave:**

- **Arquitectura Prithvi (NASA/IBM):** ViT (Vision Transformer) temporal pre-entrenado con Masked Autoencoders (MAE) en el dataset HLS (Harmonized Landsat Sentinel). Capacidad de aprender representaciones robustas sin etiquetas.
    
- **Fine-Tuning para Downstream Tasks:** Estrategias para adaptar un modelo fundacional a tareas específicas (segmentación de inundaciones, clasificación de cultivos) con pocos datos etiquetados (Few-Shot Learning).
    
- **Herramientas de Ajuste:** Uso de `TerraTorch` y librerías de Hugging Face para gestionar el ciclo de vida del fine-tuning.
    

**Recursos y Lecturas:**

- _Repositorio:_ `ibm-nasa-geospatial/Prithvi-EO-1.0-100M` en Hugging Face.
    
- _Tutorial:_ Fine-tuning Prithvi para Sen1Floods11.
    

## Módulo V: Incertidumbre, Operaciones y Ética (Semanas 16-18)

La transición del laboratorio al mundo real. Cómo construir sistemas en los que se pueda confiar para emitir alertas de evacuación.

### Semana 16: Cuantificación de Incertidumbre

Una predicción puntual no es suficiente para la gestión de riesgos. Se necesita saber "qué tan seguro" está el modelo.

**Conceptos Clave:**

- **Incertidumbre Aleatoria vs. Epistémica:** Ruido en los datos vs. falta de conocimiento del modelo.
    
- **Técnicas Probabilísticas:** Mixture Density Networks (MDN) para predecir distribuciones complejas. Deep Ensembles (entrenar n modelos con diferentes inicializaciones) como el estándar de oro actual para robustez.
    
- **Conformal Prediction:** Métodos post-hoc para garantizar que el intervalo de confianza contenga el valor real con una probabilidad definida (ej. 95%) sin importar la distribución subyacente.
    

**Recursos y Lecturas:**

- _Paper:_ "Global prediction of extreme floods in ungauged watersheds" (Nearing et al., 2024, Nature) - Análisis de la incertidumbre en el sistema de Google.
    

### Semana 17: MLOps para Hidrología Operacional

Ingeniería de software para mantener modelos vivos.

**Conceptos Clave:**

- **Pipeline Automatizado:** Orquestación de descarga de datos meteorológicos en tiempo real (GFS, ECMWF), preprocesamiento, inferencia y post-procesamiento.
    
- **Data Assimilation (DA) con ML:** Técnicas para corregir el estado del modelo en tiempo real cuando llegan nuevas observaciones de caudal. Uso de LSTMs para aprender la corrección de errores (Error Correction Models).
    
- **Control de Versiones y Experimentos:** Uso de `MLflow` para trackear métricas y `DVC` (Data Version Control) para versionar grandes datasets hidrológicos.
    

### Semana 18: Ética, Sesgo y el Futuro de la IA Hídrica

Reflexión final sobre el impacto social.

**Conceptos Clave:**

- **Equidad en la Predicción:** ¿Funcionan los modelos igual de bien en el Sur Global que en Europa/EE.UU.? El problema de la falta de datos en regiones vulnerables y cómo la IA puede exacerbar o mitigar esto (ej. Google Flood Hub).
    
- **Transparencia Algorítmica:** La importancia de la explicabilidad (XAI) para ganar la confianza de los hidrólogos operativos y las autoridades de protección civil.
    
- **Proyecto Final:** Presentación conceptual de los Capstone Projects.
    

---

# Reporte 2: Guía Técnica de Capstone Projects (Desarrollo Avanzado en PyTorch)

Esta guía proporciona las especificaciones técnicas para la implementación de seis proyectos de fin de máster. Estos proyectos están diseñados para ser desarrollados en un entorno de investigación profesional, priorizando la reproducibilidad, la modularidad del código y el rigor científico.

**Prerrequisitos Técnicos Transversales:**

- **Lenguaje:** Python 3.10+.
    
- **Framework Principal:** PyTorch 2.x.
    
- **Gestión de Entornos:** `conda` o `uv` (recomendado por `neuralhydrology` ).
    
- **Control de Versiones:** Git + GitHub.
    
- **Hardware:** GPU NVIDIA con soporte CUDA (mínimo 8GB VRAM recomendado).
    

---

## Proyecto 1: Predicción Generalizada en Cuencas No Aforadas (PUB)

Este proyecto replica y extiende la metodología que permitió a los modelos de Deep Learning superar a los modelos físicos en la tarea de regionalización. El objetivo es entrenar un modelo que pueda predecir el caudal en una cuenca donde nunca ha sido entrenado, basándose únicamente en sus características físicas y forzamientos meteorológicos.

### Planteamiento del Problema

En hidrología, la mayoría de las cuencas del mundo no tienen sensores de caudal (no aforadas). Los métodos tradicionales calibran parámetros en cuencas vecinas y los transfieren, lo cual suele ser impreciso. Las redes neuronales, al aprender de cientos de cuencas simultáneamente, pueden aprender una función de mapeo universal $f(meteorología, atributos\_estáticos) \rightarrow caudal$.

### Stack Tecnológico

- **Core:** `neuralhydrology` (librería basada en PyTorch).
    
- **Datos:** CAMELS-US (descargado de NCAR/UCAR).
    
- **Configuración:** YAML para gestión de experimentos.
    

### Pasos de Desarrollo

1. **Preparación de Datos:**
    
    - Descargar el dataset CAMELS-US (`basin_timeseries_v1p2_metForcing_obsFlow.zip` y atributos).
        
    - Organizar la estructura de carpetas según lo requiere `neuralhydrology`: carpeta raíz con subcarpetas `usgs_streamflow`, `basin_mean_forcing`, `camels_attributes_v2.0`.
        
    - Generar un archivo de lista de cuencas (`531_basins.txt`) excluyendo aquellas con grandes errores de balance de masa.
        
2. **Configuración del Experimento (YAML):**
    
    - Definir `model: cudalstm`.
        
    - Configurar `statics_embedding`: Esto es crucial. El modelo debe recibir los atributos estáticos (area, elevación, arcilla, arena, etc.) mapeados a un espacio latente que luego se concatena con las entradas dinámicas o modula las puertas de la LSTM.
        
    - Definir el modo de validación: `validation_option: spatial_kfold_cross_validation`. Esto asegura que el modelo se pruebe en cuencas _distintas_ a las de entrenamiento, simulando el escenario PUB real.
        
3. **Entrenamiento:**
    
    - Ejecutar `nh-run train --config_file config.yml`.
        
    - El sistema entrenará automáticamente $k$ modelos (uno por cada fold).
        
4. **Evaluación:**
    
    - Usar `nh-run evaluate` para generar predicciones.
        
    - Analizar las métricas acumuladas. Comparar el NSE mediano en las cuencas de prueba contra un benchmark calibrado tradicionalmente (si está disponible en literatura) o contra una LSTM local.
        

### Estructura de Archivos del Repositorio

/pub-project

├── data/

│ └── CAMELS_US/ (en.gitignore)

├── configs/

│ ├── pub_basin_kfold.yml

│ └── attributes.yml

├── notebooks/

│ ├── 01_data_exploration.ipynb

│ └── 02_results_analysis.ipynb

└── README.md

### Métricas de Evaluación

- **NSE (Nash-Sutcliffe Efficiency):** Primaria. Mediana sobre todas las cuencas de prueba. Objetivo: NSE > 0.7.
    
- **KGE (Kling-Gupta Efficiency):** Para evaluar sesgo y variabilidad.
    
- **FHV/FLV:** Firmas hidrológicas para evaluar el rendimiento en picos (High Flows) y estiaje (Low Flows).
    

---

## Proyecto 2: Implementación de Física Informada (MC-LSTM)

Este proyecto implementa una arquitectura personalizada en PyTorch que respeta explícitamente la ley de conservación de masa. Es un desafío de ingeniería de software y teoría de redes neuronales.

### Planteamiento del Problema

Las LSTMs estándar pueden "crear" o "destruir" agua arbitrariamente porque no tienen restricciones físicas. En aplicaciones sensibles (ej. gestión de sequías a largo plazo), esto es inaceptable. La MC-LSTM (Mass-Conserving LSTM) modifica la estructura interna de la celda para que actúe como un sistema de tanques físicos acoplados.

### Stack Tecnológico

- **Core:** PyTorch (implementación pura de `nn.Module`).
    
- **Referencia:** Código del paper Hoedt et al. (2021).
    
- **Datos:** Subconjunto de CAMELS-US (ej. cuencas de alta montaña).
    

### Pasos de Desarrollo

1. **Diseño de la Celda MC-LSTM:**
    
    - Crear una clase `MCLSTMCell(nn.Module)`.
        
    - En lugar de la actualización de celda estándar, implementar la lógica de redistribución de masa:
        
        - Entrada $x_t$ (precipitación) se distribuye en los estados de memoria $c_t$ (tanques) usando una puerta normalizada (softmax).
            
        - Salida $o_t$ (caudal) se extrae de los tanques usando una matriz de redistribución estocástica conservativa.
            
        - Asegurar que la suma de flujos de salida $\le$ masa almacenada.
            
2. **Integración en Modelo Temporal:**
    
    - Encapsular la celda en una capa recurrente que itere sobre la dimensión temporal.
        
    - Asegurar que el estado inicial $c_0$ sea inicializable (o aprendido).
        
3. **Entrenamiento Híbrido:**
    
    - Entrenar comparativamente una LSTM estándar y una MC-LSTM en las mismas cuencas.
        
    - Visualizar los estados internos $c_t$ de la MC-LSTM y superponerlos con datos reales de SWE (Snow Water Equivalent) de productos como SNODAS (si disponibles) para validar la interpretabilidad física.
        

### Estructura de Archivos

/mc-lstm-physics

├── src/

│ ├── layers.py # Clase MCLSTMCell

│ ├── models.py # Modelo completo (Encoder + Head)

│ └── dataset.py # Custom Dataset para cargar tensores

├── train.py # Bucle de entrenamiento manual

└── notebooks/

└── interpretability_viz.ipynb

### Métricas de Evaluación

- **Balance de Masa:** Error acumulado de volumen ($\sum Q_{sim} / \sum P_{obs}$). La MC-LSTM debe tener un error de balance estructuralmente nulo o controlado.
    
- **NSE:** Rendimiento predictivo general.
    
- **Correlación de Estados:** Coeficiente de Pearson entre el estado de celda "nieve" del modelo y los datos satelitales de nieve.
    

---

## Proyecto 3: Segmentación de Inundaciones Sentinel-1 (U-Net)

Desarrollo de un sistema de visión por computador para generar mapas de inundación binarios a partir de imágenes de radar SAR, superando las limitaciones de nubosidad de los sensores ópticos.

### Planteamiento del Problema

Durante huracanes y tifones, las nubes bloquean la visión óptica. El radar Sentinel-1 penetra las nubes, pero interpretar sus imágenes es difícil debido al ruido (speckle) y ambigüedades geométricas. Se busca entrenar una U-Net que aprenda a segmentar agua inundada usando datos etiquetados manualmente y débilmente supervisados.

### Stack Tecnológico

- **Framework:** PyTorch + `torchvision` o `segmentation_models_pytorch`.
    
- **Datos:** Sen1Floods11 (v1.1).
    
- **Librerías:** `rasterio` para lectura de GeoTIFFs, `albumentations` para data augmentation.
    

### Pasos de Desarrollo

1. **Ingestión de Datos:**
    
    - Descargar el dataset Sen1Floods11. Separar en splits `train`, `val`, `test` predefinidos.
        
    - Crear un `FloodDataset(Dataset)` en PyTorch que cargue pares de imágenes (Canales VV, VH) y máscaras (Label).
        
    - Normalizar los datos SAR (generalmente en dB) a un rango o estandarizar (media 0, desviación 1).
        
2. **Arquitectura U-Net:**
    
    - Implementar una U-Net estándar o usar una librería.
        
    - Modificar la capa de entrada para aceptar 2 canales (VV, VH) en lugar de los 3 RGB típicos.
        
    - La capa de salida debe tener 1 canal con activación Sigmoid (para clasificación binaria agua/no-agua).
        
3. **Función de Pérdida Robusta:**
    
    - Implementar una pérdida combinada: $Loss = \alpha \cdot BCE + \beta \cdot Dice$. La Binary Cross Entropy (BCE) ayuda con la convergencia inicial, y la Dice Loss optimiza directamente el solapamiento de formas (IoU), vital para objetos irregulares como inundaciones.
        
4. **Entrenamiento y Aumentación:**
    
    - Aplicar rotaciones aleatorias, volteos y recortes durante el entrenamiento para evitar sobreajuste, dado que el dataset de etiquetas manuales es pequeño (446 chips).
        

### Estructura de Archivos

/sar-flood-unet

├── data/

│ ├── train/

│ └── test/

├── src/

│ ├── unet_model.py

│ ├── loss.py # DiceLoss, LovaszLoss

│ └── utils.py # Funciones de métricas

├── train_segmentation.py

└── inference.py

### Métricas de Evaluación

- **IoU (Intersection over Union) de la clase Agua:** La métrica estándar industrial. $IoU = TP / (TP + FP + FN)$.
    
- **F1-Score:** Media armónica de precisión y recall.
    
- **Generalización:** Evaluar el rendimiento en el set de test "Bolivia" vs otros eventos para medir la capacidad de generalización geográfica.
    

---

## Proyecto 4: Fine-Tuning de Modelos Fundacionales (Prithvi)

Aplicación de Transfer Learning utilizando el modelo fundacional geoespacial de NASA/IBM para mejorar la detección de inundaciones con pocos datos de entrenamiento.

### Planteamiento del Problema

Entrenar modelos desde cero requiere miles de imágenes. Los Foundation Models pre-entrenados en petabytes de datos satelitales aprenden texturas y características universales. Este proyecto ajusta el modelo Prithvi-100M para la tarea de segmentación de inundaciones.

### Stack Tecnológico

- **Framework:** `TerraTorch` (librería de fine-tuning geoespacial sobre PyTorch Lightning).
    
- **Modelo Base:** `Prithvi-EO-1.0-100M` (Hugging Face).
    
- **Datos:** Sen1Floods11 (subset óptico Sentinel-2) o WorldFloods.
    

### Pasos de Desarrollo

1. **Setup del Entorno:**
    
    - Instalar `terratorch` y descargar los pesos del modelo pre-entrenado.
        
    - Configurar el archivo YAML de experimento (`prithvi_finetune.yaml`).
        
2. **Adaptación del Modelo:**
    
    - Prithvi es un Masked Autoencoder (MAE) basado en Vision Transformer (ViT). Se debe añadir una "cabeza" de decodificación (ej. UperNet o FCN) compatible con la salida del encoder ViT.
        
    - Congelar (Freeze) los pesos del backbone (encoder) y entrenar solo el decoder inicialmente.
        
    - Descongelar (Unfreeze) todo el modelo y realizar un ajuste fino con una tasa de aprendizaje muy baja (ej. 1e-5).
        
3. **Comparativa:**
    
    - Comparar el rendimiento de Prithvi (fine-tuned) contra una U-Net entrenada desde cero con la misma cantidad reducida de datos (ej. solo el 10% del dataset). Demostrar la eficiencia de datos del transfer learning.
        

### Estructura de Archivos

/prithvi-flood

├── configs/

│ └── sen1floods_prithvi.yaml

├── src/

│ └── data_module.py # Adaptador para cargar datos en formato HLS

├── weights/

│ └── Prithvi_100M.pt

└── train_terratorch.py

### Métricas de Evaluación

- **mIoU (Mean IoU):** Comparativa contra baseline.
    
- **Eficiencia de Muestras:** Curva de rendimiento (IoU) vs. Número de imágenes de entrenamiento.
    

---

## Proyecto 5: Graph Neural Networks (GNN) para Enrutamiento Fluvial

Modelado explícito de la conectividad de la cuenca para mejorar la predicción en puntos aguas abajo.

### Planteamiento del Problema

Las LSTMs predicen bien la generación de escorrentía local, pero no saben cómo viaja el agua río abajo. En cuencas grandes, el tiempo de viaje es variable. Una GNN puede tomar las salidas de múltiples LSTMs (nodos) y pasar esa información a través de la red del río (aristas) para acumular el caudal correctamente.

### Stack Tecnológico

- **Framework:** PyTorch Geometric (PyG).
    
- **Datos:** LamaH-CE (Dataset de cuencas grandes en Europa Central) o similar que incluya topología.
    

### Pasos de Desarrollo

1. **Construcción del Grafo:**
    
    - Usar los shapefiles de la red fluvial para construir la matriz de adyacencia ($A$).
        
    - Cada subcuenca es un nodo. Si la cuenca $i$ desagua en la $j$, existe una arista $i \rightarrow j$.
        
    - Generar atributos de arista (distancia, pendiente).
        
2. **Modelo Híbrido:**
    
    - **Nivel 1 (Generación):** Una LSTM procesa la meteorología de cada subcuenca independientemente para producir un vector latente $h_i$ (escorrentía potencial).
        
    - **Nivel 2 (Enrutamiento):** Una capa GAT (Graph Attention Network) o GCN actualiza el estado de cada nodo sumando las contribuciones ponderadas de los vecinos aguas arriba: $h'_j = \text{Agg}(\{h_i | i \in \text{upstream}(j)\})$.
        
3. **Entrenamiento End-to-End:**
    
    - Entrenar todo el sistema minimizando el error en las estaciones de aforo disponibles en el grafo.
        

### Estructura de Archivos

/gnn-routing

├── data/

│ └── graph_topology.json

├── src/

│ ├── graph_builder.py

│ └── gnn_models.py # Define LSTM_GNN class

└── train_graph.py

### Métricas de Evaluación

- **Mejora Espacial:** Comparar el NSE en estaciones "Headwater" (aguas arriba, donde la LSTM sola funciona bien) vs estaciones "Outlet" (aguas abajo, donde la GNN debería dominar).
    
- **Lag Time Accuracy:** Precisión en el tiempo pico de la crecida.
    

---

## Proyecto 6: Sistema Operacional de Alerta de Crecidas (Flood Hub Mockup)

Integración de modelos, incertidumbre y despliegue en un prototipo de sistema de alerta temprana.

### Planteamiento del Problema

Un modelo en un notebook no salva vidas. Se requiere un sistema que ingeste pronósticos meteorológicos reales (ej. GFS), ejecute el modelo, cuantifique la incertidumbre y genere alertas.

### Stack Tecnológico

- **Modelado:** Ensemble de LSTMs (PyTorch).
    
- **Backend:** Python script automatizado.
    
- **Datos en Tiempo Real:** API de USGS NWIS (caudal) y Open-Meteo (pronóstico lluvia).
    

### Pasos de Desarrollo

1. **Entrenamiento de Ensemble:**
    
    - Entrenar 5-10 instancias de una LSTM con diferentes semillas aleatorias ("Deep Ensemble"). Esto permite medir la incertidumbre epistémica (varianza entre modelos).
        
2. **Pipeline de Inferencia:**
    
    - Script que descarga el pronóstico de lluvia de los próximos 7 días.
        
    - Ejecuta los 10 modelos.
        
    - Calcula la media (predicción) y los percentiles 10/90 (intervalo de confianza).
        
3. **Corrección de Sesgo (Data Assimilation Simple):**
    
    - Comparar la predicción de "ayer" con la observación de "hoy".
        
    - Ajustar la predicción futura restando el error reciente (error bias correction) o actualizando el estado de la LSTM.
        
4. **Dashboard (Opcional):**
    
    - Generar un reporte JSON o un gráfico estático simple mostrando el "Hidrograma de Pronóstico" con su banda de incertidumbre.
        

### Estructura de Archivos

/operational-flood-system

├── models/

│ └── ensemble_weights/

├── scripts/

│ ├── fetch_realtime_data.py

│ ├── run_forecast.py

│ └── postprocess_uncertainty.py

└── dashboard/

### Métricas de Evaluación

- **Reliability (Confiabilidad):** ¿El 90% de las observaciones reales caen dentro del intervalo de confianza del 90% predicho?
    
- **CRPS (Continuous Ranked Probability Score):** Métrica estándar para evaluar pronósticos probabilísticos.
    
- **Latencia del Sistema:** Tiempo total desde la descarga de datos hasta la generación de la alerta.