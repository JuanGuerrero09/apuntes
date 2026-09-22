
# Foundations

First studies of ANN for Rainfall-runoff date back froum early 90s

Typical issue with ANN for time series moved the field to RNN and outperformed traditional feed-forward ANN and then to LSTM (introduced 1997)

LSTM learns long-term dependencies (avoiding vanishing and exploding gradients)

Deep learning models for different water applications (water level, soil moisture) perform quite well



---

# Data availability

From CAMELS to Caravan

CAMELS - 671 catchments in USA at time of Kratzert study

ERA5 ()

If you are using **Caravan**, which is a standardized global database aggregating multiple CAMELS datasets into a single unified resource, then **yes—the meteorological data is completely derived from ERA5-Land.** To allow for consistent global modeling, the Caravan creators re-calculated all atmospheric forcing data (precipitation, temperature, etc.) using [Copernicus ERA5-Land reanalysis](https://cds.climate.copernicus.eu/datasets/reanalysis-era5-land-monthly-means).

---

# LSTM Breakthrough

Kratzert et al did an study on exploring the potential of the LSTM to describe rainfall-runoff of large number of catchments at daily timescale

[[LSTM]] works with different gates that allow to learn time dependent patterns.

The differences of the traditional RNN and the LSTM are the internal operations of the recurrent cell

> Maybe mention how the architecture works per se

Still need a lot of data to work, at least 15 years of daily data as lowe bound

---


# Different Architectures

- LSTM
- LSTM + GNN routing model
LSTM Derived


---


# Current State of Art 

Hindcasting, nowcasting, forecasting

AI-Based

Google, ECMWF

Graphcast

AIFS

Pangu

## Attention (maybe) is (still) all you need

Transformer based rainfall-runoff prediction

A lot of transformed based frequently


---

# Foundational Models

General learning applied to fine-tuned applications

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=33,8,33,93&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > applications of the foundation model principle to atmospheric sciences have been rare



## Time Series Foundation Models 

iTransformer

TSMixter

## Surrogate Models

## Mixture of Experts

[[Quang et al. (2026)]]

## Weather Foundation Models

ClimaX -> Aurora

Aurora: Focusess on number of different forecasting problems
AtmoRep: Problems from nowcasting to downscalling and bias correction
Prithvi: Divserse downstream tasks (downscalling, prediction, zero-shot forecast)

[[Bodnar et al (2025)]]



# What I understand on how to use it

![[Pasted image 20260916101616.png]]

# Thesis questions

If anything with downscalling wants to be done Prithivi could be a good choice since is already pre-finetuned for taht

How to include the spatio temporal forcings in an LSTM?

Aurora predicts meteorological variables, how to translate that to streamflow prediction?

Aurora works with gridded data, but, it predicts behaviour at spatial level, how can we merge this with rainfall-runoff.

Can we get computing power with a virtual machine from the ECMWF?

Use of LoRA with Aurora? The full 1.3B-parameter Aurora requires an NVIDIA GPU with at least 16–24 GB VRAM just to fit the weights and intermediate tensor activations into memory.

Fine tune? and if fine tue then for what?

Aurora predict atmospheric state, but which different would that be with using directly the ECMWF?

Aurora has Weather dynamics, atmospheric trace gases, air quality ($O_3$, $NO_2$, $CO$), and marine wave heights. But, what woud that help more than using directly something else as AIFS?

Ultra downscalling for local LSTM models at regionalized basin level.

Aurora works with 0.1 deg resolution, that would constrint the size of the basins for the case study / regonalization or would we add something like downscaling

Aurora ensembles for LSTM modelling?

Differentiable models?

Pirthvi showed that large transformed-based foundation model can learn mesoscale atmospreci evolution and other, what would be demostrating with using foudation models for this?

LSTM modelling with spatio-temporal forcings using a foundation model for ungauged basins. (Add ensemble?)

Should we do anything about extreme events estimation?

- **"Evaluating Deep-Learning Foundation Weather Models vs. Traditional NWP for Streamflow Forecasting":** Compare runoff predictions in an LSTM driven by Aurora-forecasted precipitation against the same LSTM driven by numerical weather predictions (e.g., ECMWF HRES or GFS).
    
- **"Zero-Shot Meteorological Forcing Downscaling for Flood Anticipation":** Evaluate Aurora's precipitation bias in mountainous/topographically complex river catchments and analyze whether bias-correction schemes (e.g., Quantile Delta Mapping) are strictly required before hydrological modeling.
    
- **"Benchmarking Atmospheric Foundation Mode**

### Coupling and Fine-Tuning for Regional Basins

Coupling works without requiring massive compute, as long as you keep the roles separated:

- **Two-stage pipeline (Recommended for low compute):** Run Aurora strictly in **inference mode** to produce weather fields ($P, T$), extract and average the data over your specific regional basin polygon, and use that 1D time-series output to train a lightweight downstream PyTorch LSTM. The LSTM requires almost no compute (trains in minutes on a laptop CPU/GPU).
    
- **End-to-end regional fine-tuning:** Fine-tuning the core 3D Swin Transformer layers of Aurora directly on regional basins is generally not recommended if compute is constrained. Updating Aurora's global 3D attention layers for a single basin leads to overfitting and high memory costs. If you want model representations rather than weather values, **freeze Aurora’s weights** entirely, extract its intermediate latent embeddings over the bounding box of your basin, and train a shallow Multi-Layer Perceptron (MLP) or 1D-CNN head to map those latents directly to discharge.

### Inference vs. `AuroraSmallPretrained`

- **Inference:** Running a model in "read-only" forward-pass evaluation mode (`torch.no_grad()`). No gradients are calculated, weights are not modified, and memory usage is at its minimum.
    
- **`AuroraSmallPretrained`:** A specific model architecture variant released by Microsoft. Aurora comes in multiple sizes: the standard flagship model (~1.3 billion parameters) and reduced-capacity variants (`SmallPretrained`) designed for testing, lower VRAM footprints, and rapid experimentation. You run _inference_ on top of _`AuroraSmallPretrained`_.