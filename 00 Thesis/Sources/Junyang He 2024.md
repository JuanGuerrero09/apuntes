---
Title: "Deep Learning Foundation and Pattern Models: Challenges in Hydrological Time Series"
Authors:
  - Junyang He
  - Ying-Jung Chen
  - Alireza Jafari
  - Anushka Idamekorala
  - Geoffrey Fox
Journal: The International Journal of High Performance Computing Applications
Date: 2025-03-09
Year: 2025
Status: Read
tags:
  - Deep-Learning
  - Hydrology
  - Time-Series-Analysis
  - LSTMs
  - Foundation-Models
---
Source: [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf]]

## Abstract

There has been active investigation into deep learning approaches for time series analysis, including foundation models. However, most studies do not address significant scientific applications. This paper aims to identify key features in time series by examining complex hydrology data. Our work advances computer science by emphasizing critical application features and contributes to hydrology and other scientific fields by identifying modeling approaches that effectively capture these features. Scientific time series data are inherently complex, involving observations from multiple locations, each with various time-dependent data streams and exogenous factors that may be static or time-varying and either application-dependent or purely mathematical. This research analyzes hydrology time series from the CAMELS and Caravan global datasets, which encompass rainfall and runoff data across catchments, featuring up to six observed streams and 209 static parameters across approximately 8,000 locations. Our investigation assesses the impact of exogenous data through eight different model configurations for key hydrology tasks. Results demonstrate that integrating exogenous information enhances data representation, reducing mean squared error by up to 40% in the largest dataset. Additionally, we present a detailed performance comparison of over 20 state-of-the-art pattern and foundation models. The analysis is fully open-source, facilitated by Jupyter Notebook on Google Colab for LSTMbased modeling, data preprocessing, and model comparisons. Preliminary findings using alternative deep learning architectures reveal that models incorporating comprehensive observed and exogenous data outperform more limited approaches, including foundation models. Notably, natural annual periodic exogenous time series contribute the most significant improvements, though static and other periodic factors are also valuable. This research serves as both an educational tool and benchmark resource.

## Summary

This paper compares the performance of state-of-the-art multivariate LSTM models with several time-series Foundation Models for rainfall-runoff forecasting using the CAMELS and Caravan datasets.

Static attributes are concatenated directly with dynamic meteorological variables along the feature dimension `InProp` and projected through a dense encoder with SELU activations. The model jointly forecasts precipitation, temperature, and streamflow to force the network to learn coupled physical fluxes rather than predicting runoff in isolation.

Model Architecture (TensorFlow):

* Input: `(B, W, InProp)` 
* Dense Encoder: `(B, W, InProp)` with SELU activation 
* LSTM-1: `(B, W, 320)` (Recurrent: Sigmoid, Layer: SELU, Dropout: 20%) 
* LSTM-2: `(B, 320)` 
* Dense Decoder: `(B, 320)` with SELU activation 
* Dense Output: `(B, OutPred)`

**Encoding Configurations Tested (8 total runs, with/without static features)**

- **Config 1: Just TS (Raw Time Series):** Dynamic meteorological forcing time series only. Serves as the pure baseline without catchment identity or calendar context.

- **Config 2: + Pos Enc (Positional Encodings):** Adds a static catchment index (`Linear Space`) and an continuous time-step progression index (`Linear Time`).

- **Config 3: + Annual (Annual Fourier Time):** Config 2 plus 1-year periodic harmonic functions: $\sin\left(\frac{2\pi d}{365.25}\right)$ and $\cos\left(\frac{2\pi d}{365.25}\right)$. This produces the largest drop in error by providing seasonal context.
 
- **Config 4: + Math (Sub-Annual Fourier + Legendre):** Config 3 plus multi-scale Fourier harmonics (8, 16, 32, 64, 128 days) and Legendre polynomial time functions (degrees 2, 3, and 4) to capture sub-seasonal oscillations and trends.

