
#  ¿Qué es el análisis de transitorios?

El análisis de transitorios en tuberías se refiere al estudio de los cambios temporales en el flujo y la presión dentro de un sistema de tuberías. Estos cambios pueden ser causados por eventos como el arranque y paro de bombas, la apertura y cierre de válvulas, o fallos en el suministro de energía. El objetivo del análisis es entender y mitigar los efectos de estos cambios para evitar daños en el sistema y asegurar su funcionamiento eficiente.

#  Parámetros Clave para Transitorios

- **Presión**: La variación de la presión en el sistema durante un transitorio.
- **Velocidad del Fluido**: Cambios en la velocidad del agua o del fluido dentro de las tuberías.
- **Cavitación**: Formación de burbujas de vapor en el fluido debido a bajas presiones.
- **Golpe de Ariete**: Un fenómeno transitorio rápido que puede causar picos de presión muy altos.

# Proceso para estudio de transitorios

1. **Definición del Sistema** : Identificar y describir todos los componentes del sistema de tuberías, incluyendo bombas, válvulas, y tanques.

2. **Modelado del Sistema**: Crear un modelo matemático del sistema utilizando software especializado.

3. **Simulación de Escenarios**: Ejecutar simulaciones para diferentes escenarios de operación y fallos.

4. **Análisis de Resultados**: Evaluar los resultados de las simulaciones para identificar posibles problemas y soluciones.

5. **Implementación de Medidas**: Aplicar las medidas necesarias para mitigar los efectos negativos de los transitorios.

#  Teoría de transitorios

La teoría de transitorios se basa en las ecuaciones de conservación de masa y momento aplicadas a un volumen de control dentro del sistema de tuberías. Estas ecuaciones se resuelven utilizando métodos numéricos como el método de las características para predecir el comportamiento del sistema durante un transitorio.

#  Software para Transitorios

Existen varios programas de software que se utilizan para el análisis de transitorios en tuberías, entre ellos:

- **WANDA**: Un software especializado en la simulación de transitorios hidráulicos.

- **HAMMER**: Utilizado para el análisis de golpe de ariete y otros fenómenos transitorios.

#  Uso de WANDA

WANDA es una herramienta poderosa para el análisis de transitorios en sistemas de tuberías. Permite modelar y simular diferentes escenarios de operación y fallos, proporcionando información detallada sobre las variaciones de presión y flujo en el sistema. Para utilizar WANDA:

1. **Definir el Sistema**: Introducir los datos del sistema de tuberías en el software.
2. **Configurar Escenarios**: Establecer los escenarios de operación y fallos que se desean simular.
3. **Ejecutar Simulaciones**: Ejecutar las simulaciones y analizar los resultados.
4. **Interpretar Resultados**: Utilizar los resultados para identificar problemas y diseñar soluciones.

## ¿Para qué es WANDA?
Se recomienda encarecidamente el uso de WANDA para redes de transporte y distribución dónde se manejen tuberías largas sin una alta complejidad topológica. Como se mencionó previamente, WANDA usa componentes unidos por Nodos, estas uniones buscan juntar elementos de tuberías, válvulas, etc., teniendo una longitud nula y una altura. El hacer esto con los elementos permite que dentro de un solo componente se tenga toda la información que pueda tener la tubería, desde sus propiedades hasta sus características de longitud cuyos único requerimiento es la tubería, ya que son los cambios de altura y los accesorios lo que afectan a las presiones de la tubería.

Es por esto, que en caso de tener redes de distribución dónde las tuberías tengan ramales o muchas bifurcaciones con longitudes pequeñas dejen de ser ideales debido a que puede dar a lugar a modelos complejos y mas difíciles de mantener, como el que se observa en la imagen.
![[Pasted image 20250505145034.png]]
## Uso de WANDA
### Condiciones de Frontera
![[Pasted image 20250505095342.png]]

Las condiciones de frontera pueden ser e tres tipos, de altura piezométrica, en metros, de caudal, metros cúbicos hora y 