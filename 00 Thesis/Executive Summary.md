### Joint Executive Summary (Meetings 1 & 2)

**Thesis Title / Focus:** Spatiotemporal Machine Learning & Foundation Models for Sub-Daily Flood Forecasting (ECMWF / JRC / IHE Delft)

**1. Research Motivation & Core Challenge**

- **The Problem:** Traditional lumped hydrological models and standard 1D LSTMs flatten gridded weather data into catchment-wide spatial averages ($P_{\text{mean}}$), erasing storm localization, velocity, and spatial concentration critical for sub-daily (1-hour) flash flood peaks.
    
- **The Operational Gap:** High-resolution spatial raster products from operational centers (ECMWF ERA5-Land, RADKLIM radar, EFAS) are currently underutilized in purely temporal streamflow models.
    

**2. Methodological Evolution & Architecture**

- **Spatial Encoding (From CNNs to GNNs / Vision Transformers):** Due to irregular catchment boundaries and topological river connectivity, the approach evolved from pure 2D raster CNNs to **Graph Neural Networks (GNNs)** and **Spatial Transformers** to construct spatial embeddings across river networks.
    
- **Modeling Strategy (Foundation Models & Fine-Tuning):** Instead of training large networks from scratch, the framework leverages existing pre-trained Foundation Models (e.g., **HydroFM**, **Aurora**, or time-series Transformer backbones) fine-tuned on hydrological targets.
    
- **Temporal Strategy & Downscaling:** Initial model calibration and fine-tuning are conducted at the **daily scale**, followed by a dedicated **hourly downscaling module** applied directly to streamflow ($Q$) to capture extreme sub-daily flood peaks efficiently.
    

**3. Data Assets & Geographical Domain**

- **Geographical Scope:** Scaling from **CAMELS-DE-1h** (Germany) to continental European/global scale using **Caravan** and **EFAS / IFAS (Copernicus / JRC)** continuous simulated river network data.
    
- **Meteorological Grids:** ECMWF ERA5-Land reanalysis ($0.1^\circ$) and high-resolution radar products.
    
- **Key Challenges:** Modeling altered hydrologic regimes caused by European reservoir networks and dams.
    

**4. Project Scope & Execution Plan**

- Maintain MSc thesis feasibility by building on existing cloud pipelines (Google Cloud / Azure), pre-computed baselines (HBV, CAMELS/Caravan LSTM baselines), and pre-trained foundation models.
    
- Deliver conceptual proposal, state-of-the-art review (Foundation Models + GNNs in hydrology), and dataset baseline benchmarking by the mid-September milestone.