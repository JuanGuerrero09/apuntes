## 1. Env & Packages --------------------------------------------------------------
if (!require("pacman", quietly = TRUE)) install.packages("pacman")

pacman::p_load(data.table, xts, zoo, devtools, install = TRUE)

if (!requireNamespace("SWMMR", quietly = TRUE)) {
  devtools::install_github('scheidan/SWMMR', upgrade = "never", force = FALSE)
}
library(SWMMR)

## 2. Pathway --------------------------------------------------------------
out_path <- r"(C:\Users\Juan\Documents\Obsidian Vault\Apuntes\02 Master\S1 TU Dresden\02 Flood Risk Management\Urban Floods Workshop\03. Infrastructure)"


result_path <- file.path(out_path, "floodseries_result")

if (!dir.exists(result_path)) {
  dir.create(result_path)
}

## 3. get all .out-files ----------------------------------------------------
out_files <- list.files(
  path = out_path,
  pattern = "\\.out$",
  full.names = TRUE,
  ignore.case = TRUE
)


## 4. batch process --------------------------------------------------------------
for (out_file in out_files) {
  
  message("Processing: ", basename(out_file))
  
  ## 4.1 read SWMM out
  resfile <- openSWMMOutput(out_file)
  
  nodesres <- readNodes(
    resfile,
    names = NULL,
    variable = "flow lost to flooding"
  )
  
  flood_series <- nodesres[[1]]
  
  ## 4.2 Corrected Time Index
  new_index <- as.POSIXct(
    sub("\\.\\d+$", "", as.character(index(flood_series)))
  )
  index(flood_series) <- new_index
  
  ## 4.3 Filter nodes by cumulative flood volume
  column_sums <- colSums(flood_series, na.rm = TRUE)
  selected_columns <- column_sums >= 0.05
  
  if (!any(selected_columns)) {
    warning("No flooding found in: ", basename(out_file))
    next
  }
  
  floods_filtered <- flood_series[, selected_columns]
  
  ## 4.4 The time period during which flooding occurred
  cumulative_sum <- apply(floods_filtered, 1, cumsum)
  
  valid_rows  <- which(colSums(cumulative_sum > 0) > 0)
  first_index <- min(valid_rows)
  last_index  <- max(valid_rows)
  
  floods_filtered <- floods_filtered[first_index:last_index, ]
  
  ## 4.5 Convert to data.table
  flood_dt <- as.data.table(floods_filtered)
  
  flood_dt[, datetime := index(floods_filtered)]
  setcolorder(flood_dt, "datetime")
  
  ## Remove duplicate index columns
  flood_dt[, index := NULL]
  
  ## Round numerical series to 2 decimal places
  flood_dt[, (names(flood_dt)[sapply(flood_dt, is.numeric)]) :=
             lapply(.SD, round, 2),
           .SDcols = is.numeric]
  
  ## 4.6 Generate output
  out_name <- tools::file_path_sans_ext(basename(out_file))
  
  savename <- file.path(
    result_path,
    paste0("floodseries_", out_name, ".csv")
  )
  
  ## 4.7 save CSV
  write.csv(
    flood_dt,
    file = savename,
    row.names = FALSE,
    quote = FALSE
  )
  
}

message("All .out files processed. Results saved in 'floodseries_result'.")


