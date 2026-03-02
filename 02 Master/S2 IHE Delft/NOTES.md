# Integración Avanzada de Aprendizaje Profundo en Hidráulica Computacional: Marco Integral para la Actualización Curricular y el Desarrollo de Proyectos de Investigación

La intersección entre la hidráulica computacional clásica y el aprendizaje profundo científico (Scientific Machine Learning, SciML) representa uno de los avances más transformadores en la ingeniería de recursos hídricos de la última década. Tradicionalmente, la modelación de flujos en canales abiertos, redes de tuberías y llanuras de inundación se ha basado en la resolución numérica determinista de ecuaciones diferenciales parciales (EDP), específicamente las ecuaciones de Navier-Stokes y sus simplificaciones, como las ecuaciones de Saint-Venant (aguas someras). Si bien métodos como el Volumen Finito (FVM) o las Diferencias Finitas (FDM) garantizan la conservación de masa y momento con alta fidelidad física, su costo computacional escala drásticamente con la resolución espacial y temporal, limitando su aplicabilidad en sistemas de alerta temprana en tiempo real o en análisis de incertidumbre que requieren miles de simulaciones de Monte Carlo.

El presente reporte establece las bases teóricas, metodológicas y prácticas para actualizar el currículo académico y los proyectos de investigación en hidráulica computacional. Se propone una transición desde la enseñanza exclusiva de solucionadores numéricos tradicionales hacia un enfoque híbrido que integre Redes Neuronales Informadas por la Física (PINNs), Operadores Neuronales de Fourier (FNO) y Redes Neuronales de Grafos (GNN). Este enfoque no solo acelera los tiempos de cómputo en órdenes de magnitud de hasta $10^5$ veces, sino que permite abordar problemas inversos y asimilar datos de sensores dispersos de manera más eficiente que los métodos de optimización convencionales. A continuación, se detalla el estado del arte de estas tecnologías, su aplicación específica en CFD hidráulico, ecuaciones de Saint-Venant y redes de tuberías, culminando en una propuesta curricular detallada y especificaciones de proyectos avanzados.

## Fundamentos Teóricos: De la Discretización Numérica al Aprendizaje de Operadores

Para comprender la necesidad de integrar el aprendizaje profundo en el syllabus, es imperativo analizar primero las limitaciones intrínsecas de los métodos numéricos actuales y cómo las nuevas arquitecturas neuronales ofrecen soluciones matemáticas alternativas.

### Las Ecuaciones de Saint-Venant y la Barrera Computacional

El núcleo de la modelación hidráulica en ríos y llanuras de inundación reside en las ecuaciones de Saint-Venant (SVE). En su forma bidimensional conservativa, estas ecuaciones describen la evolución de la profundidad del agua $h$ y los flujos unitarios $q_x = hu$ y $q_y = hv$:

$$\frac{\partial h}{\partial t} + \frac{\partial (hu)}{\partial x} + \frac{\partial (hv)}{\partial y} = 0$$

$$\frac{\partial (hu)}{\partial t} + \frac{\partial}{\partial x} \left( hu^2 + \frac{1}{2}gh^2 \right) + \frac{\partial (huv)}{\partial y} = -gh \frac{\partial z_b}{\partial x} - \frac{\tau_{bx}}{\rho}$$

Donde $z_b$ representa la topografía del lecho y $\tau_{bx}$ el esfuerzo cortante en el fondo, típicamente parametrizado mediante el coeficiente de rugosidad de Manning $n$. La resolución numérica de este sistema hiperbólico requiere esquemas sofisticados, como los solucionadores de Riemann (e.g., Roe, HLLC), para capturar discontinuidades como ondas de choque o frentes secos sin generar oscilaciones espurias. Sin embargo, la condición de estabilidad de Courant-Friedrichs-Lewy (CFL) impone restricciones severas en el paso de tiempo ($\Delta t$) en función del tamaño de la malla ($\Delta x$), lo que resulta en tiempos de ejecución prohibitivos para dominios grandes con alta resolución.

