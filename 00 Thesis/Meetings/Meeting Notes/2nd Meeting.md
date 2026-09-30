Aquí tienes las notas actualizadas con los enlaces incorporados y la nueva sección de **Guía de Ejecución y Pasos a Seguir**, donde también respondo a tu pregunta sobre AIFS y Foundry.


### Summary:

**Conceptos Generales y Foundation Models (FMs)**

  

- **Problema de la escasez de datos:** Tradicionalmente se entrenan cientos de modelos individuales con miles de parámetros, reinventando la rueda en lugares sin datos (ej. remote sensing).
    
      
    
- **Solución (Enfoque Kratzert / FMs):** Utilizar un gran modelo base (con más de 670 parámetros) que ya esté calibrado y contenga información sobre procesos para que todos puedan usarlo.
    
      
    
- **Valor agregado de los FMs:** Aurora, por ejemplo, cubre toda la parte atmosférica y meteorológica. El objetivo es integrarle la parte hidrológica; al hacerlo, el modelo será mucho más preciso y útil (ej. predicción de inundaciones).
    
      
    

**Estrategia de Modelado y Pruebas Iniciales**

  

- **Iteración 1 (_Out-of-the-box_):** Descargar los datos y correr Aurora (o un modelo simple como Cronos de _baseline_) tal cual viene, **sin hacer _fine-tuning_ inicial**. El objetivo es evaluar la resolución, la grilla (_grid_) y cómo funciona de base.
    
      
    
- **Iteración 2 (_Fine-tuning_ futuro):** A partir de la base, especializar el modelo para problemas específicos (tipo GPT especializado) o introducir un modelo LSTM más complejo (mencionado en la presentación de Alden).
    
      
    
- **Plataformas de desarrollo:** Usar Google Colab para las primeras iteraciones (la inferencia de estos modelos toma ~5 min).
    
      
    

**Modelos a Evaluar: Aurora 1.5 vs AIFS**

  

- **Aurora 1.5:** Tiene mejor resolución y es multiescala. Se sugiere correrlo en la nube mediante _Microsoft Foundry_ (que regala $200 en créditos) para familiarizarse con el sistema sin saturar equipos locales.
    
      
    
