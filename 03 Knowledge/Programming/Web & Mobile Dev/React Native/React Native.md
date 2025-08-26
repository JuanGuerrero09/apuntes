https://developer.android.com/design

---

## 🗺️ Roadmap para aprender React Native (según la imagen)

Vamos a organizar el contenido en **etapas progresivas**, ideal para una ruta de aprendizaje realista.

---

### 🚀 1. Fundamentos de React Native & Expo

> Objetivo: montar tu primera app funcional con buenas prácticas.

- ✅ Introducción a React Native y Expo
- ✅ Múltiples componentes de RN
- ✅ Uso de cámara y recursos nativos
- ✅ Nativewind (Tailwind para React Native)
- ✅ Tema light/dark
- ✅ Formularios con Formik

---

### 🧠 2. Arquitectura y buenas prácticas

> Objetivo: construir apps escalables y mantenibles.

- 🔸 Patrones de diseño
- 🔸 Protección de rutas
- 🔸 Uso de JWTs
- 🔸 Secure Storage
- 🔸 Local Storage

---

### 🔄 3. Gestión de estado y datos

> Objetivo: manejar el estado eficientemente y consumir APIs.

- ⚙️ Context API
- ⚙️ Zustand
- ⚙️ Consumo de REST APIs
- ⚙️ Manejo de caché con TanStack

---

### 📦 4. Notificaciones y autenticación

> Objetivo: habilitar sistemas de login, permisos y notificaciones.

- 🔐 Autenticación
- 🔐 Push notifications
- 🔐 Push Backends
- 🔐 APNS y FCM

---

### 🧪 5. Testing y despliegue

> Objetivo: llevar apps reales a producción.

- ✅ Aplicaciones reales
- ✅ Expo EAS CLI
- ✅ IPAs y AABs (Android/iOS)
- ✅ Apple App Store y Google Play Store
- ✅ Test Flight y Google Alphas y Betas
- ✅ Prebuilds

---

### 🧰 6. Extra: herramientas de soporte y devops

> Complementos para desarrollo profesional.

- 🐳 Un poco de Docker
- 📦 Repositorios y paquetes
- 💤 Lazyloading

---

# Components