Example:

```python
Timestep t vector = [
  # Dynamic Weather Features
  Precipitation: 0.14, 
  Mean_Temp:     0.62,

  # Config 2: Positional
  Linear_Space (Catchment ID): 0.042,
  Linear_Time (Day index):     0.315,

  # Config 3: Annual Fourier
  Annual_Sin:    0.987,
  Annual_Cos:   -0.158,

  # Config 4: Extra Fourier (Periods 8 to 128)
  Fourier_8_Sin:   0.707,
  Fourier_8_Cos:  -0.707,
  ...

  # Config 4: Legendre (Degrees 2 to 4)
  Legendre_Deg2:  -0.341,
  Legendre_Deg3:   0.112,
  Legendre_Deg4:   0.054,

  # Static Properties (if included)
  Elevation: 0.45, Soil_Porosity: 0.81, ...
]
```

**Key Findings**

- For computational efficiency, the training pipeline uses dynamic symbolic batch slicing instead of pre-materializing all sequence tensors into RAM.

- Multivariate LSTM pattern models outperform univariate models and zero-shot foundation models (e.g., TSMixer, Chronos, PatchTST).

- **Spatial vs. Temporal Splits:** Location-based evaluation on unseen catchments combined with cube-root normalized precipitation achieves the highest performance ($\text{NNSE} = 0.8240$), demonstrating strong generalization to ungauged basins.

It is observed that the LSTM multivariable models (that include more exogenous data) performed better than the univariable LSTM and that the foundation models used for the study. Spatial vs. Temporal Splits: Evaluating models on unseen catchments (location split) with cube-root normalized precipitation achieves the highest NNSE (0.8240), proving superior for ungauged basin generalization.

![[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=11&rect=52,352,545,789&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.11]]

### Relevant Definitions 

**Pattern models**: Dedicated and task-specific deep learning models trained from scratch on on specific domain data (hydrological data) to learn direct mapping patterns. (e.g., TFT, TCN, DilatedRNN, TiDE, TimesNet, and custom LSTMs).

**Foundation models**: Large pre-trained time series architectures (e.g., TSMixer, iTransformer, PatchTST pre-trained on M4/Traffic/Weather) or adapted LLMs (e.g., Chronos-T5, Chronos-GPT2).

**MultiFoundationCore / MultiFoundationPattern:** An ensemble framework combining multiple pre-trained foundation models with specialized pattern models via cross-attention to capture multi-scale spatio-temporal dependencies.



## Extracted Highlights & Quotes

### Introduction

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=1&selection=55,0,73,21&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.1]]
> > Scientific data is frequently represented as spatio-temporal series, where time series data are often influenced by geographical factors.

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=1&selection=88,0,90,26&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.1]]
> > The spatio-temporal nature of scientific time series data means it is significantly influenced by the spatial variability of environmental factors. 

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=1&selection=95,32,116,1&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.1]]
> > Many of the deep learning models for time-series analysis overlook the importance of incorporating application-specific environmental or exogenous data.
> 


> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=4,0,6,27&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > Deep learning applied to spatio-temporal series works as a method for identifying the time evolution operator governing the behavior of complex systems
> 


> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=21,0,25,56&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > This work extends this approach to hydrology, demonstrating deep learning’s ability to model the rainfall-runoff process.


#### Rainfall-Runoff Problem

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=33,0,42,1&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > Rainfall-runoff modeling, a key challenge in hydrology, aims to model the physical process by which water on land surface (precipitation or snowmelt) moves to streams
> 

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=144,2,145,53&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > A Neural network can learn the seasonal patterns of these hydrological processes to produce accurate forecasts.

#### Related Work

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=149,0,155,1&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > Traditional rainfall-runoff modeling has typically focused on individual catchments.

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=246,28,255,49&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > As computers become more powerful, distributed models emerged, allowing for hydrological models to closely couple to geographical information systems for the input data and perform exceptionally well. However, the high computational cost to calibrate these parameters, and the limited availability of data complicated their use in large-scale forecasting applications.
> 
> 

