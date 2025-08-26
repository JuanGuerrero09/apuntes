# Animar texto en React Native con Reanimated

## useSharedValue
Crea un **valor animado mutable y reactivo** que se puede modificar (e.g. `x.value = 100`). Es similar a `useRef`, pero pensado para animaciones. Cambiar el valor automáticamente vuelve a calcular los estilos animados.

## useAnimatedStyle
Hook que crea un objeto de estilos animado. Reacciona a los cambios de `useSharedValue`. Se aplica a un componente `Animated.View`, `Animated.Text`, etc.

## Animated.Component
Reanimated proporciona versiones animadas de los componentes de React Native (como `Animated.Text`, `Animated.View`, `Animated.Image`, etc.). Permiten aplicar estilos animados (`useAnimatedStyle`) y responder a gestos.

### withSpring

Aplica una **animación tipo resorte** (spring). Suave y natural, muy útil para UIs modernas como iOS. Acepta opciones como:

- `damping`: resistencia del rebote.
- `stiffness`: velocidad de retorno.
- `mass`: afecta la inercia.
- `overshootClamping`: si `true`, evita que rebote al final.

---
### withTiming

Animación lineal o con easing, útil para transiciones simples de tiempo fijo.

---

### useDerivedValue`

Crea un valor animado basado en otro `SharedValue`, muy útil para cálculos interdependientes.


`const doubled = useDerivedValue(() => offset.value * 2);`

---

### interpolate

Permite mapear un valor entre diferentes rangos. Muy útil para crear efectos visuales complejos:

`const animatedStyle = useAnimatedStyle(() => {   const translateY = interpolate(progress.value, [0, 1], [100, 0]);   return { transform: [{ translateY }] }; });`

---

###  runOnJS

Permite ejecutar funciones de JavaScript (fuera del hilo UI) desde una animación. Útil para callbacks:


`runOnJS(myCallbackFunction)();`

---

###  LayoutAnimation`

Si usas `layout={...}` en `Animated.View`, puedes animar cambios de tamaño/posición automáticamente.

`<Animated.View layout={LinearTransition.springify()} />`

---

## Ejemplo: Mover texto horizontalmente

```tsx
const x = useSharedValue(0);

const animatedStyle = useAnimatedStyle(() => ({
  transform: [{ translateX: x.value }],
}));

<Animated.Text style={animatedStyle}>Texto</Animated.Text>