El aprendizaje profundo aborda este cuello de botella mediante dos paradigmas principales: los solucionadores neuronales directos (como las PINNs) que resuelven una instancia específica de la EDP sin malla, y los operadores neuronales (como FNO) que aprenden la solución completa en un espacio funcional infinito, permitiendo una inferencia casi instantánea independiente de la resolución de entrenamiento.

### Redes Neuronales Informadas por la Física (PINNs) en Hidráulica 1D y 2D

Las PINNs representan un cambio fundamental en la forma de resolver problemas hidráulicos. En lugar de discretizar el dominio, una PINN aproxima las variables de estado (e.g., profundidad $h$ y velocidad $u$) mediante una red neuronal profunda $N(x, t; \theta)$ parametrizada por pesos $\theta$. La "física" se impone no a través de la estructura de la red, sino a través de la función de pérdida (loss function), que penaliza los residuos de las ecuaciones diferenciales gobernantes.

Para las ecuaciones de Saint-Venant, la función de pérdida total $\mathcal{L}$ se compone de tres términos:

$$\mathcal{L} = \lambda_{pde} \mathcal{L}_{PDE} + \lambda_{bc} \mathcal{L}_{BC} + \lambda_{ic} \mathcal{L}_{IC} + \lambda_{data} \mathcal{L}_{Data}$$

Donde $\mathcal{L}_{PDE}$ es el residuo cuadrático medio de las ecuaciones de conservación de masa y momento, calculado mediante Diferenciación Automática (AD) en puntos de colocaicón aleatorios dentro del dominio. $\mathcal{L}_{BC}$ y $\mathcal{L}_{IC}$ aseguran el cumplimiento de las condiciones de contorno e iniciales, respectivamente. La capacidad de incluir un término de datos $\mathcal{L}_{Data}$ permite a las PINNs funcionar como algoritmos de asimilación de datos, fusionando mediciones dispersas de sensores con la física teórica para corregir errores de modelación.

Estudios recientes han demostrado que las PINNs estándar pueden tener dificultades con la naturaleza hiperbólica de las ecuaciones de aguas someras, especialmente en la captura de ondas de choque abruptas. Para mitigar esto, se han propuesto arquitecturas mejoradas que integran mecanismos de atención y células de memoria a largo plazo (LSTM) dentro de la estructura de la PINN, lo que permite capturar mejor las dependencias temporales y las discontinuidades espaciales sin los efectos de suavizado excesivo típicos de las redes totalmente conectadas. Además, la implementación de condiciones de contorno periódicas mediante incrustaciones de características de Fourier (Fourier feature embeddings) ha demostrado ser crucial para simular la propagación de ondas de marea en estuarios, superando a las interpolaciones lineales tradicionales en la resolución de la topografía a sub-escala.

### Operadores Neuronales de Fourier (FNO) para Predicción de Inundaciones

Mientras que las PINNs son excelentes para resolver una configuración física específica o problemas inversos, su reentrenamiento para cada nueva condición inicial es costoso. Los Operadores Neuronales de Fourier (FNO) ofrecen una solución a este problema al aprender el mapeo entre espacios funcionales. En el contexto de la predicción de inundaciones, un FNO aprende a mapear la función de entrada (e.g., el hietograma de precipitación o la topografía inicial) a la función de salida (e.g., mapas de profundidad máxima de inundación).

La arquitectura de un FNO se basa en la convolución espectral. La entrada se transforma al dominio de la frecuencia mediante una Transformada Rápida de Fourier (FFT), donde se aplica una transformación lineal aprendida (multiplicación de pesos complejos) que filtra o amplifica modos específicos, antes de regresar al dominio espacial mediante una Transformada Inversa (IFFT). Matemáticamente, esto se aproxima a una integral de convolución que es invariante a la discretización:

$$(K_\phi v)(x) = \mathcal{F}^{-1}(R_\phi \cdot \mathcal{F}(v))(x)$$

