## Week 1: Spatiotemporal Data Pipeline (`xarray`, `rioxarray`, `geopandas`)

**Goal:** Master loading, clipping, aligning, and processing ERA5-Land gridded NetCDF files alongside CAMELS-1h streamflow CSVs.

### Focus & Core Skills

- Reading and indexing 4D/5D NetCDF/GRIB rasters (`time`, `latitude`, `longitude`, `variable`).
- Reprojecting spatial coordinate reference systems (CRS) and cropping raster grids using catchment shapefiles (`geopandas` + `rioxarray`).
- Aligning sub-daily timestamps (UTC adjustments, missing hourly timestamps, time-resampling).

### Mini-Project Deliverable

Write a Python script that:

1. Loads 1 month of ERA5-Land gridded hourly precipitation (`.nc`).
2. Loads a CAMELS catchment boundary polygon (`.shp`).
3. Crops the precipitation raster to the catchment boundary and extracts both the **spatial mean** ($P_{\text{mean}}$) and the **raw spatial tensor** ($T \times H \times W$).
4. Aligns the raster time index with the catchment’s hourly streamflow discharge observations (`.csv`).

## Week 2: Deep Learning for Hydrology (`neuralhydrology` & PyTorch)

**Goal:** Understand state-of-the-art LSTM streamflow modeling, custom hydrological loss functions, and the `neuralhydrology` framework.

### Focus & Core Skills

- Building standard LSTMs and Multi-Timescale LSTMs (MTS-LSTM) in PyTorch.
    
- Implementing hydrological evaluation metrics as PyTorch loss functions (Kling-Gupta Efficiency - KGE, Nash-Sutcliffe Efficiency - NSE).
    
- Exploring the `neuralhydrology` codebase (developed by Frederik Kratzert et al.) to understand how standard CAMELS benchmarks are configured.
    

### Mini-Project Deliverable

Build a standalone PyTorch training loop on one CAMELS-1h catchment:

1. Feed hourly $P_{\text{mean}}$, temperature, and static attributes into a 2-layer LSTM.
    
2. Train the model using a custom **1 - KGE** loss function.
    
3. Plot simulated vs. observed hydrographs and compute Peak Flow Bias ($\vert{}\text{Max}(Q_{\text{sim}}) - \text{Max}(Q_{\text{obs}})\vert{} / \text{Max}(Q_{\text{obs}})$).
    

## Week 3: Spatial Feature Encoders (`torchvision` & CNNs)

**Goal:** Learn how to compress 2D spatial rainfall grids into low-dimensional latent vectors using Computer Vision architectures.

### Focus & Core Skills

- 2D Convolutional layers (`nn.Conv2d`), Spatial Pooling (`nn.MaxPool2d`, `nn.AdaptiveAvgPool2d`), and Batch Normalization.
    
- Building a **Convolutional Autoencoder** for spatial grid reconstruction.
    
- Dimensionality reduction: Compressing an $N \times N$ precipitation matrix into a $d$-dimensional latent embedding vector (e.g., 16 or 32 floats).
    

### Mini-Project Deliverable

Create a spatial encoder in PyTorch:

1. Generate synthetic or extracted 2D precipitation grids ($32 \times 32$ spatial resolution).
    
2. Train a Convolutional Autoencoder to compress the grid into a vector of length 16 and reconstruct the original image.
    
3. Visualize the spatial feature maps (activations) to verify that the encoder isolates storm centers and high-intensity rainfall pockets.
    

## Week 4: End-to-End Hybrid Integration (CV + LSTM)

**Goal:** Merge the Week 3 spatial encoder with the Week 2 LSTM model to build a functional prototype of **Pathway A**.

### Focus & Core Skills

- Flattening time and batch dimensions (`B * T, C, H, W`) to pass sequences through a 2D CNN efficiently.
    
- Concatenating spatial latent vectors with static catchment attributes before passing them to the LSTM.
    
- Benchmarking the hybrid spatiotemporal model against the lumped baseline from Week 2.
    

### Mini-Project Deliverable

Run an end-to-end benchmark comparison on a single catchment:

- **Model A (Baseline):** Lumped LSTM using $P_{\text{mean}}$.
    
- **Model B (Hybrid):** Spatial Encoder + LSTM using raw ERA5-Land $H \times W$ grids.
    
- Compare KGE scores and peak flow accuracy between both models during an extreme rainfall event.
    

## Monthly Milestone Summary

|**Week**|**Target Module**|**Output Artifact**|
|---|---|---|
|**Week 1**|`xarray` & `geopandas`|Data loader converting NetCDF grids + CSVs to PyTorch Tensors|
|**Week 2**|PyTorch & `neuralhydrology`|Baseline LSTM trained with KGE Loss on CAMELS-1h|
|**Week 3**|`torchvision` (CNNs)|Trained 2D Convolutional Autoencoder for rainfall map compression|
|**Week 4**|Hybrid Spatiotemporal Model|Comparative benchmark notebook (Lumped LSTM vs. CNN-LSTM)|