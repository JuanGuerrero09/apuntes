---
Title: "AIFL: A Global Daily Streamflow Forecasting Model Using a Deterministic LSTM Pre-trained on ERA5-Land and Fine-tuned on IFS"
Author:
  - Maria Luisa Taccari
  - Kenza Tazi
  - Oisín M. Morrison
  - Andreas Grafberger
  - Juan Colonese
  - Corentin Carton de Wiart
  - Christel Prudhomme
  - Cinzia Mazzetti
  - Matthew Chantry
  - Florian Pappenberger
Journal: "[[Journal of Hydrology]]"
Date: 2026-06-28
Year: 2026
Status: Reading
tags:
---
Source: [[AIFL Global Daily Streamflow Forecasting Model.pdf | AIFL Global Daily Streamflow Forecasting]]

---
# Abstract

Reliable global streamflow forecasting is essential for flood preparedness and water resource management, yet data-driven models often suffer from a performance gap when transitioning from historical reanalysis to operational forecast products. This paper introduces AIFL (Artificial Intelligence for Floods), a deterministic LSTM-based model designed for global daily streamflow forecasting. Trained on 18,588 basins curated from the Caravan dataset, AIFL utilises a two-stage transfer-learning strategy to bridge the reanalysis-to-forecast domain shift. The model is first pre-trained on 40 years of ERA5-Land reanalysis (1980–2019) to capture robust hydrological processes, then fine-tuned on operational Integrated Forecasting System (IFS) forecasts (2016–2019) to adapt to the specific error structures and biases of operational numerical weather prediction. Ablation experiments confirm that this two-stage approach outperforms both a naive IFS-only baseline and a mixed-forcing single-stage alternative. To our knowledge, this is the first global model trained end-to-end within the Caravan ecosystem. On an independent temporal test set (2021–2024), AIFL achieves high predictive skill with a median modified Kling–Gupta Efficiency (KGE′) of 0.66 and a median Nash–Sutcliffe Efficiency (NSE) of 0.53. Benchmarking results show that AIFL achieves comparable accuracy to current state-of-the-art global systems. The model provides a streamlined and operationally robust baseline for the global hydrological community.

---
AIFL uses a deterministic [[LSTM]]-based model trained on _18,588_ basins from the [[Caravan]] dataset

> [!PDF|red] [[AIFL Global Daily Streamflow Forecasting Model.pdf#page=1&selection=41,0,44,1&color=red|AIFL Global Daily Streamflow Forecasting Model, p.1]]
> > This paper introduces AIFL (Artificial Intelligence for Floods), a deterministic LSTM-based model designed for global daily streamflow forecasting.


> [!PDF|red] [[AIFL Global Daily Streamflow Forecasting Model.pdf#page=1&selection=41,0,45,63&color=red|AIFL Global Daily Streamflow Forecasting Model, p.1]]
> > This paper introduces AIFL (Artificial Intelligence for Floods), a deterministic LSTM-based model designed for global daily streamflow forecasting. 
> 
> 

> [!PDF|yellow] [[AIFL Global Daily Streamflow Forecasting Model.pdf#page=1&selection=47,0,50,23&color=yellow|AIFL Global Daily Streamflow Forecasting Model, p.1]]
> The model is first pre-trained on 40 years of ERA5-Land reanalysis (1980–2019) to capture robust hydrological processes, then fine-tuned on operational Integrated Forecasting System (IFS) forecasts (2016–2019) to adapt to the specific error structures and biases of operational numerical weather prediction.

> [!PDF|red] [[AIFL Global Daily Streamflow Forecasting Model.pdf#page=1&selection=67,1,69,10&color=red|AIFL Global Daily Streamflow Forecasting Model, p.1]]
> lobal-scale streamflow forecasting is a critical capability for disaster risk reduction, supporting humanitarian aid, water resource management, and climate adaptation. The European Centre for Medium-Ran



Model uses as a basis the NeuralHydrology [[AIFL Global Daily Streamflow Forecasting Model.pdf#search=The model is implemented using the open-source NeuralHydrology framework [42] as a starting point|AIFL Global Daily Streamflow Forecasting Model, p.7]]

![[AIFL Global Daily Streamflow Forecasting Model.pdf#page=4&rect=158,245,442,643&color=red]]