Esta propiedad de invarianza de resolución es crítica para la hidráulica computacional moderna. Permite entrenar el modelo con simulaciones de malla gruesa (bajo costo computacional) y luego evaluar o inferir resultados en mallas mucho más finas ("Zero-Shot Super-Resolution") para capturar detalles locales como calles inundadas o infraestructura crítica. Investigaciones recientes aplicadas en Houston y Berlín han demostrado que los FNO superan a las arquitecturas clásicas de visión por computadora, como U-Net, en precisión y capacidad de generalización, manteniendo una alta predictibilidad para tiempos de antelación de hasta 3 horas. Además, técnicas emergentes como los Operadores Neuronales Informados por la Física (PINO) combinan la eficiencia de datos de los FNO con las restricciones físicas estrictas de las PINNs, permitiendo el entrenamiento con menos datos simulados y garantizando una mayor consistencia hidrodinámica.

## Redes Neuronales de Grafos (GNN) en Sistemas de Drenaje Urbano

Los sistemas de alcantarillado y distribución de agua potable presentan una topología intrínsecamente irregular que no se adapta bien a las cuadrículas de píxeles utilizadas por las CNNs o los FNOs. Estos sistemas se modelan naturalmente como grafos $G = (V, E)$, donde los nodos $V$ representan pozos de registro, conexiones o tanques, y las aristas $E$ representan las tuberías o canales. Las Redes Neuronales de Grafos (GNN) han emergido como la arquitectura dominante para crear modelos sustitutos (surrogates) de simuladores hidráulicos como SWMM (Storm Water Management Model).

### Mecanismos de Paso de Mensajes y Restricciones Hidráulicas

En una GNN aplicada a hidráulica, la propagación del flujo de agua se emula mediante el algoritmo de "paso de mensajes" (message passing). En cada capa de la red, un nodo actualiza su estado oculto (que podría representar la presión o el nivel del agua) agregando información de sus vecinos inmediatos. Esto es análogo a cómo la ecuación de continuidad se resuelve en un nodo, balanceando los caudales de entrada y salida.

$$h_v^{(k)} = \sigma \left( W \cdot \text{AGGREGATE}(\{h_u^{(k-1)} : u \in \mathcal{N}(v)\}) \right)$$

Para capturar la dinámica temporal de las tormentas, se utilizan arquitecturas híbridas espaciotemporales como GCN-LSTM o Graph-WaveNet. Estas redes utilizan capas convolucionales de grafos para extraer características espaciales de la topología de la red y capas recurrentes (LSTM o GRU) o convoluciones temporales dilatadas para modelar la evolución temporal de la lluvia y el escurrimiento.

Un desafío crítico en el entrenamiento de estos modelos sustitutos es la acumulación de errores en predicciones de largo plazo (e.g., predecir el estado del sistema 6 horas en el futuro de forma autorregresiva). Para mitigar esto, se emplea el "truco de empuje hacia adelante" (pushforward trick) durante el entrenamiento, que estabiliza el modelo exponiéndolo a sus propias predicciones ruidosas durante la fase de aprendizaje, mejorando su robustez en inferencia. Además, los modelos más avanzados, como el GNN-SWS, integran restricciones guiadas por la física directamente en la arquitectura o la función de pérdida para asegurar que las predicciones cumplan con el balance de masa en los nodos y detecten correctamente los desbordamientos (inundaciones en nodos).

## Tecnologías de Implementación: De PySWMM a NVIDIA Modulus

La actualización del syllabus requiere no solo teoría, sino también competencia en las herramientas de software que habilitan estos flujos de trabajo avanzados.

### Automatización y Generación de Datos con PySWMM

Para entrenar modelos de aprendizaje profundo robustos, se requieren conjuntos de datos masivos que abarquen una amplia variabilidad de eventos de lluvia y condiciones del sistema. SWMM, el estándar de la industria, carece de una interfaz nativa para la generación masiva de datos. Aquí es donde PySWMM se vuelve indispensable. PySWMM es un "wrapper" de Python para la API de C de SWMM que permite interactuar con la simulación paso a paso.

El uso avanzado de PySWMM para Machine Learning implica:

