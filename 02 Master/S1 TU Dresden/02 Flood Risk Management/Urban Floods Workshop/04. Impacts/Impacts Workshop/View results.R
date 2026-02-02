required_packages <- c("data.table", "purrr", "ggplot2", "patchwork")

for (pkg in required_packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE, type = "binary")
    library(pkg, character.only = TRUE)
  }
}

paths_results <- r"(C:\Users\Juan\Documents\Obsidian Vault\Apuntes\02 Master\S1 TU Dresden\02 Flood Risk Management\Urban Floods Workshop\04. Impacts\Impacts Workshop\Impacts Workshop\results)"
setwd(paths_results)
files <- list.files(pattern = ".csv")
lu_impacts <- grep(paste0("^", 'lu_series'), files, value = TRUE)
manhole_impacts <- grep(paste0("^", 'Manhole_Damage'), files, value = TRUE)
manhole_flood <- grep(paste0("^", 'Manhole_Flood'), files, value = TRUE)

read_csv_to_data_table <- function(file_path) {
  data.table(fread(file_path))
}

plotcompare <- function(filelist, landuse) {
  
  list_tables <- map(filelist, read_csv_to_data_table)
  
  if (startsWith(filelist[1], "lu")) {
    endings <- sub("lu_series_(.*)(\\.csv)", "\\1", filelist)
    Rperiod <- gsub("^[^_]*_(.*)$", "\\1", endings)
    Rperiod[!grepl("_", endings)] <- "NO LID"
    
  } else if(startsWith(filelist[1], "Manhole_Flood")) {
    endings <- sub("Manhole_Floods_(.*)(\\.csv)", "\\1", filelist)
    Rperiod <- gsub("^[^_]*_(.*)$", "\\1", endings)
    Rperiod[!grepl("_", endings)] <- "NO LID"
    
  } else if(startsWith(filelist[1], "Manhole_Damage")) {
    endings <- sub("Manhole_Damage_(.*)(\\.csv)", "\\1", filelist)
    Rperiod <- gsub("^[^_]*_(.*)$", "\\1", endings)
    Rperiod[!grepl("_", endings)] <- "NO LID"
  }
  
  combined_data <- rbindlist(list_tables)
  combined_data[, Time := as.POSIXct(Time, format = "%H:%M")]
  group_lengths <- sapply(list_tables, nrow)
  combined_data[, Group := rep(1:length(list_tables), times = group_lengths)]
  
  impact <- landuse
  if (grepl("lood", impact)) {
    ylabel <- "Flooded Area [m²]" 
  } else {
    ylabel <- "Damages [€]"
  }
  
  plot <- ggplot(combined_data, aes_string(x = "Time", y = paste0('`', impact, '`'), 
                                           color = "as.factor(Group)", 
                                           group = "as.factor(Group)")) +
    geom_line(linewidth = 1.5) +
    labs(title = impact, x = "Time", y = ylabel) +
    scale_color_discrete("Series", labels = Rperiod) +
    scale_y_continuous(labels = function(x) format(x, big.mark = ",", scientific = FALSE)) +
    theme_minimal()
  
  print(plot)
}

plotmanhole <- function(dt1, dt2, title) {
  
  top_areas <- dt2[order(-`Total Area`)][1:3, .(Node, `Total Area`)]
  top_damage <- dt1[order(-`Total Damage`)][1:3, .(Node, `Total Damage`)]
  
  plot_areas <- ggplot(top_areas, aes(x = Node, y = `Total Area`)) +
    geom_bar(stat = "identity", fill = "skyblue", width = 0.5) +
    labs(title = "Top 3 Total Areas by Node",
         y = "Total Area [m²]",
         x = "Node") +
    scale_y_continuous(labels = function(x) format(x, big.mark = ",", scientific = FALSE)) +
    theme_minimal()
  
  plot_damage <- ggplot(top_damage, aes(x = Node, y = `Total Damage`)) +
    geom_bar(stat = "identity", fill = "salmon", width = 0.5) +
    labs(title = "Top 3 Total Damages by Node",
         y = "Total Damage [€]",
         x = "Node") +
    scale_y_continuous(labels = function(x) format(x, big.mark = ",", scientific = FALSE)) +
    theme_minimal()
  
  # Use patchwork instead of gridExtra/cowplot
  combined_plot <- plot_areas + plot_damage + 
    plot_annotation(title = title, 
                    theme = theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5)))
  
  print(combined_plot)
}

for (i in 1:length(manhole_impacts)) {
  title <- manhole_impacts[i]
  title <- sub("Manhole_Damage_(.*)(\\.csv)", "\\1", title)
  
  manhi <- read_csv_to_data_table(manhole_impacts[i])
  manhf <- read_csv_to_data_table(manhole_flood[i])
  
  plotmanhole(manhi, manhf, title)
}

plotcompare(lu_impacts, "Total Damage")

