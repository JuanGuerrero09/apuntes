---
materia: <% tp.file.folder() %>
profesor: Nombre del profesor
fecha: "{{date}}"
tipo: Clase
etiquetas:
  - universidad
  - <% tp.date.now("YYYY") %>/<% tp.date.now("MM") %>
  - <% tp.file.folder(true) %>
dudas: []
tareas: []
lecturas: []
referencias: []
enlaces_relacionados: []
---

# <% tp.file.title %>

## Resumen
> Breve resumen del contenido de la clase, lectura o actividad.


---

## Conceptos clave
- **Concepto 1:** Definición clara.
- **Concepto 2:** ...

---

## Notas de clase
- Punto clave 1
- Punto clave 2
- Frase del profesor: “...”

---

## Ejemplos y ejercicios

```markdown
### Ejemplo 1
- Enunciado
- Solución paso a paso