1. **Paralelización de Simulaciones:** Dado que el motor de SWMM no es seguro para hilos (thread-safe), se deben implementar scripts que utilicen el módulo `multiprocessing` de Python para lanzar múltiples instancias independientes del modelo en paralelo, gestionadas a través de colas de trabajos. Esto permite reducir el tiempo de generación de datasets sintéticos de semanas a días.
    
2. **Control en Tiempo Real:** PySWMM permite inyectar flujos o modificar la configuración de bombas y vertederos durante la simulación (`sim.step_advance()`). Esta capacidad es fundamental para entrenar agentes de Aprendizaje por Refuerzo (Deep Reinforcement Learning) para el control óptimo de infraestructuras en tiempo real.
    
3. **Extracción Eficiente de Resultados:** Herramientas complementarias como `swmmio` facilitan la extracción de la topología de la red y las series temporales de resultados en formatos amigables para la ciencia de datos (Pandas, GeoPandas), eliminando la necesidad de analizar manualmente archivos de salida binarios complejos.
    

### Simulación a Escala Industrial con NVIDIA Modulus

Para problemas de CFD de alta fidelidad y modelación de inundaciones a gran escala, NVIDIA Modulus (parte del ecosistema NVIDIA Earth-2 y PhysicsNeMo) proporciona un marco optimizado para entrenar PINNs y Operadores Neuronales. Modulus abstrae la complejidad de la definición de geometrías mediante Geometría Sólida Constructiva (CSG) y permite definir condiciones de contorno complejas mediante una sintaxis declarativa en Python.

Una característica clave de Modulus es su capacidad para el entrenamiento multi-GPU, esencial para modelos FNO de alta resolución que consumen mucha memoria. Además, se integra con el concepto de Gemelos Digitales (Digital Twins), permitiendo la asimilación de datos de teledetección, como imágenes SAR de Sentinel-1, para validar y corregir las predicciones de inundación en tiempo casi real. El uso de imágenes SAR permite detectar la extensión del agua incluso a través de la cobertura nubosa, proporcionando una "verdad terreno" crucial para calibrar los modelos neuronales.

## Propuesta de Actualización del Syllabus

A continuación se presenta una estructura curricular detallada, diseñada para dotar a los estudiantes de las competencias teóricas y prácticas necesarias para liderar esta transición tecnológica.

### Módulo 1: Fundamentos Avanzados de Hidráulica Computacional (Semanas 1-3)

**Objetivo:** Consolidar el conocimiento de las ecuaciones gobernantes y los métodos numéricos clásicos como base comparativa.

- **Semana 1: Ecuaciones de Conservación.** Derivación rigurosa de Navier-Stokes y reducción a Saint-Venant 1D/2D. Análisis de valores propios y características hiperbólicas. Importancia de los términos fuente (pendiente, fricción).
    
- **Semana 2: Métodos Numéricos Tradicionales.** Esquemas de Volúmenes Finitos (FVM). El problema de Riemann y solucionadores aproximados (Roe, HLL). Criterio CFL y estabilidad numérica. Manejo de frentes secos y mojados.
    
- **Semana 3: Modelación de Redes Urbanas.** Teoría de grafos aplicada a redes. Ecuaciones de flujo en tuberías presurizadas vs. superficie libre. Introducción a SWMM y su motor de cálculo.
    

### Módulo 2: Aprendizaje Profundo Científico (SciML) y PINNs (Semanas 4-7)

**Objetivo:** Introducir el paradigma de solución de EDPs mediante optimización neuronal.

- **Semana 4: Redes Neuronales y Diferenciación Automática.** Perceptrón Multicapa (MLP). Backpropagation y grafos computacionales. Diferenciación Automática (AD) vs. Diferenciación Numérica.
    
- **Semana 5: Física en la Función de Pérdida (PINNs).** Formulación de residuos de EDP como pérdidas. Imposición de condiciones de contorno (Dura vs. Suave). Uso de DeepXDE para resolver la ecuación de onda y Saint-Venant 1D.
    
- **Semana 6: Problemas Inversos y Asimilación de Datos.** Estimación de parámetros desconocidos (coeficiente de Manning $n$) a partir de observaciones sintéticas. Regularización física en problemas mal planteados.
    
