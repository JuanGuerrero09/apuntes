## 1. Env & Packages --------------------------------------------------------------
if (!require("pacman", quietly = TRUE)) install.packages("pacman")
pacman::p_load(data.table, xts, zoo, devtools, install = TRUE)

if (!requireNamespace("SWMMR", quietly = TRUE)) {
  devtools::install_github('scheidan/SWMMR', upgrade = "never", force = FALSE)
}
library(SWMMR)

## 2. Pathway --------------------------------------------------------------
# Ruta donde Python guardó los 36 archivos .out
out_path <- r"(C:\Users\Juan\Documents\dev-win\pyswmm-workshop\files\Outs)"
result_path <- file.path(out_path, "floodseries_result")

if (!dir.exists(result_path)) {
  dir.create(result_path, recursive = TRUE)
}

## 3. Obtener los 36 archivos .out ------------------------------------------
out_files <- list.files(
  path = out_path,
  pattern = "\\.out$",
  full.names = TRUE,
  ignore.case = TRUE
)

message("Total de archivos encontrados: ", length(out_files))

## 4. Batch Process --------------------------------------------------------------
for (out_file in out_files) {
  
  message("Processing: ", basename(out_file))
  
  ## 4.1 Abrir archivo .out
  resfile <- openSWMMOutput(out_file)
  
  ## 4.2 Leer inundación
  nodesres <- tryCatch({
    readNodes(resfile, names = NULL, variable = "flow lost to flooding")
  }, error = function(e) {
    # Usar la función específica de SWMMR para cerrar en caso de error
    if (exists("resfile")) closeSWMMOutput(resfile)
    return(NULL)
  })
  
  if (is.null(nodesres)) next
  
  flood_series <- nodesres[[1]]
  
  ## 4.3 Corrección de Tiempo
  new_index <- as.POSIXct(
    sub("\\.\\d+$", "", as.character(index(flood_series)))
  )
  index(flood_series) <- new_index
  
  ## 4.4 Filtro de inundación significativa
  column_sums <- colSums(flood_series, na.rm = TRUE)
  selected_columns <- column_sums >= 0.05
  
  if (!any(selected_columns)) {
    message("   (!) No flooding found in: ", basename(out_file))
    closeSWMMOutput(resfile)
    next
  }
  
  floods_filtered <- flood_series[, selected_columns]
  
  ## 4.5 Recorte de ventana de tiempo (Crop)
  cumulative_sum <- apply(floods_filtered, 1, cumsum)
  valid_rows  <- which(colSums(cumulative_sum > 0) > 0)
  
  if (length(valid_rows) > 0) {
    first_index <- min(valid_rows)
    last_index  <- max(valid_rows)
    floods_filtered <- floods_filtered[first_index:last_index, ]
  }
  
  ## 4.6 Convertir a data.table
  flood_dt <- as.data.table(floods_filtered)
  flood_dt[, datetime := index(floods_filtered)]
  setcolorder(flood_dt, "datetime")
  
  if ("index" %in% names(flood_dt)) flood_dt[, index := NULL]
  
  # Redondear numéricos
  numeric_cols <- names(flood_dt)[sapply(flood_dt, is.numeric)]
  flood_dt[, (numeric_cols) := lapply(.SD, round, 2), .SDcols = numeric_cols]
  
  ## 4.7 Guardar CSV
  out_name <- tools::file_path_sans_ext(basename(out_file))
  savename <- file.path(result_path, paste0("floodseries_", out_name, ".csv"))
  
  write.csv(flood_dt, file = savename, row.names = FALSE, quote = FALSE)
  
  ## 4.8 LIMPIEZA CORRECTA DE CONEXIÓN
  # Esta es la función correcta para objetos de clase SWMMfile
  closeSWMMOutput(resfile)
  
  message("   [OK] Saved: ", basename(savename))
}

message("\n¡Listo! Todos los archivos procesados sin conexiones abiertas.")