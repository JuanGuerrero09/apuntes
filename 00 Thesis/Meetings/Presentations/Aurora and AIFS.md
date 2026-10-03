Aurora - 1hr
AIFS - 6 horas

![[Pasted image 20260928171836.png]]

Paso 1: Acceso a Microsoft Foundry y Créditos

Confirmar cuenta de microsoft

Con esa cuenta crear cuenta de azure

Finalmente aceptar los 200 USD de prueba 

![[Pasted image 20260928174126.png]]

![[Pasted image 20260928174614.png]]


![[Pasted image 20260928174957.png]]
![[Pasted image 20260928175015.png]]

## Punto de conexión
ResourceOperationFailure: Resource provider [N/A] isn't registered with Subscription [N/A]. Please see troubleshooting guide, available here: [https://aka.ms/register-resource-provider](https://aka.ms/register-resource-provider)

![[Pasted image 20260928180944.png]]

---
Este es un error clásico de Azure al configurar recursos de Machine Learning por primera vez. Significa que los servicios internos que manejan las GPUs y la computación están desactivados por defecto en tu suscripción (para evitar usos accidentales) y necesitas habilitarlos manualmente ("registrarlos").

Aquí tienes la ruta exacta para solucionarlo en un par de minutos:

1. Entra al **Portal general de Azure** (`portal.azure.com`).
    
2. En la barra de búsqueda superior central, escribe **Suscripciones** (_Subscriptions_) y entra allí.
    
3. Haz clic en la suscripción activa que estás usando (por ejemplo, "Evaluación gratuita", "Azure for Students" o el nombre de tu proyecto).
    
4. En el menú lateral izquierdo, baja hasta la sección **Configuración** y haz clic en **Proveedores de recursos** (_Resource providers_).
    
5. Usa el cuadro de filtro para buscar los siguientes dos servicios. Al seleccionarlos, haz clic en el botón **Registrar** (en la parte superior) para cada uno:
    
    - `Microsoft.MachineLearningServices`
        
    - `Microsoft.Compute`
        
6. Espera un poco. El estado cambiará de "Registrando..." a "Registrado" (puedes darle al botón de Actualizar arriba para ver el cambio, toma unos 2 a 3 minutos).
    

Una vez que ambos aparezcan con el check verde de "Registrado", vuelve a la pestaña del catálogo donde estabas configurando Aurora e intenta darle al botón de **Implementar** nuevamente. Ya debería dejarte aprovisionar la máquina sin problema.


![[Pasted image 20260928175718.png]]

![[Pasted image 20260928180814.png]]

![[Pasted image 20260928180905.png]]


![[Pasted image 20260928181255.png]]

### Instalar Azure CLI

winget install -e --id Microsoft.AzureCLI

az login

az extension add --name ml


@'
$schema: https://azuremlschemas.azureedge.net/latest/managedOnlineDeployment.schema.json
name: aurora-1-5-deployment
endpoint_name: aurora-magdalena-evfax
model: azureml://registries/azureml/models/Aurora-1-5/versions/latest
instance_type: Standard_NC24ads_A10
instance_count: 1
'@ | Out-File -Encoding utf8 deployment.yml


az ml online-deployment create --file deployment.yml --resource-group rg-aurora-magdalena --workspace-name aurora-magdalena

![[Pasted image 20260929133017.png]]

![[Pasted image 20260929133613.png]]

![[Pasted image 20260930113325.png]]

![[Pasted image 20260930131814.png]]

![[Pasted image 20260930131758.png]]

![[Pasted image 20261001152812.png]]

## Metodología

- **Copernicus (CDS):** Descargas los datos históricos de reanálisis (ERA5) para obtener el estado inicial de la atmósfera.
    
- **Corridas Propias:** Usas esos mismos datos de CDS como _input_ para correr tanto Aurora (vía Azure) como AIFS (HuggingFace).
    
- **Comparación (Benchmark):** Descargas de `dynamical.org` los resultados operativos que el ECMWF generó en su momento con AIFS (que usaron datos HRES de mayor resolución) y comparas tus dos corridas propias contra ese "Gold Standard" y contra lo que realmente llovió.

## Caso de estudio

### Caso de Estudio: Predicción de Eventos Extremos en Barrancabermeja mediante Foundation Models

**1. Contexto Geográfico y Relevancia Socioeconómica**

