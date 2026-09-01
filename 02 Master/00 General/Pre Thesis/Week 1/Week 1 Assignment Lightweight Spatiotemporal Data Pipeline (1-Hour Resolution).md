
**Objective:** Build a lightweight, memory-efficient Python pipeline that ingests gridded 1-hour ERA5-Land precipitation NetCDF files, clips them to a small catchment boundary, extracts both catchment-averaged (lumped) and 3D grid (spatial) representations, and synchronizes them with hourly streamflow observations.

_Theory:_ Machine learning models require spatial grids and gauge observations to share identical coordinates, bounding extents, and timestamps. By reprojecting coordinate reference systems (CRS), cropping rasters to small basin geometries, and extracting both 1D spatial averages ($P_{\text{mean}}$ for LSTMs) and 3D tensors ($T \times H \times W$ for CNNs), we convert raw environmental data into clean training pairs ($X_t \to Y_t$) while keeping CPU/RAM usage minimal.

### 1. Data Downloads & Sources

To keep processing fast and lightweight on a standard laptop, download a small geographical bounding box and limit your timeframe to **7–14 days**. You need three datasets for a single test catchment. Create a local folder structure named `data/` with subfolders `raw_rasters/`, `catchments/`, and `streamflow/`.

- **Catchment Boundary Shapefile (.shp)**
    - **Resource:** [CAMELS-DE Dataset (Zenodo)](https://www.google.com/search?q=https://zenodo.org/records/10838531&authuser=2)
    - **Action:** Download a single catchment geometry folder (`.shp`, `.shx`, `.dbf`, `.prj`). Select a small basin (< 500 km²). Place files in `data/catchments/`.

- **Gridded Precipitation NetCDF (.nc)**
    
	- **Dataset:** ERA5-Land Hourly Total Precipitation (`tp`).
	    
	- **Where to download:** [Copernicus Climate Data Store (CDS)](https://cds.climate.copernicus.eu/).
	    
	- **Parameters to select:**
	    
	    - _Product:_ ERA5-Land hourly data on single levels.
	        
	    - _Variable:_ Total precipitation (`tp`).
	        
	    - _Year/Month:_ Select 1 month (e.g., January 2021).
	        
	    - _Sub-region extraction:_ Select Bounding Box covering your catchment (e.g., North: 52°, West: 6°, South: 49°, East: 11°).
	        
	    - _Format:_ NetCDF4 (`.nc`).
	        
	- **Destination:** Save as `data/raw_rasters/era5_precip_202101.nc`.
        
    - **Action:** Select _Total Precipitation (`tp`)_ for **7 to 14 days** (e.g., Jan 1–Jan 14, 2021). Use the CDS bounding box selector to restrict the download area tightly around your catchment coordinates (e.g., a $1^{\circ} \times 1^{\circ}$ box). Save as `data/raw_rasters/era5_precip_short.nc` (< 5 MB).
        
- **Hourly Streamflow Discharge (.csv)**
    
    - **Resource:** CAMELS-DE or CAMELS-GB hourly streamflow files from the Zenodo/CEH links above.

	- **Where to download:** Same repository as the shapefile (Zenodo / EIDC).
    
	- **What to extract:** The hourly streamflow file (`Q_hourly_catchmentID.csv`) containing `timestamp` and `discharge_m3s` (or `mm/h`).
        
    - **Action:** Extract the hourly CSV corresponding to your catchment ID containing `timestamp` and `discharge_m3s` columns. Save as `data/streamflow/gauge_sample.csv`.

### 2. Environment Setup

Install the lightweight GIS, raster, and data processing packages in your terminal:

```python
uv add geopandas xarray rioxarray netcdf4 pandas matplotlib shapely h5netcdf
```

### 3. Step-by-Step Tasks

- **Task 1: Spatial & CRS Alignment**
    
    Load the catchment shapefile with `geopandas` and reproject its Coordinate Reference System to `EPSG:4326` (WGS84) to match the ERA5-Land grid projection.
    
- **Task 2: Lightweight Raster Clipping**
    
    Open the NetCDF dataset with `xarray`, assign its CRS, convert precipitation from meters ($m$) to millimeters ($mm$), and crop the grid to the catchment geometry using `rioxarray.clip()`.
    
- **Task 3: Feature Extraction**
    
    Compute two representations from the clipped dataset:
    
    1. **1D Lumped Time Series:** Average across spatial dimensions to get $P_{\text{mean}}(t)$.
        
    2. **3D Spatial Tensor:** Extract the raw matrix of shape $(T \times H \times W)$, replacing out-of-catchment `NaN` values with `0.0`.
        
- **Task 4: Temporal Alignment & Hydrograph Verification**
    
    Parse the hourly streamflow CSV, merge it with $P_{\text{mean}}(t)$ on synchronized UTC timestamps, and plot an inverted precipitation hyetograph over the discharge hydrograph.

### 4. Assignment Implementation (`assignment_week1.py`)

Complete the function implementations marked with `## TODO`. The execution loop and plotting code are fully structured below.

Python

```
import geopandas as gpd
import xarray as xr
import rioxarray
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from shapely.geometry import mapping


# =====================================================================
# FUNCTION IMPLEMENTATIONS (COMPLETE THESE)
# =====================================================================

def load_and_reproject_catchment(shapefile_path: str, target_crs: str = "EPSG:4326") -> gpd.GeoDataFrame:
    """
    Loads a catchment shapefile using geopandas and reprojects it to the target CRS.
    """
    ## TODO: Read the shapefile using geopandas.read_file()
    ## TODO: Check if gdf.crs matches target_crs; if not, reproject using gdf.to_crs(target_crs)
    ## TODO: Return the reprojected GeoDataFrame
    pass


def load_and_clip_raster(nc_path: str, catchment_gdf: gpd.GeoDataFrame, var_name: str = "tp") -> xr.Dataset:
    """
    Loads an ERA5-Land NetCDF file, configures spatial CRS, converts precipitation 
    units from meters to mm, and clips the raster to the catchment boundary.
    """
    ## TODO: Open NetCDF using xr.open_dataset(nc_path)
    ## TODO: Convert 'tp' from meters to mm by multiplying by 1000.0
    ## TODO: Set CRS to 'EPSG:4326' using ds.rio.write_crs()
    ## TODO: Set spatial dimensions ('longitude', 'latitude') using ds.rio.set_spatial_dims()
    ## TODO: Clip raster using ds.rio.clip(catchment_gdf.geometry.apply(mapping), catchment_gdf.crs)
    ## TODO: Return the clipped dataset
    pass


def extract_forcing_representations(clipped_ds: xr.Dataset, var_name: str = "tp") -> tuple[pd.DataFrame, np.ndarray]:
    """
    Extracts both a 1D lumped time series (spatial mean) and a 3D spatial tensor 
    (Time x Height x Width) from the clipped raster dataset.
    """
    ## TODO: Compute spatial mean over dimensions ['latitude', 'longitude']
    ## TODO: Convert spatial mean result to a pandas DataFrame and reset index
    ## TODO: Extract 3D numpy array (.values) from clipped_ds[var_name]
    ## TODO: Replace NaN values in 3D array with 0.0 using np.nan_to_num()
    ## TODO: Return (lumped_df, spatial_tensor)
    pass


def align_spatiotemporal_data(lumped_df: pd.DataFrame, streamflow_csv_path: str) -> pd.DataFrame:
    """
    Loads hourly streamflow observations, parses timestamps, and merges 
    with the lumped precipitation time series on synchronized dates.
    """
    ## TODO: Load streamflow CSV using pd.read_csv() with parse_dates=['timestamp']
    ## TODO: Ensure timestamp columns share identical UTC formatting in both DataFrames
    ## TODO: Perform inner join on timestamps using pd.merge()
    ## TODO: Return synchronized DataFrame
    pass


# =====================================================================
# MAIN PIPELINE EXECUTION & PLOTTING
# =====================================================================

def main():
    # Local Lightweight Data Paths
    CATCHMENT_PATH = "data/catchments/sample_catchment.shp"
    ERA5_NC_PATH = "data/raw_rasters/era5_precip_short.nc"
    STREAMFLOW_CSV_PATH = "data/streamflow/gauge_sample.csv"

    print("--- Step 1: Loading Catchment Boundary ---")
    catchment_gdf = load_and_reproject_catchment(CATCHMENT_PATH)

    print("--- Step 2: Clipping Raster Grid ---")
    clipped_ds = load_and_clip_raster(ERA5_NC_PATH, catchment_gdf)

    print("--- Step 3: Extracting Representations ---")
    lumped_df, spatial_tensor = extract_forcing_representations(clipped_ds)

    print("--- Step 4: Aligning Streamflow & Forcing ---")
    aligned_data = align_spatiotemporal_data(lumped_df, STREAMFLOW_CSV_PATH)

    # Pipeline Verification & Plotting
    if aligned_data is not None and spatial_tensor is not None:
        print("\nPipeline Status: SUCCESS")
        print(f"Aligned Hourly Steps: {len(aligned_data)}")
        print(f"Spatial Tensor Shape (T x H x W): {spatial_tensor.shape}")

        fig, ax1 = plt.subplots(figsize=(10, 4))
        ax2 = ax1.twinx()

        # Discharge Hydrograph (Line)
        ax1.plot(aligned_data['timestamp'], aligned_data['discharge_m3s'], color='navy', label='Discharge Q (m³/s)')
        # Precipitation Hyetograph (Inverted Bars)
        ax2.bar(aligned_data['timestamp'], aligned_data['p_mean'], color='skyblue', alpha=0.6, width=0.03, label='Precip P (mm/h)')

        ax2.invert_yaxis()
        ax1.set_xlabel('Timestamp (UTC)')
        ax1.set_ylabel('Discharge Q (m³/s)', color='navy')
        ax2.set_ylabel('Precipitation P (mm/h)', color='skyblue')
        plt.title('Synchronized 1-Hour Forcing vs. Discharge')
        
        plt.tight_layout()
        plt.savefig('week1_verification_plot.png')
        plt.show()


if __name__ == "__main__":
    main()
```