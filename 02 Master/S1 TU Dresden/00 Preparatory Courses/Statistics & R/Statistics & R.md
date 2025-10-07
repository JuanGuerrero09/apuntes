---
Class: "[[Statistics & R]]"
Date: 2025-10-06
Last Modified: Monday 6th October 2025 08:20
Professor: Robert Schlicht
email:
tags:
---
# 👨🏽‍🏫Professor


# 📖Summary


# 🕸️Resources and Relevant Links
[[https://www.practicaldatascience.org/notebooks/PDS_not_yet_in_coursera/00_setup_env/jupyter_r_notebooks.html | R in Jupyter]]


# 📚Notes

## R Installation in VS Code

Add enviroment variables 
![[Pasted image 20251006092618.png]]


En powershell 
```powershell
$env:Path += ";C:\Program Files\R\R-4.5.1\bin"
R --version

```
Then in the R prompt
```R
# Crea carpeta personal de librerías (si no existe)
dir.create("C:/Users/Juan/Documents/R/win-library/4.5", recursive = TRUE)

# Usa esa carpeta como librería por defecto
.libPaths("C:/Users/Juan/Documents/R/win-library/4.5")

# Instala el paquete allí
install.packages("languageserver", repos = "https://cran.r-project.org/")

# Prueba que se cargue
library(languageserver)

```

Edita el archivo `~/.bashrc` de Git Bash:

`nano ~/.bashrc`

Añade estas líneas al final:

`# Añadir R al PATH export PATH="/c/Program Files/R/R-4.5.1/bin:$PATH"`

Guarda (`Ctrl+O`, `Enter`) y cierra (`Ctrl+X`), luego recarga la configuración:

`source ~/.bashrc`

Ahora prueba:

`R --version Rscript --version`

Deberías ver la versión de R correctamente.