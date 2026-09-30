**Executive Summary: Spatiotemporal Machine Learning for Sub-Daily Flood Forecasting**

### 1. The Core Scientific Problem

Standard deep learning benchmarks in hydrology (such as catchment-scale LSTMs) aggregate high-resolution gridded precipitation into a single catchment-wide average ($P_{\text{mean}}$).

At sub-daily (1-hour) timescales, this spatial averaging creates a major physical blind spot:

- It erases storm location, velocity, and spatial concentration. A flash flood caused by an intense storm at the catchment outlet looks identical to a delayed storm at the headwaters.
    
- Operational weather forecasting centers (ECMWF, JRC, DWD) produce rich spatial raster grids (ERA5-Land, radar, ICON-D2) that are currently flattened or underutilized in pure 1D temporal networks.
    

### 2. The Primary Research Direction (Spatial CV + Temporal LSTM)

```
[Gridded Precipitation Maps (ERA5 / Radar)] 
                     │
                     ▼
┌───────────────────────────────────────────────────────────┐
│     Computer Vision Spatial Encoder (2D CNN / Autoencoder)│
│       --> Extracts low-dimensional spatial embedding      │
└────────────────────────────┬──────────────────────────────┘
                             │
                             ▼
┌───────────────────────────────────────────────────────────┐
│              Recurrent Network (Temporal LSTM)            │
│       --> Ingests spatial embeddings + static attributes  │
└────────────────────────────┬──────────────────────────────┘
                             │
                             ▼
     [Hourly Streamflow ($Q$) & Flood Peak Hydrograph]
```

- **Core Hypothesis:** Extracting latent spatial embeddings from gridded rainfall fields via a Computer Vision encoder preserves storm localization and improves 1-hour peak flow timing and magnitude compared to traditional lumped spatial averages.
    
- **Proposed Architecture:** A 2D Convolutional Neural Network (or Convolutional Autoencoder) compresses the 2D spatial precipitation grid into a compact latent vector ($d = 16$ to $32$) at each timestep, which is then fed sequentially alongside static catchment descriptors into a 2-layer LSTM.
    

### 3. Alternative Research Angles for Discussion

- **Angle A: Hybrid Post-Processing of Physical Models (JRC Focus)**
    
    - Use an LSTM as a post-processor to correct systematic phase and peak discharge errors from physical forecasting systems (e.g., LISFLOOD or GloFAS).
        
    - Introduce **physics-informed loss constraints** (e.g., water mass balance penalties or reservoir operational boundaries).
        
- **Angle B: Multi-Timescale Downscaling (MTS-LSTM)**
    
    - Train a coarse-scale model (daily or 6-hourly) to capture long-term soil moisture and baseflow dynamics, and pair it with a lightweight hourly downscaling module for computational efficiency.
        

### 4. Data Assets & Benchmark Architecture

- **Target Hydrological Dataset:** **CAMELS-DE-1h** (1,611 catchments across Germany with 2001–2024 hourly discharge, precipitation, and static catchment attributes).
    
- **Meteorological Grids:** ERA5-Land reanalysis ($0.1^\circ$ hourly grids) or RADKLIM-YW radar ($1\text{ km}$ hourly grids).
    
- **Pre-Computed Baselines for Direct Comparison:** The CAMELS-DE-1h dataset provides pre-trained benchmark models (regional LSTM ensemble and calibrated HBV conceptual model), giving an immediate benchmark to demonstrate added value.
    

### 5. Institutional Roles & Synergy

- **ECMWF / JRC:** Provides domain guidance on operational flood forecasting challenges, access to gridded atmospheric/reanalysis datasets, and real-world evaluation metrics.
    
- **IHE Delft (Prof. Gerard Corzo):** Academic supervision in hydroinformatics, spatial pattern recognition, and neural network design.