if (!require("pacman", quietly = TRUE)) install.packages("pacman")

pacman::p_load(data.table, xts, zoo, devtools, install = TRUE)

if (!requireNamespace("SWMMR", quietly = TRUE)) {
  devtools::install_github('scheidan/SWMMR', upgrade = "never", force = FALSE)
}
library(SWMMR)

pathswmm_inp <-r"(C:\Users\Juan\Documents\Obsidian Vault\Apuntes\02 Master\S1 TU Dresden\02 Flood Risk Management\Urban Floods Workshop\04. Impacts\Impacts Workshop)"

setwd(pathswmm_inp)

resfile <- openSWMMOutput("MS5_RG_50T.out")
nodesres<-readNodes(resfile)
nodesres<-readNodes(resfile, names=NULL,variable ="flow lost to flooding")

flood_series<- (nodesres[[1]])
new_index <- as.POSIXct(sub("\\.\\d+$", "", as.character(index(flood_series))))

# Assign the new index back to your xts object
index(flood_series) <- new_index

column_sums <- colSums(flood_series)
selected_columns <- column_sums >= 0.05

floods_filtered <- flood_series[, selected_columns]
cumulative_sum <- apply(floods_filtered, 1, cumsum)
first_index <- min(which(colSums(cumulative_sum > 0) > 0))
last_index <- max(which(colSums(cumulative_sum > 0) > 0))
floods_filtered <- floods_filtered[first_index:last_index, ]

flood<-as.data.table(floods_filtered,keep.rownames = TRUE)
savename <- "floodseries_MS5_noLID_5T.csv"

write.csv(flood, file = savename,row.names = FALSE, quote = FALSE)