Barrancabermeja es un distrito colombiano estratégicamente ubicado en la orilla oriental del río Magdalena, en la zona occidental del departamento de Santander. Esta localización la convierte en el epicentro industrial del departamento y alberga la refinería de petróleo más grande del país. Gracias a su gran actividad industrial, Barrancabermeja se consolida como la sexta economía municipal de Colombia.

Más allá de la ciudad, la cuenca del río Magdalena es la arteria fluvial más crítica de Colombia: en ella habita el 77% de la población del país y se genera cerca del 85% del Producto Interno Bruto (PIB) nacional. Sin embargo, esta misma proximidad al río y a los sistemas cenagosos hace que Barrancabermeja y sus áreas circundantes sean altamente vulnerables a las dinámicas hidrológicas complejas y a las inundaciones provocadas por precipitaciones extremas y el aumento del nivel del caudal.

**2. Descripción del Evento de Estudio**

Para evaluar la capacidad predictiva de las nuevas arquitecturas de Inteligencia Artificial, este caso de estudio se centra en el evento hidrometeorológico extremo registrado a principios de **mayo de 2025**. El crecimiento inusual del nivel del afluente encendió las alarmas desde el 4 de mayo, llevando a las autoridades locales a declarar la alerta roja por desbordamiento inminente. El rápido incremento del río Magdalena superó la cota de desbordamiento, afectando gravemente zonas ribereñas, cultivos, animales y múltiples infraestructuras en los municipios de Santander. Este evento sostenido demostró la necesidad de prever con mayor anticipación la acumulación de lluvia en la cuenca alta y media.

**3. Justificación y Metodología Computacional**

El objetivo central de este estudio es realizar un _hindcast_ (pronóstico retrospectivo) del evento de mayo de 2025 utilizando dos de los _Foundation Models_ atmosféricos más avanzados: **Aurora 1.5** (Microsoft) y **AIFS** (ECMWF).

El flujo de trabajo metodológico se estructura de la siguiente manera:

- **Condiciones Iniciales ($t=0$):** Se extraerá un cubo de datos multidimensional del reanálisis ERA5 a través de la API de Copernicus (CDS), capturando el estado exacto de la atmósfera (superficie y niveles de presión) fijando el punto de partida hacia el **1 de mayo de 2025**, días antes de la alerta roja.
    
- **Inferencia Base (_Out-of-the-box_):** Este mismo tensor inicial será el _input_ para generar el pronóstico tanto en el ecosistema de inferencia de Azure (Aurora 1.5) como en el entorno local (AIFS).
    
- **Validación y _Benchmarking_:** Los volúmenes de precipitación y las trayectorias proyectadas por ambos modelos se compararán con los registros históricos reales de lluvia y con el "Gold Standard" de los datos operativos asimilados en su momento por el ECMWF (obtenidos eficientemente mediante la arquitectura de catálogo de `dynamical.org`).

![[Pasted image 20260929111700.png]]![[Pasted image 20260929111707.png]]
![[Pasted image 20260929111722.png]]

## Aurora 

### Input para aurora

#### Batch

Batches contain four things:

1. some surface-level variables,
2. some static variables,
3. some atmospheric variables all at the same collection of pressure levels, and
4. metadata describing these variables: latitudes, longitudes, the pressure levels of the atmospheric variables, and the time of the data.

#### 1. Inputs para Aurora 1.5 (`aurora.Batch`)

Aurora es muy estricto con su formato. Exige un objeto `Batch` que contiene 4 elementos desnormalizados.

**⚠️ Requisito Crítico (La dimensión temporal 't'):**

Aurora **exige 2 pasos de tiempo** para arrancar. No le basta con el clima actual ($t=0$). Necesita el paso actual (índice 1) y el paso inmediatamente anterior (índice 0). Esto significa que cuando descargues de CDS, debes descargar al menos dos horas consecutivas.

**Componentes del `Batch`:**

- **`surf_vars` (Variables de Superficie):**
    
    - _Forma:_ `(batch_size, time_history, lat, lon)` -> Ej: `(1, 2, 17, 32)`
        
    - _Variables requeridas:_
        
        - `2t`: Temperatura a 2 metros (K)
            
        - `10u` / `10v`: Componentes del viento a 10 metros (m/s)
            
        - `msl`: Presión media a nivel del mar (Pa)
            