Large sample datasets and advances in deep learning models solved that limitation

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=269,24,272,23&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > In 2018, the focus of the field shifted towards Long Short-Term Memory (LSTM) based models, which excelled in learning sequential dependencies within time series data
> 

### Data and Methods

#### Datasets selection

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=284,0,285,17&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > Hydrology data comprises of both time series (mean temperature, streamflow) and static exogenous feature and is collected by gauges. Static attributes are environmental conditions or spatial representation (land cover, soil aridity, coordinates) 

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=2&selection=293,0,294,31&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.2]]
> > Recent deep learning studies on Hydrology have been driven by the advent of [[CAMELS]] 

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=3&selection=113,0,117,10&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.3]]
> > The three-nation combined CAMELS dataset used in this study only contains static properties shared across the US, GB, and CL datasets. The processed dataset includes 1858 catchments, 3 dynamic, and 29 static variables.
> > It spans from Oct 2, 1989 to Dec 31, 2008. No NaN values in time series but in static.

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=3&selection=138,23,144,29&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.3]]
> > [[Caravan]] dataset Kratzert et al. (2023), consists of seven preprocessed CAMELS-standard national datasets that contain identical static exogenous features and time series properties. Caravan aggregates data from 6,830 catchments across 16 nations spanning four continents, making it ideal for global rainfall-runoff modeling with large-scale hydrological data
> 
> 

### Methods

#### [[LSTM|Long Short-Term Memory]]

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=3&selection=225,0,245,14&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.3]]
> > The Long Short-Term Memory (LSTM) network is a specialized variant of a Recurrent Neural Network (RNN) designed to address the vanishing gradient problem through its memory cell structure
> 
> 


> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=28,8,29,22&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > To prevent overfitting, a dropout rate of 20% is applied to the layers.
> 
> 

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=111,1,114,34&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > nput properties indicates the total number of input features, including both static and time series properties.
> 
> 
#### Model Training and Evaluation

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=57,0,67,15&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > Inputs to the model can be classified into known inputs and observed inputs. Known inputs are features that are known in both the past and future. Static known inputs are the exogenous features such as climatic signatures, hydrologic signatures, and catchment topography. Observed inputs are features known only for the past time periods but unknown in the future, such as precipitation, temperature, and streamflow.

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=70,0,90,8&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > The input data is divided into batches with a sequence length of 21 days, selected after testing various other lengths, including 7, 14, and 365 days. The 3-week sequence length was chosen to effectively capture subtle hydrological patterns


> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=293,8,309,58&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > To effectively capture these known dependencies within the time series properties, spatial and temporal encodings are incorporated into the model during training.
> 
> 

Uses 8:2 of training validation datasets and nomrlized Nash-Sutcliffe Efficiency (NNSE)

### LSTM Benchmark runs

Runs consider US UK and Chile.


> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=6&selection=223,35,238,49&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.6]]
> > For both runs, we utilize the same time series features—precipitation and mean temperature—for training and predict the same targets: precipitation, mean temperature, and streamflow. 


#### Caravan PCA Runs

PCA is used to decrease the Caravan 200 static properties (7 times more than CAMELS)

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=6&selection=367,24,370,15&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.6]]
> > we apply PCA, a widely adopted dimensionality reduction technique, to reduce the number of static input features to a level comparable with that in the CAMELS studies.

Variance threshold to 90% reducing static features to approximately 30

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=6&selection=380,0,395,15&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.6]]
> > Results, shown that the models trained with static properties obtained from PCA perform similar to the models trained with original properties, showing that the reduction in input static dimensionality does not significantly compromise model accuracy.
> 

### Static Properties and Spatial Temporal Encodings Experiment

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=271,0,288,1&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > This set of experiments examines the influence of static properties and spatial-temporal encodings on rainfallrunoff modeling accuracy,


> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=404,0,405,14&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > #### Static Properties and Encodings Experiment Configurations



> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=380,8,396,1&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > All four spatial-temporal encoding configurations tested are presented in Table 10. For each configuration, we conduct runs with and without static features as input to highlight the impact of static features. 
> 
> 


> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=5&selection=310,0,352,11&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.5]]
> > 1. Linear Space: a linear function with length equaling total number of catchments in input data. 
> > 2. Linear Time: a linear function with length equaling total number of days in input time series. 
> > 3. Annual Fourier Time: a basic sine and cosine function with period equaling one year. 
> > 4. Extra Fourier Time: basic sine and cosine functions with period equaling 8, 16, 32, 64, 128 days. 
> > 5. Legendre Time: Legendre functions of degree 2, 3, and 4 with range equaling total number of days in input time series
> 
> 

#### Experiment findings

> [!PDF|important] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=450,0,452,30&color=important|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > Results suggest that while the addition of static features in training has a marginal effect, the LSTM network generally benefits from their inclusion.

> [!PDF|important] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=470,42,472,16&color=important|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > static input features have a greater impact on large-scale datasets compared to small-scale ones

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=7&selection=479,0,481,29&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.7]]
> > This study further demonstrates that spatial and temporal encoding are crucial for effectively training time series data that follow seasonal patterns

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=9&selection=66,0,68,21&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.9]]
> > LSTMs perform better in modeling rainfall-runoff relationships for unseen catchments when precipitation data are cube-root-transformed

### Comparison with other Pattern and Foundation Models

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=9&selection=112,43,116,14&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.9]]
> > Since 2022, there has been a surge in research on foundation models for time series forecasting, primarily utilizing Transformer and MLP architectures.
> 
> 

> [!PDF|yellow] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=9&selection=121,35,124,47&color=yellow|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.9]]
> > Research in this area focuses on two strategies: pre-training foundation models with time series data and adapting pre-trained language models for time series tasks Ye et al. (2024). 

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=9&selection=127,0,129,36&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.9]]
> > This study compares the performance of state-of-the-art foundation models and our LSTM-based pattern model on the hydrology rainfall-runoff task. 

> [!PDF|note] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=9&selection=137,8,141,15&color=note|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.9]]
> > Foundation models analyzed include 
> > - TSMixer Chen et al. (2023)
> > - iTransformer Liu et al. (2023)
> > - PatchTST Nie et al. (2022)
> > 
> > Pre-trained on datasets like TrafficL Lai et al. (2018), M4 Makridakis et al. (2020), and Weather Wu et al. (2021). 
> 
> 


> [!PDF|important] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=10&selection=28,4,29,49&color=important|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.10]]
> > The multivariately trained LSTM model outperforms all other approaches under these benchmark conditions

> [!PDF|important] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=10&selection=61,0,64,44&color=important|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.10]]
> > Using CAMELS-US data, we found that multivariate training outperformed univariate methods, particularly in tasks like rainfall-runoff modeling where correlations between properties are crucial.
> 
> 

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=10&selection=155,0,168,14&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.10]]
> > The MultiFoundationCore framework enhances time series forecasting in complex scientific domains by integrating multiple pre-trained foundation models and specialized pattern models

### Conclusion and Future Work

> [!PDF|important] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=11&selection=431,46,433,54&color=important|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.11]]
> > Including environmental factors and exogenous features can improve time series models’ ability to learn hidden variables.
> 
> 

> [!PDF|red] [[Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series.pdf#page=11&selection=493,0,496,52&color=red|Deep Learning Foundation and Pattern Models Challenges in Hydrological Time Series, p.11]]
> > Another interesting feature of science time series is that they naturally vary in magnitude by large factors, and this seems not to be very consistent with neural network activation functions at fixed values independent of the stream.