- **AIFS (ECMWF's AI forecasting model):** Es open source. Se sugiere probarlo localmente (resolución de 30x30 km, mejor que Aurora 1) o a través de ZeroGPU en HuggingFace. Si el hardware local o Microsoft fallan, se le pedirá a Corzo acceso a los GPUs de SURFsara. La prioridad inmediata es concentrarse en AIFS.
    
      
    

**Datos y Casos de Estudio**

  

- **Caravan:** Se puede usar el dataset Caravan cronológico inicial (Caravan 2 sale en unas semanas con más validación).
    
      
    
- **Caso de Estudio:** Definir una región específica de estudio **después de octubre**.
    
      
    
- **Meta de Aprendizaje:** Lograr correr un pronóstico en tiempo real para el río Magdalena en Colombia (definiendo su posición) probando AIFS y Aurora, enfocándose por ahora en parámetros meteorológicos.
    
      
    
- **Datos históricos:** Para pronósticos del pasado, buscar datasets en `dynamical.org` (ECMWF AIFS Single forecast) o usar HuggingFace ("run forecast" permite correr cualquier fecha/chunks).
    
      
    

**Preguntas Planteadas en la Reunión:**

  

- _¿Hacerlo local con un Foundation Model vale la pena o no vale la pena?_
    
      
    
- _¿Qué región o área de interés usar para el modelo?_ (M. Luisa)
    
      
    
- _¿Qué le interesa puntualmente al ECMWF?_ (Gerald)
    
      
    
- _¿Algún sitio específico de interés que opines para enfocar los datos de Caravan?_
    
      
    

### To-do:

- [ ] Revisar y probar AIFS desde HuggingFace (ZeroGPU o en local). **(Prioridad principal)**
    
      
    
- [ ] Correr Aurora 1.5 usando el catálogo de Microsoft Foundry.
    
      
    
- [ ] Identificar si hay problemas de ejecución con los modelos y plantear soluciones.
    
      
    
- [ ] Revisar parámetros meteorológicos generados por los modelos.
    
      
    
- [ ] Explorar `dynamical.org` para buscar datasets de pronósticos pasados (si funciona para un proveedor, funciona para todos).
    
      
    
- [ ] _Condicional:_ Si hay limitaciones de equipo (ej. no funciona Microsoft), hablar con Corzo para obtener acceso a SURFsara para correr AIFS.
    
      
    
- [ ] **Próxima Reunión:** Miércoles, 9 de octubre a las 3:00 PM. (Presentar resultados del experimento web o de las corridas logradas).
    
      
    

### Important Links:

- **Microsoft Aurora (GitHub):** [https://github.com/microsoft/aurora](https://github.com/microsoft/aurora?utm_source=gemini)
    
      
    
- **Microsoft Foundry - Catálogo Aurora 1.5:** [https://ai.azure.com/catalog/models/Aurora-1.5](https://ai.azure.com/catalog/models/Aurora-1.5?utm_source=gemini)
    
      
    
- **Research Blog Aurora 1.5:** [https://www.microsoft.com/en-us/research/blog/aurora-1-5-extending-open-foundation-models-for-weather-and-earth-system-applications/](https://www.microsoft.com/en-us/research/blog/aurora-1-5-extending-open-foundation-models-for-weather-and-earth-system-applications/?msockid=13fb3d9ca9dd623611042adba82c6361&utm_source=gemini)
    
      
    
- **Guía HuggingFace para correr AIFS:** [https://huggingface.co/blog/hugging-science/run-aifs-yourself](https://huggingface.co/blog/hugging-science/run-aifs-yourself?utm_source=gemini)
    
      
    
- **Datasets Históricos AIFS (Dynamical):** [https://dynamical.org/catalog/ecmwf-aifs-single-forecast/](https://dynamical.org/catalog/ecmwf-aifs-single-forecast/?utm_source=gemini)
    
      
    

### Guía de Ejecución y Pasos a Seguir:

**¿Se puede correr AIFS en Foundry?**

**No directamente como un modelo de "un clic".** Microsoft Foundry (Azure AI Studio) tiene en su catálogo modelos preconfigurados (MaaS - Model as a Service) como Aurora, Llama, Phi, etc. AIFS, desarrollado por ECMWF, no está nativamente en este catálogo.

_Sin embargo_, podrías utilizar tus $200 de crédito de Foundry/Azure para crear una **Máquina Virtual (VM) con GPU en Azure**. Una vez que tengas esa máquina virtual corriendo, te conectarías a ella por SSH y descargarías el código de AIFS (desde HuggingFace o GitHub) para correrlo. Pero es un proceso de infraestructura manual, no una inferencia directa desde el catálogo.

  

**Pasos recomendados (Cronograma para las próximas 2 semanas):**

  

**Paso 1: Prioridad AIFS vía HuggingFace / Colab (Más rápido)**

  

1. **Plataforma:** HuggingFace Spaces / Google Colab.
    
      
    
2. **Acción:** Abre la guía [Run AIFS yourself](https://huggingface.co/blog/hugging-science/run-aifs-yourself?utm_source=gemini).
    
      
    
3. **Ejecución:** Sigue el tutorial para hacer una inferencia _out-of-the-box_. Si usas Colab, asegúrate de activar el entorno de GPU (T4 gratuita debería alcanzar para resoluciones bajas).
    
      
    
4. **Objetivo:** Lograr configurar las coordenadas (bounding box) para el Río Magdalena en Colombia y visualizar un parámetro meteorológico (ej. precipitación o temperatura).
    
      
    

**Paso 2: Explorar Aurora 1.5 vía Microsoft Foundry**

  

1. **Plataforma:** Microsoft Azure AI Studio / Foundry.
    
      
    
2. **Acción:** Ingresa al enlace [Aurora-1.5 Model Catalog](https://ai.azure.com/catalog/models/Aurora-1.5?utm_source=gemini) usando una cuenta con los créditos disponibles.
    
      
    
3. **Ejecución:** Usa los _endpoints_ de prueba que ofrece Foundry o el código de inferencia en Python que te proporcionan ahí mismo. También puedes referenciar el [repositorio oficial en GitHub](https://github.com/microsoft/aurora?utm_source=gemini) para ver cómo cargar datos iniciales.
    
      
    
4. **Objetivo:** Obtener un pronóstico base y comparar visualmente o en tiempos de computación con lo que obtuviste en AIFS.
    
      
    

**Paso 3: Trabajo con Datos Históricos (Si el forecast en tiempo real falla o para validación)**

  

1. **Plataforma:** [Dynamical.org](https://dynamical.org/catalog/ecmwf-aifs-single-forecast/?utm_source=gemini) y un notebook de Jupyter (Local o Colab).
    
      
    
2. **Acción:** Descarga un _chunk_ de datos de un evento pasado específico.
    
      
    
3. **Ejecución:** Carga estos datos en Xarray/Pandas y utilízalos como las condiciones iniciales para que el modelo (AIFS) prediga lo que pasó. Esto es vital para saber si "sirve" antes de pensar en agregarle la parte hidrológica.
    
      
    

**Paso 4: Plan de Contingencia (Hardware)**

  

1. Si Colab se queda sin RAM, y Azure es muy complejo de configurar para AIFS, recopila los errores.
    
      
    
2. Habla con Corzo para solicitar las credenciales y el acceso a **SURFsara**, donde tendrás las GPUs necesarias para ejecutar el modelo AIFS sin bloqueos.
    
      
    

### Raw:

Gerald:

Imagine que tiene miles de parametros, como son redes neuronales la forma de arrancar tiene ciertos algoritmos que tiene procesos aletarorios

  

Para el setup, se necesita una serie de datos y empezar a entrenar esos miles de parametros

La idea es que en un momento dado. cientos de papers hacen modelos conceptales donde entrenaron esos mil parametros. entonces kratzert dice que usar una tecnica con 1000... quiero revisar si ML model tiene mas de 670., ya no necesito esos 100 modelos intdividuales sino ir aprendiendo uno por uno, y con eso num modelo grande ya todo el mundo lo puede usar calibrado.

La razón por la que muchos de los modelos pequeños tampoco hay datos. Remote sensing donde no hay datos. Son miles de parametros y se reinventa la rueda done no hay datos

En que direccion va foundation models, en que el modelo ya tenga toda la información presentando un proceso hidrologico y por dentro hay elementos que podrían presentar otras cosas. algo que represente todos los problemas y otra que sea sacar cosas que estaban ahí que no podemos

Salió Aurora 1.5, mejor resolución y multiescala

Para primera pregunta:

  

Valor agregado FM: Desde la perspectiva de donde queremos trabajar y como esto dará una aproximación, sería decir si lo hacemos local con este foundation model vale la pena o no vale la pena.

Aurora tiene toda la parte atmosferica de la tierra entonces si se quiere encapturar los datos (no modelo todavía) una opción es descargue datos de su region o aurora

La inferencia de estos modelos no es tan pesado, google cola en unos 5 min

Si se quiere hacer fine tuning surfsara???? corriendo aurora y no consume tanta gpu

Un fine tuning de nosotros con algo especifico es ya tener un gpt especializado para un problema especifico, sería ganancia probar eso comparado con . FM es aurora es mas meteorologico y es algo bueno para nosotros, ya que no consideran la hidrología, entonces si le metemos la hidrología al modelo ya estamos haceidno algo muchisimo mas util o mas acertado. para tener en cuanta si puede generar inundación.

Maria luisa:

Que region? Area de interes

G: que les interesa a ECMWF?

  

Podríamos hacer caso de estudio si interesa algo en específico

  

Puede ser caravan también, caravan 2 saldrá en unas semanas. mas datos mas info y mas validado. esta en nuestras manos donde enfocarlo, algun sitio especifico de interés que opines?

ML: Ahora no, pero podemos considerar cronologico inicial de caravan. hace unos días hay caravan de las neuvas versiones. después de octubre deficinr un case estudy o region.

  

Mejor descargar los datos y tener aurora, no hacer fine tuning, empezar a ver como el modelo funciona out of the box si se puede hacer una previsión sin fine tunning. empezando con la resolución del modelo. Yo creo que se puede empezar con un modelo simple Cronos u otro, para tener algo muy rapido cono baselineTener un colab para primeras iteraciones. Aurora, selecionar una región, tneer otro modelo foundation model hidrológico y ver si se puede hacer.

Presentación de Alden, CTO de empresa americana demostrando como se puede crear un modelo out of the box y después ir a fine tuning o mter un lstm mas complejo

Cmo primera iteración hacer un modelo simple.

G: Yo estoy de acuerdo, resaltando dos cosas

  

Como construir un modelo y que vaya haciendose

De que manera está corriendo y que maneras hay de correr el aurora

ML: Ver como funciona la resolución, la grid

G: Correr aurora en Aurora-1.5 | Model Catalog | Microsoft Foundry para hacerlo en la nube y familiazrizarnos con el sistema

ML: Tenemos AIFS, sería interesante también correr AIFS y ver la comparación entre los resultados ECMWF's AI forecasting model is open source: now let's make it easy to run.

G: Si hay un lab para AIFS, porque en local es mucho peso, surfsara tenemos gpu

Probar AIFS en local, al parecer corre sin problema

ML: Local la resolución es baja 30x30 km, aunque es mejor que Aurora 1.

Zerogpu en huggingface

  

Foundry regalan 200 dolares para correr y aprender como correr

Meta de aprendizaje:

Correrlo en Colombia tiempo real haga corrida para magdalena a tiempo real ponga la posición y probar AIFS y Aurora

Por ahora revisar parametros meteorológicos

Si se quiere ver el forecast del pasado se puede buscar el dataset del pasado para hcaer experimentos dynamical.org - ECMWF AIFS Single forecast

Hugging tiene run foreacst y puedes correr cualquier fecha tiempo que sea y los chunks

Revisar esto

Dos semanas hacer el experimento de la pagina web o alcancé a correr

Si hay limitaciones de equipo (ej no funciona el microsoft) le digo a corzo y el da el de surfsara con aifs

Concentrarme con el AIFS

Dynamical tiene un monton de datasets providers, si funciona para uno funciona para todos, entonces revisar dynamical

Fecha de reunión Oct 9: 3pm

Tareas:

  

Revisar AIFS desde huggingface

Correr Aurora 1.5

Ver si hay problemas y que soluciones se pueden llegar