- **`static_vars` (Variables Estáticas):**
    
    - _Forma:_ `(lat, lon)` -> Ej: `(17, 32)` _(No cambian en el tiempo)_
        
    - _Variables requeridas:_
        
        - `lsm`: Máscara de tierra-mar (Land-sea mask)
            
        - `slt`: Tipo de suelo (Soil type)
            
        - `z`: Geopotencial en superficie (m²/s²)
            
- **`atmos_vars` (Variables Atmosféricas / Altura):**
    
    - _Forma:_ `(batch_size, time_history, pressure_levels, lat, lon)`
        
    - _Variables requeridas (para cada nivel de presión):_
        
        - `t`: Temperatura (K)
            
        - `u` / `v`: Componentes del viento (m/s)
            
        - `q`: Humedad específica (kg/kg)
            
        - `z`: Geopotencial (m²/s²)
            
- **`metadata` (Metadatos espaciales y temporales):**
    
    - `lat`: Vector de latitudes (debe ser **decreciente**, ej. 90 a -90).
        
    - `lon`: Vector de longitudes (debe ser **creciente** y en rango [0, 360), no incluye el 360).
        
    - `time`: Tupla con el `datetime` del paso actual (el segundo paso de tiempo que enviaste).
        
    - `atmos_levels`: Tupla con los niveles de presión en hPa en el orden exacto en que armaste los datos atmosféricos.
        
- _Output de Aurora:_ Te devolverá un `Batch` con la misma estructura, pero la dimensión de tiempo `t` será de tamaño 1 (tu pronóstico futuro).
    

#### 2. Inputs para AIFS (En contraste con Aurora)

Para que lo tengas en tus apuntes, la estructura de AIFS (usando los pesos de HuggingFace) tiene similitudes pero diferencias clave en la implementación:

- **Variables:** AIFS usa prácticamente el mismo set físico que Aurora (superficie: `2t`, `10u`, `10v`, `msl`, etc. y atmosféricas en niveles de presión: `t`, `u`, `v`, `q`, `z`). Preparar los datos de ERA5 te servirá para ambos.
    
- **Dimensión Temporal:** A diferencia de Aurora, el modelo AIFS tradicional de un solo pronóstico (_Single Forecast_) **solo requiere el estado inicial ($t=0$)**. No necesitas enviarle el paso de tiempo anterior.
    
- **Formato de entrada:** Mientras Aurora usa su clase personalizada `aurora.Batch` con diccionarios de tensores de PyTorch, la implementación de AIFS en HuggingFace generalmente toma directamente un dataset de Xarray (basado en GRIB o NetCDF) y el código de inferencia se encarga de empaquetarlo para la red neuronal.

### ¿Qué vamos a descargar exactamente?

Dado que **Aurora requiere 2 pasos de tiempo consecutivos** para entender la dinámica del clima, vamos a descargar el estado atmosférico del **1 de mayo de 2025 a las 11:00 UTC y a las 12:00 UTC**.

Además, en Copernicus, los datos están divididos en dos bases de datos diferentes, así que haremos dos peticiones:

1. **Single Levels (Superficie):** Temperatura, viento, presión y variables estáticas (tipo de suelo, máscara tierra-mar).
    
2. **Pressure Levels (Altura):** Temperatura, viento, humedad y geopotencial en un perfil 3D (varios niveles de presión).
    

Definiremos un _Bounding Box_ (un cuadro de coordenadas) que cubra Barrancabermeja y un buen tramo de la cuenca media del Magdalena para que el modelo tenga contexto espacial: `[9.0 Norte, -75.0 Oeste, 5.0 Sur, -72.0 Este]`.

---
### Justificación de la Definición del Dominio Espacial (_Bounding Box_)

Para la extracción de las condiciones iniciales del reanálisis ERA5 y la posterior inferencia en los modelos fundacionales (Aurora 1.5 y AIFS), se ha definido un dominio espacial regional `[9.0° N, -75.0° O, 5.0° S, -72.0° E]` que excede significativamente el área urbana de Barrancabermeja. Esta delimitación extendida (aproximadamente 440 km x 330 km) se fundamenta en tres criterios técnico-científicos:

**1. Dinámica Hidrológica y Tiempo de Concentración de la Cuenca** El riesgo de inundación por desbordamiento en Barrancabermeja no está dictado exclusivamente por la precipitación local (_in situ_), sino principalmente por la acumulación de escorrentía generada aguas arriba en la cuenca media y alta del río Magdalena. Un dominio espacial amplio permite capturar los volúmenes de precipitación regional que, tras los procesos de transformación lluvia-escorrentía y el ruteo hidrológico, transitarán como una onda de avenida hacia la zona de estudio, un factor indispensable para un pronóstico de inundación certero.