- **Semana 7: Arquitecturas Avanzadas para Hidráulica.** Incorporación de mecanismos de Atención y LSTM en PINNs para mejorar la captura de ondas de choque y dependencias temporales largas.
    

### Módulo 3: Operadores Neuronales y Modelado Sustituto (Semanas 8-10)

**Objetivo:** Escalar soluciones a dominios complejos y tiempo real mediante aprendizaje de operadores.

- **Semana 8: Convoluciones y U-Net.** Limitaciones de las CNNs en mallas irregulares. Arquitecturas U-Net para mapeo de inundaciones imagen-a-imagen.
    
- **Semana 9: Operadores Neuronales de Fourier (FNO).** Teoría espectral. Capas de Fourier 1D y 2D. Invarianza de resolución y super-resolución "Zero-Shot". Implementación en PyTorch/Modulus.
    
- **Semana 10: Physics-Informed Neural Operators (PINO).** Hibridación de datos y física. Entrenamiento de operadores con restricciones de EDP para reducir la dependencia de grandes datasets.
    

### Módulo 4: Inteligencia Artificial en Grafos para Redes de Agua (Semanas 11-13)

**Objetivo:** Modelar la topología compleja de infraestructuras urbanas.

- **Semana 11: Fundamentos de GNNs.** Representación de datos no euclidianos. Matrices de adyacencia y características de nodos/aristas. Algoritmos de Message Passing.
    
- **Semana 12: Modelado Espaciotemporal (GCN-LSTM).** Integración de series temporales de lluvia en grafos dinámicos. Predicción de desbordamientos combinados de alcantarillado (CSO).
    
- **Semana 13: Automatización con PySWMM.** Scripting avanzado. Generación de datasets paralelos. Extracción de topologías con `swmmio`.
    

### Módulo 5: Aplicaciones Avanzadas y Futuro (Semanas 14-15)

**Objetivo:** Integración de tecnologías emergentes y despliegue.

- **Semana 14: Gemelos Digitales y NVIDIA Earth-2.** Plataformas de simulación a escala planetaria. Uso de modelos pre-entrenados para diagnósticos de precipitación.
    
- **Semana 15: Validación con Teledetección.** Procesamiento de imágenes SAR (Sentinel-1) para validación de modelos de inundación. Fusión de datos satelitales y modelos hidráulicos.
    

## Actualización de Proyectos: Especificaciones Técnicas

Los proyectos se han rediseñado para exigir la implementación de estas tecnologías avanzadas, asegurando que los estudiantes adquieran experiencia práctica con las herramientas de vanguardia.

### Proyecto 1: Solucionador Neuronal de Ondas de Choque (Saint-Venant 1D)

**Descripción:** Desarrollar una PINN capaz de resolver el problema de rotura de presa (Dam Break) modelado por las ecuaciones de Saint-Venant 1D, capturando correctamente la onda de choque y la onda de rarefacción.

- **Requisitos Técnicos:**
    
    - Implementar el sistema de ecuaciones SVE en forma conservativa utilizando **DeepXDE**.
        
    - Comparar dos arquitecturas: una PINN estándar (Fully Connected) y una PINN mejorada con mecanismos de atención o LSTM para evaluar la mejora en las discontinuidades.
        
    - **Entregable:** Un notebook de Jupyter que demuestre la convergencia de la pérdida, gráficos de $h(x,t)$ y $u(x,t)$ comparados con la solución analítica de Ritter o Stoker, y un análisis de error $L_2$.
        

### Proyecto 2: Modelo Sustituto de Inundación Urbana con Super-Resolución (FNO)

**Descripción:** Crear un modelo FNO que prediga mapas de profundidad de inundación máxima en un entorno urbano, entrenado con simulaciones de baja resolución e inferido en alta resolución.

