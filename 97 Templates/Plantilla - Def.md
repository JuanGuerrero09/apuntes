---
Type: Definition
fecha: <% tp.date.now("YYYY-MM-DD") %>
---
# <% this.app.workspace.getActiveFile().basename %>
<% tp.config.target_file.basename %>

> Escribe aquí la definición del término de forma clara y concisa.

---

## 📚 Mencionado en

```dataview
table file.link as "Documento"
from ""
where contains(file.outlinks, this.file.link)