**2. Condiciones de Frontera y Advección Atmosférica** Las arquitecturas de inteligencia artificial aplicadas a la meteorología requieren un contexto espacial amplio para capturar correctamente la advección (el transporte de propiedades atmosféricas por el viento). Si el dominio espacial fuera demasiado restrictivo, los sistemas convectivos y frentes de tormenta ingresarían repentinamente a la grilla de cálculo, impidiendo que los mecanismos de atención del modelo (_attention layers_) proyecten su trayectoria y evolución física a 24 o 48 horas.

**3. Resolución Nativa de los Datos de Entrada** El reanálisis ERA5 posee una resolución espacial nativa de 0.25 grados (aproximadamente 28 km en el ecuador). Un recorte ajustado únicamente a los límites administrativos de la ciudad resultaría en un tensor de entrada extremadamente reducido (ej. 1x1 o 2x2 píxeles). Al ampliar el _bounding box_, se proporciona a los modelos fundacionales una matriz de características (_feature map_) lo suficientemente densa para que las redes neuronales identifiquen patrones espaciales y topográficos de escala sinóptica y meso-escala.

---

La respuesta directa es **no, no estamos usando ERA5-Land**. Estamos usando el **ERA5 estándar (Global)**.

Aquí te explico exactamente por qué tomamos esta decisión y por qué ERA5-Land no nos sirve como _input_ para estos Foundation Models, lo cual es un excelente apunte para tu documentación:

### 1. El limitante de la "Tercera Dimensión" (Altitud)

- **ERA5-Land** es un modelo puramente de superficie (2D). Te da variables a nivel del suelo con una resolución espacial muy buena (~9 km), pero **no tiene datos de la atmósfera en altura**.
    
- **Aurora y AIFS** son modelos atmosféricos completos. Como vimos en los requisitos técnicos de Aurora, el modelo exige el tensor `atmos_vars`, que requiere saber qué está pasando con el viento, la temperatura y la humedad a 1000 hPa, 500 hPa, 200 hPa, etc. ERA5-Land simplemente no posee estos datos.
    

### 2. Variables obligatorias faltantes

Incluso para las variables de superficie (`surf_vars`), Aurora es estricto. Una de las variables obligatorias que pide es **`msl` (Presión media a nivel del mar)**. Esta variable existe en ERA5 estándar, pero el equipo de Copernicus la excluyó por completo de ERA5-Land porque es una variable puramente atmosférica/sinóptica. Si intentas alimentar Aurora con ERA5-Land, el modelo arrojará un error inmediatamente por falta de esta variable.

### ¿Dónde encajaría ERA5-Land en tu proyecto a futuro?

Aunque no sirva como input para _arrancar_ Aurora o AIFS, ERA5-Land tiene un rol vital más adelante en lo que ustedes discutieron en la reunión.

En las notas mencionan: _"después ir a fine tuning o meter un LSTM más complejo"_.

1. **Paso Meteorológico (Lo que estamos haciendo ahora):** Usas ERA5 estándar -> Corres Aurora/AIFS -> Obtienes el pronóstico de precipitación a 10 días.
    
2. **Paso Hidrológico (El LSTM):** Cuando vayas a entrenar tu red neuronal LSTM para predecir si el río Magdalena se va a desbordar usando series de tiempo, **ahí es donde usas ERA5-Land**. Usarías el histórico de lluvias de ERA5-Land (que tiene mejor resolución de 9km) para entrenar el modelo de escorrentía, y luego lo alimentarías en tiempo real con las predicciones que te arrojó Aurora.
    

**En resumen:** Para correr modelos climáticos (Atmósfera), la regla de oro es usar **ERA5 (Single Levels + Pressure Levels)**.


![[Pasted image 20260929123916.png]]

Para predecir 10 días con una resolución de 6 horas, debes ajustar los parámetros de la función `submit`. El modelo Aurora tiene una resolución temporal base de 6 horas, por lo que 10 días equivalen a 40 pasos (40 pasos × 6 horas = 240 horas = 10 días).

open dataset anemoi

que 

# AIFS and Hugging Face



# Vision transformer and self attention