- **Metodología:**
    
    - Utilizar un simulador numérico (e.g., LISFLOOD-FP o una versión simplificada en Python) para generar 100-200 pares de.
        
    - Entrenar un **Fourier Neural Operator (FNO)** usando PyTorch o NVIDIA Modulus en una malla de $64 \times 64$.
        
    - Evaluar el modelo en una malla de $256 \times 256$ (Zero-Shot Super-Resolution) y comparar con la simulación numérica de referencia en alta resolución.
        
    - **Análisis:** Cuantificar el factor de aceleración (speed-up) y la precisión métrica (NSE, RMSE).
        

### Proyecto 3: Predicción de Desbordamientos en Redes de Alcantarillado con GNN y PySWMM

**Descripción:** Implementar un sistema de alerta temprana para una red de drenaje urbano utilizando una Red Neuronal de Grafos Espaciotemporal.

- **Flujo de Trabajo:**
    
    - **Generación de Datos:** Escribir un script en Python utilizando **PySWMM** y `multiprocessing` para simular 1 año de eventos de lluvia sintéticos sobre una red de prueba (e.g., EPA SWMM Example 1 modificada), guardando los resultados de profundidad en nodos y flujo en tuberías.
        
    - **Preprocesamiento:** Construir el grafo de la red (matriz de adyacencia) y las matrices de características de nodos (profundidad, elevación) y aristas (geometría, rugosidad) usando `swmmio`.
        
    - **Entrenamiento:** Entrenar un modelo **GNN-LSTM** o **Graph-WaveNet** (usando PyTorch Geometric) para predecir el estado hidráulico con un horizonte de 60 minutos. Implementar el "pushforward trick" para estabilizar las predicciones a largo plazo.
        
    - **Validación:** Evaluar la capacidad del modelo para clasificar nodos como "inundados" vs. "seguros" y visualizar la propagación del error en el tiempo.
        

## Análisis Comparativo de Tecnologías y Herramientas

Para guiar la selección de herramientas en los proyectos, se presenta la siguiente tabla comparativa basada en la literatura reciente:

|**Tecnología**|**Tipo de Dominio**|**Ventaja Principal**|**Desventaja Principal**|**Herramienta Recomendada**|**Aplicación Ideal**|
|---|---|---|---|---|---|
|**PINNs**|Continuo (sin malla)|No requiere datos de entrenamiento externos; alta fidelidad física|Costo de entrenamiento alto por instancia; dificultad con choques fuertes|**DeepXDE**|Problemas inversos; flujo en tuberías simples; 1D SVE|
|**FNO**|Malla (Grid)|Invarianza de resolución; inferencia extremadamente rápida ($10^5$x)|Requiere gran dataset de entrenamiento; limitado a geometrías rectangulares|**NVIDIA Modulus**|Mapas de inundación regional; flujo en medios porosos 2D|
|**GNN**|Grafo (Red)|Maneja topologías irregulares y no euclidianas nativamente|Complejidad en la definición de mensajes; costo de memoria en grafos gigantes|**PyTorch Geometric**|Redes de alcantarillado; redes de distribución de agua|
|**PySWMM**|Discreto (Nodos/Links)|Estándar industrial; simulación física exacta|Lento para tiempo real; no diferenciable|**PySWMM / swmmio**|Generación de "Ground Truth"; validación de GNNs|

## Conclusión y Perspectivas Futuras

La integración del aprendizaje profundo en la hidráulica computacional no es una mera curiosidad académica, sino una necesidad imperiosa ante la demanda de sistemas de gestión hídrica resilientes y en tiempo real. La capacidad de las arquitecturas neuronales, como los FNOs y las GNNs, para emular la física de fluidos con aceleraciones masivas permite concebir Gemelos Digitales probabilísticos que antes eran computacionalmente inviables. Al adoptar este nuevo syllabus y ejecutar proyectos que combinan la rigurosidad de las ecuaciones de conservación (SVE) con la flexibilidad de la inteligencia artificial, se prepara a una nueva generación de ingenieros capaces de abordar los desafíos climáticos extremos con herramientas de vanguardia. La validación continua mediante datos satelitales (SAR) y la física embebida en los modelos (PINO/Physics-Guided GNN) serán los pilares de la confianza en estos nuevos sistemas.