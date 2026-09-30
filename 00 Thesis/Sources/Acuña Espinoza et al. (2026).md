---
Title: "Everything everywhere all at once: A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting"
Authors:
Journal:
Date:
Year:
Status: Reading
tags:
Source: "[[Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting.pdf]]"
---
Source:

Keywords:
## Abstract

Long short-term memory ([[LSTM]]) networks have demonstrated state-of-the-art capabilities in operational flood forecasting, with recent missing-data handling strategies further improving pipeline robustness. Building on these advancements, we introduce the multi-frequency masked-forecasting LSTM (MF2LSTM), a model architecture that combines missing-data workflows with multi-frequency approaches to generate hourly streamflow forecasts. Additionally, our framework features a flexible data assimilation strategy to include real-time discharge information. This approach enhances forecast performance5 when real-time observations are available, and allows the model to keep operating when the discharge signal is absent, either by gauge failure or for prediction in ungauged basins. We benchmarked the MF2LSTM against the Large Area Runoff Simulation (LARSIM) model, the current operational flood-forecasting model used by several European countries, forcing both models with ICON-D2 meteorological products. Our results indicate that the MF2LSTM yields higher predictive accuracy than LARSIM. Overall, this framework presents a robust operational pipeline that demonstrates the viability of deep learning10 for hourly forecasting. Furthermore, by relying on a standard single-cell LSTM architecture, the approach highlights that structurally simple deep learning architectures can achieve high operational performance.

## Summary

This paper introduces multi-frequency masked-forecasting LSTM $MF^2LSTM$. Model architecture that combines missing data workflows with multi-frequency approaches to generate hourly streamflow forecasts.

### Relevant Definitions

## Extracted Highlights & Quotes

> [!PDF|red] [[Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting.pdf#page=1&selection=52,1,54,97&color=red|Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting, p.1]]
> > Long short-term memory (LSTM) networks have demonstrated state-of-the-art capabilities in operational flood forecasting, with recent missing-data handling strategies further improving pipeline robustness. 

> [!PDF|red] [[Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting.pdf#page=1&selection=63,62,67,50&color=red|Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting, p.1]]
> > We benchmarked the MF2LSTM against the Large Area Runoff Simulation (LARSIM) model, the current operational flood-forecasting model used by several European countries, forcing both models with ICON-D2 meteorological products. 

> [!PDF|red] [[Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting.pdf#page=1&selection=73,37,74,89&color=red|Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting, p.1]]
> > by relying on a standard single-cell LSTM architecture, the approach highlights that structurally simple deep learning architectures can achieve high operational performance.

> [!PDF|red] [[Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting.pdf#page=2&selection=0,52,4,22&color=red|Everything everywhere all at once A single-cell LSTM network unifying multi-frequency, missing data, and discharge assimilation for robust operational flood forecasting, p.2]]
> >  Standard daily-resolution models can be limited in capturing peak20 magnitudes and precise flood timing due to daily input aggregation, a drawback particularly pronounced in small, fastresponding catchments.