## Core Components
The most important Core Components are the next, for more detail visit [[Core Components]]
### View
The most fundamental component for building a UI, `View` is a container that supports layout with [flexbox](https://reactnative.dev/docs/flexbox), [style](https://reactnative.dev/docs/style), [some touch handling](https://reactnative.dev/docs/handling-touches), and [accessibility](https://reactnative.dev/docs/accessibility) controls. `View` maps directly to the native view equivalent on whatever platform React Native is running on, whether that is a `UIView`, `<div>`, `android.view`, etc.

`View` is designed to be nested inside other views and can have 0 to many children of any type.

### Text

### TextInput

### ScrollView


### Flatlist

A performant interface for rendering basic, flat lists, supporting the most handy features:

- Fully cross-platform.
- Optional horizontal mode.
- Configurable viewability callbacks.
- Header support.
- Footer support.
- Separator support.
- Pull to Refresh.
- Scroll loading.
- ScrollToIndex support.
- Multiple column support.

### SectionList
### Image (and expo-image)
A React component for displaying different types of images, including network images, static resources, temporary local images, and images from local disk, such as the camera roll.

Note that for network and data images, you will need to manually specify the dimensions of your image!

### ImageBackground

KeyboardAvoidingView 
Modal 
RefreshControl 
SafeAreaView
StatusBar
Switch
TouchableHighlight
TouchableOpacity
TouchableWithoutFeedback
Pressable
Button
VirtualizedList
DrawerLayoutAndroid
TouchableNativeFeedback
InputAccessoryView


## Expo Components

### Stack
A stack navigator is the foundation for navigating between different screens in an app. On Android, a stacked route animates on top of the current screen. On iOS, a stacked route animates from the right. Expo Router provides a `Stack` component to create a navigation stack to add new routes.

### Buttons

React Native includes a few different components for handling touch events, but [`<Pressable>`](https://reactnative.dev/docs/pressable) is recommended for its flexibility. It can detect single taps, long presses, trigger separate events when the button is pushed in and released, and more.

ImageSourcePropType?

### Touchable


### ScrollView



If you need section support, use [`<SectionList>`](https://reactnative.dev/docs/sectionlist).
Flash list y victory native
Uri Imagenes

### SafeArea

---
# Reanimated

### useAnimatedStyle

### usedSharedValue
---
# Props

---
# Object Types

# Roadmap
### 🧭 **Ruta de aprendizaje visual y de diseño para interfaces (UI)**

#### 📘 **Fase 1: Fundamentos del Diseño de Interfaces**

1. **Aprende principios clave de diseño visual**:
    
    - _Contraste, alineación, jerarquía, espacio en blanco, repetición, proximidad._
        
    - Recursos:
        
        - [Refactoring UI Book](https://refactoringui.com/book/)
            
        - Curso gratuito: [DesignCourse - YouTube](https://www.youtube.com/c/DesignCourse)
            
        - [Laws of UX](https://lawsofux.com/)
            
2. **Estudia tipografía digital**:
    
    - Tipos de fuente (serif, sans-serif), escalas, altura de línea, espaciado.
        
    - Herramienta útil: [TypeScale](https://type-scale.com/)
        
3. **Colores y accesibilidad**:
    
    - Cómo elegir una paleta coherente (teoría del color, contraste).
        
    - Herramientas: [Coolors](https://coolors.co/), [ColorBox](https://www.colorbox.io/), [Colorable](https://colorable.jxnblk.com/)
        

---

#### 🎨 **Fase 2: Diseño aplicado a Web y Mobile**

1. **Explora Material Design 3 (especialmente Expressive)**:
    
    - [Material 3 – Design Guidelines](https://m3.material.io/)
        
    - Estudia los tokens de diseño: colores dinámicos, tipografías, espaciamiento.
        
2. **Diseña en Figma (o Penpot si prefieres open source)**:
    
    - Aprende auto layout, grids, y prototipado.
        
    - Figma curso gratis: [Figma for Beginners - freeCodeCamp](https://www.youtube.com/watch?v=FTFaQWZBqQ8)
        

---

#### ⚙️ **Fase 3: Implementación en React Native**

1. **Instala y configura React Native con Material Design 3**:
    
    - Usa [`react-native-paper`](https://callstack.github.io/react-native-paper/) (basado en Material Design).
        
    - Alternativa: [`react-native-material-you`](https://github.com/callstack/react-native-material-you) (tokens dinámicos, M3 Expressive).
        
    - Combina con `react-native-vector-icons` y `react-native-safe-area-context`.
        
2. **Adapta componentes M3 a React Native**:
    
    - Usa `@react-navigation/material-top-tabs` y `@react-navigation/material-bottom-tabs` para navegación con estilo Material.
        
    - Reproduce tokens de color y tipografía de M3 con [`react-native-material-you`](https://github.com/callstack/react-native-material-you) o carga los tuyos con un sistema de tokens.
        

---

#### 🧪 **Fase 4: Práctica y Refinamiento**

- Clona y adapta apps de diseño:
    
    - Clon de Google News, YouTube Music, o cualquier app con diseño Material 3.
        
- Participa en retos de diseño:
    
    - [Frontend Mentor](https://www.frontendmentor.io/), [Daily UI](https://www.dailyui.co/)
        

---

¿Quieres que te cree una plantilla base de React Native con soporte para Material 3 y tipografías personalizadas? ¿O prefieres comenzar por una guía paso a paso para configurar el entorno y crear tu primer componente expresivo?






---

## 🗓️ Semana 1: Fundamentos sólidos de React Native

### 📚 Qué estudiar:

- Qué es React Native y Expo
React Native is an open-source UI software framework developed by Meta Platforms (formerly Facebook Inc.). It is used to develop applications for Android, Android TV, iOS1 macOS, tvOS,Web, Windows and UWP by enabling developers to use the React framework along with native platform capabilities.[12] It is used to develop Android and iOS applications at Facebook, Microsoft, and Shopify.

Expo is an open-source project that gives developers powerful tools to assist in building and maintaining React Native apps at any scale. For example, Expo CLI, Expo Router, and Expo SDK packages. All Expo open-source tools are entirely free to use and carry the MIT license.
Expo Application Services (EAS) is a suite of hosted services that you can use with Expo and React Native projects to:
- Build, submit, and update your app
- Set up automation around all of these processes
- Collaborate with your team

EAS solves a set of problems that require physical resources, such as application servers and CDNs for serving over-the-air updates and physical servers for running builds. EAS has a generous [free plan](https://expo.dev/pricing#get-started) that will work for many student and hobby projects.

- Cómo funciona Expo (`npx create-expo-app`, `expo start`)


- Componentes esenciales de React Native:
    - `View`, `Text`, `Image`, `TextInput`, `Button`, `TouchableOpacity`, `ScrollView`, `FlatList`, `Pressable`
- JSX y estilos con `StyleSheet.create`
- Hooks: `useState`, `useEffect`
- Flexbox en React Native (dirección, alineación, espaciado)
- Sistema de navegación: `expo-router` o `@react-navigation/native`
   - Uso de fuentes personalizadas con `expo-font`
- `SafeAreaView`, `StatusBar` 

### 🛠️ Qué construir:

- Pantalla estática con nombre del usuario, saldo actual, y lista mock de transacciones
- Navegación simple con pestañas (Inicio, Mes, Día)
- Configurar fuentes (usa una fuente sans-serif limpia como "Manrope")
- Crear un layout básico con un título grande y una lista scrollable

### 🎯 Alcance:

- Pantalla simple con título, lista de 3 gastos falsos, y estética limpia
- Usar `SafeAreaView`, `Text`, `ScrollView`, `View`, y `StyleSheet`
- Mostrar lista de transacciones (ScrollView)
- Permitir desplazamiento por días/meses ficticios
- Mostrar el total actual con diseño básico

### ✅ User stories:

- Puede ver una lista de gastos con nombres y montos
- Puede ver su saldo actual en la parte superior
- Puede navegar entre pantallas (tabs) sin errores

---

## 🗓️ Semana 2: Diseño visual + componentes interactivos

### 📚 Qué estudiar:

- `TouchableOpacity` y `Pressable` (feedback visual)
    
- Sistema de estilos con `StyleSheet`, separación en archivos
    
- Uso de `LinearGradient` de `expo-linear-gradient`
    
- Conceptos de Material 3 expressive (bordes, jerarquías, espaciado, tipografía)
- `react-navigation/native` y `@react-navigation/native-stack`
    
- Props de navegación
    
- Params entre pantallas

### 🛠️ Qué construir:

- Diseño de una tarjeta con gasto (ícono, descripción, monto)
    
- Header con degradado
    
- Fondo blanco, diseño limpio

- Navegación por stack: Home > Mes > Día
    
- Botones para ir hacia meses/días
    
- Uso de `ScrollView` y botones horizontales para cambiar vista (como "By Day", "By Category")

### 🎯 Alcance:

- Usar fuentes personalizadas con `expo-font`
    
- Aplicar `LinearGradient` en headers o cards
    
- Tipografía jerárquica (grande para montos, regular para subtítulos)

- 3 pantallas: Home, Month, Day (Swipe horizontal despues de una pantalla inicial)
- Navegación funcional entre ellas con datos mockeados
	
### ✅ User stories:
- Navega entre las vistas por mes, día y lista general
    
- Consulta la lista de gastos para cada vista
- Puede ver cada gasto dentro de una tarjeta clara y estilizada
    
- El saldo se muestra en fuente grande y con diseño atractivo
    
- Al tocar un gasto, hay retroalimentación visual
    

---

## 🗓️ Semana 3: Entrada de datos + control de fechas

### 📚 Qué estudiar:

- `TextInput`: controlar entrada con `onChangeText` y `value`
    
- `DateTimePicker` de `expo`
    
- `KeyboardAvoidingView`, `ScrollView` y `TouchableWithoutFeedback` para evitar problemas con el teclado
- Hooks: `useState`, `useEffect`
    
- Estado global simple con `Context`
    
- Arreglos de objetos y `FlatList`
    
- `keyExtractor` en listas

### 🛠️ Qué construir:

- Pantalla para agregar nuevo gasto
    
- Selección de fecha, nombre y monto
- Manejo de gastos desde el contexto
    
- Lista de gastos filtrados por fecha
    
- Cálculo del total gastado (mensual, diario)

### 🎯 Alcance:

- Control completo del formulario
    
- Campos obligatorios
    
- Mostrar nuevo gasto en lista
- Gastos ordenados por fecha
    
- Total mostrado arriba
    
- Scroll de gastos

### ✅ User stories:

- Puede escribir nombre y monto de un nuevo gasto
    
- Puede elegir la fecha del gasto
    
- Al guardar, el gasto aparece en la pantalla principal
- Se actualiza la vista al cambiar la fecha
    
- El total visible refleja la suma actual
    

---

## 🗓️ Semana 4: Navegación por día / mes / año + lógica de filtrado

### 📚 Qué estudiar:

- `FlatList` con `filter` en arrays
    
- `useState`, `useMemo` para filtros
    
- Formateo de fechas con `Intl.DateTimeFormat` (sin librerías externas)
    
- `SegmentControl`, `TouchableOpacity`, pestañas personalizadas

- `TextInput`
    
- Modales y overlays con `Modal`
    
- Interacción con botones (`TouchableOpacity`, `Pressable`)

### 🛠️ Qué construir:

- Selector de día / mes / año arriba
    
- Botones para cambiar periodo
    
- Filtrado de transacciones por ese periodo

- Formulario para agregar gasto
    
- Categoría, descripción, monto
    
- Mostrar diferentes vistas: por categoría, por gasto alto	

### 🎯 Alcance:

- Mostrar solo transacciones del día, mes o año actual
    
- Cambiar periodo con botones o flechas


- Modal para agregar gasto
    
- Botón + que abre el modal
    
- Gastos pueden filtrarse por categoría

### ✅ User stories:

- Puede cambiar el día o mes y ver solo esos gastos
    
- Puede ver resumen semanal / mensual del total
    
- Puedes agregar un gasto manualmente
    
- Puedes ver los gastos por categoría
---

## 🗓️ Semana 5: Dashboard + insights visuales

### 📚 Qué estudiar:

- `View`, `Text`, `Flexbox` avanzado para distribución de contenido
    
- Representaciones visuales simples (barras, tamaños relativos)
    
- `LayoutAnimation` de React Native para transiciones suaves

- `LinearGradient` de `expo-linear-gradient`
    
- Sombras en iOS y Android
    
- `Platform` para estilos condicionales
    

### 🛠️ Qué construir:

- Pantalla con totales diarios / semanales
    
- Texto con monto total por periodo
    
- Visualización tipo resumen: “Gastaste $XX hoy, $YY esta semana”

- Aplicar degradado en header o cards
    
- Sombras suaves en tarjetas
    
- Tipografía consistente y moderna
    


### 🎯 Alcance:

- Mostrar valores destacados con diferente opacidad y tamaño
    
- Diseño visual limpio, bien espaciado

- Estilo más atractivo, sin perder legibilidad
    
- Prototipo funcional con buena estética
    

### ✅ User stories:

- Puede ver cuánto ha gastado hoy, esta semana y este mes
    
- Puede ver esos totales cambiar con animaciones suaves

- Visualizas los gastos con cards modernas
    
- El header tiene fondo degradado y tipografía grande
    

---

## 🗓️ Semana 6: Refinamiento + persistencia (opcional)

### 📚 Qué estudiar:

- `AsyncStorage` de `@react-native-async-storage/async-storage`
    
- Guardar y leer datos localmente
    
- Estructuras de datos inmutables (`map`, `filter`, `reduce`)
    

### 🛠️ Qué construir:

- Guardado local de todos los gastos
    
- Restauración automática al abrir la app
    

### 🎯 Alcance:

- La app recuerda todos los gastos ingresados aunque se cierre
    

### ✅ User stories:

- Puede cerrar y volver a abrir la app sin perder datos
    
- Puede ver los gastos persistentes en memoria local
    


---

## Semana 6: Revisión final y exportación

### Estudiar

- `expo build` / `eas build`
    
- `expo export` para web
    
- Uso de iconos (por ejemplo `@expo/vector-icons`)
    

### Hacer

- Revisar lógica de navegación y estado
    
- Exportar app como .apk o instalarla en dispositivo
    

### Alcance

- App funcional para Android
    
- Navegación fluida y gastos agregables
    

### User stories

- Instalas la app en tu teléfono
    
- Puedes controlar tus gastos reales
    
---

# 🎨 Presets visuales recomendados

## Tipografías:

Usar [Expo Google Fonts](https://docs.expo.dev/guides/using-custom-fonts/#using-a-google-font):

- Título: `Inter-Bold`
    
- Subtítulo: `Inter-SemiBold`
    
- Texto: `Inter-Regular`
    
- Fuente: [Manrope](https://fonts.google.com/specimen/Manrope)
    
- Jerarquía:
    
    - Título: 32-40px, semi-bold
        
    - Subtítulo / Categoría: 18-20px
        
    - Texto normal: 14-16px
        
## Colores (modo claro):

```js
const Colors = {
  background: "#FFFFFF",
  surface: "#F8F8F8",
  primary: "#2D3A7C",
  secondary: "#9DA9E0",
  accent: "#FFC107",
  textPrimary: "#1C1C1C",
  textSecondary: "#5C5C5C",
  success: "#4CAF50",
  error: "#F44336",
};
```

### Colores (modo claro)

- Fondo: `#F7F8FA`
    
- Texto primario: `#101010`
    
- Texto secundario: `#6B7280`
    
- Card / Panel: `#FFFFFF`
    
- Acento / Primario: `#4F46E5`
    

## Degradados:

- Fondo general:
    

```jsx
<LinearGradient
  colors={["#E3F2FD", "#FFFFFF"]}
  start={{ x: 0, y: 0 }}
  end={{ x: 1, y: 1 }}
>
  {/* contenido */}
</LinearGradient>
```

- Cabecera:
    

```jsx
<LinearGradient
  colors={["#2D3A7C", "#6D83F2"]}
  start={{ x: 0, y: 0 }}
  end={{ x: 1, y: 1 }}
>
```

### Degradado sugerido (header o cards)

```js
colors={["#6366F1", "#A78BFA"]} // violeta suave
start={{ x: 0, y: 0 }}
end={{ x: 1, y: 1 }}
```

### Sombras (iOS)

```js
shadowColor: "#000",
shadowOffset: { width: 0, height: 2 },
shadowOpacity: 0.1,
shadowRadius: 6,
```

### Sombras (Android)

```js
elevation: 4,
```


---

¿Quieres que ahora genere los **archivos base del proyecto (estructura inicial con pantallas y navegación)** o prefieres que sigamos con una **guía de diseño más profunda** para las pantallas clave?