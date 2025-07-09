
https://openfreemap.org/quick_start/
https://github.com/w3cj/openfreemap-examples/blob/main/vanilla-example/styles/dark.json
https://www.youtube.com/watch?v=MOhRT6DReKQ
---

# 🗺️ ¿Cómo funcionan las bibliotecas de mapas en la web?

Las bibliotecas de mapas permiten crear aplicaciones geoespaciales interactivas en el navegador. Se basan en conceptos como **teselas**, **datos vectoriales**, **capas**, **estilos de mapas**, y **fuentes de datos como OpenStreetMap**.

---

## 📘 Definiciones clave

### 🧱 Tile Server

Un **Tile Server** genera y sirve pequeñas secciones cuadradas del mapa, llamadas _tiles_, según coordenadas `{z}/{x}/{y}` (zoom, eje X, eje Y).

- 🧩 Hay dos tipos:
    
    - **Raster Tiles**: imágenes (`.png`, `.jpg`).
        
    - **Vector Tiles**: datos (`.pbf`) renderizados por el cliente.
        
- 🧠 Usados para eficiencia: solo se cargan tiles visibles.
    

### 🧭 Vector Tiles

Las **teselas vectoriales** contienen geometrías (puntos, líneas, polígonos) en lugar de imágenes. El navegador las interpreta y renderiza usando un motor gráfico (como WebGL).

- 🔁 Más eficientes para zooms altos.
    
- 🎨 Estilización dinámica (puedes cambiar color, tamaño, etc. en tiempo real).
    
- 🌍 Formato común: **Mapbox Vector Tile (`.pbf`)**
    

### 🎨 Map Style

Es un archivo en formato JSON (estilo Mapbox) que define visualmente cómo deben interpretarse y mostrarse los datos vectoriales.

```json
{
  "version": 8,
  "sources": {...},
  "layers": [
    {
      "id": "water",
      "source": "osm",
      "type": "fill",
      "paint": {"fill-color": "#aadaff"}
    }
  ]
}
```

### 📍 GeoJSON

Formato estándar para representar datos geoespaciales como puntos, líneas o polígonos.

- Útil para mostrar rutas, marcadores, zonas personalizadas.
    

---

## 🌍 ¿Cómo funciona OpenStreetMap?

**OpenStreetMap (OSM)** es una base de datos geográfica libre y abierta. Es la fuente más común para alimentar bibliotecas como Leaflet o MapLibre.

### 🧩 Cómo se usa:

1. **Datos crudos OSM** (archivo `.osm`, `.pbf`) se procesan con herramientas como `osm2pgsql`, `tilemaker`, o `Tegola`.
    
2. Se generan:
    
    - **Tiles raster** (por ej. con TileServer GL o Mapnik)
        
    - **Tiles vectoriales** (con `tilemaker`, `Planetiler`, etc.)
        
3. Estos tiles se sirven desde un **Tile Server** y consumen las bibliotecas como **MapLibre** o **Leaflet** para mostrarlos.
    

---

## 🧩 MapLibre GL JS

**MapLibre GL JS** es un motor WebGL para mostrar tiles vectoriales con estilos Mapbox. Es un _fork libre de Mapbox GL JS v1_ después de que Mapbox cerrara su código.

### ✨ Características:

- WebGL para renderizado en el navegador.
    
- Alta personalización y estilo dinámico.
    
- Soporta animaciones, 3D, rotación, y capas interactivas.
    
- Usa archivos `.pbf` desde servidores tipo `tileserver-gl` o servicios de terceros como `MapTiler`, `MapLibre Cloud`, o `Protomaps`.
    

### 🔧 Flujo básico:

```ts
import maplibregl from 'maplibre-gl';

const map = new maplibregl.Map({
  container: 'map',
  style: 'https://your-server/styles/basic/style.json',
  center: [lon, lat],
  zoom: 12
});
```

- El `style.json` contiene las fuentes, capas, y reglas de visualización.
    

---

## 🍃 Leaflet

**Leaflet** es una biblioteca JS liviana para mapas raster (aunque puede usar vector con plugins).

- Ideal para casos simples.
    
- Mucho más fácil de configurar que MapLibre.
    
- No usa WebGL, por lo tanto más limitado en estilización dinámica y rendimiento para muchos datos.
    

---

## 🧩 Otras definiciones clave

### CRS (Coordinate Reference System)

Sistema de referencia para interpretar las coordenadas geográficas. El más común en la web es **EPSG:3857** (Web Mercator).

### Zoom Levels

Los niveles de zoom determinan la escala. Nivel 0 muestra el mundo completo. Nivel 20 muestra un edificio con mucho detalle.

### Capas (Layers)

Las bibliotecas de mapas manejan datos en **capas** (ej: caminos, agua, texto, etiquetas). Puedes encender/apagar capas según necesidad.

### Fuente (Source)

Es el origen de los datos geoespaciales: puede ser un tile server, GeoJSON remoto o archivo local.

---

## 🧠 ¿Qué necesitas para tu aplicación con mapas?

Si estás construyendo una app en Astro y quieres usar mapas:

- **Leaflet** es buena para empezar rápido con tiles de OSM.
    
- **MapLibre** es mejor si quieres:
    
    - Usar **tiles vectoriales**.
        
    - Estilizar dinámicamente.
        
    - Tener control avanzado sobre las capas.
        

---

## ✅ Recomendaciones para tu app en Astro

- Usa un componente Astro o JSX con `MapLibre` para renderizar el mapa.
    
- Usa tiles vectoriales de MapTiler u OpenMapTiles.
    
- Puedes alojar tus propios estilos `.json` o usar uno preexistente.
    
- Si necesitas mostrar datos personalizados (como zonas, rutas o puntos de interés), usa capas GeoJSON.
    

---

¿Quieres que te prepare una plantilla inicial de componente con MapLibre y un mapa centrado en Madrid, por ejemplo?



# Related
[[DEM + Three js]]
[[QGIS]]
[[Madrid.js]]
