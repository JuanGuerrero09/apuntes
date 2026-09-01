---
Title: Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks
Authors:
  - Frederik Kratzert
  - Daniel Klotz
  - Claire Brenner
  - Karsten Schulz
  - Mathew Herrnegger
Journal: Hydrology and Earth System Sciences
Date: 2018-11-22
Year: 2018
Status: Reading
tags:
  - Rainfall-runoff
  - LSTMs
  - Hydrology
---
Source:

## Abstract

Rainfall–runoff modelling is one of the key challenges in the field of hydrology. Various approaches exist, ranging from physically based over conceptual to fully datadriven models. In this paper, we propose a novel data-driven approach, using the Long Short-Term Memory (LSTM) network, a special type of recurrent neural network. The advantage of the LSTM is its ability to learn long-term dependencies between the provided input and output of the network, which are essential for modelling storage effects in e.g. catchments with snow influence. We use 241 catchments of the freely available CAMELS data set to test our approach and also compare the results to the well-known Sacramento Soil Moisture Accounting Model (SAC-SMA) coupled with the Snow-17 snow routine. We also show the potential of the LSTM as a regional hydrological model in which one model predicts the discharge for a variety of catchments. In our last experiment, we show the possibility to transfer process understanding, learned at regional scale, to individual catchments and thereby increasing model performance when compared to a LSTM trained only on the data of single catchments. Using this approach, we were able to achieve better model performance as the SAC-SMA + Snow-17, which underlines the potential of the LSTM for hydrological modelling applications.

## Summary

The paper starts mentioning the challenge that is the rainfall-runoff forecasting and how physically based models are high demmanding. Initial data-based models with RNNs showed potential but LSTM (or other RNN with cell memory) was better on overcomming the problem of learning long-term dependencies.

Transferability of models to unseen catchments data is one of the ongoing challenges in hydrology

This study aim to explore the potential of LSTM architecture. It also analyses the poitential of LSTM for regionalizing the rainfall-runoff by training a single model with multitude of catchments with the [[CAMELS]] dataset.

The architecure is

It uses three experiments:

### Relevant Definitions

## Extracted Highlights & Quotes

### Introduction

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=1&selection=69,21,71,30&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6005]]
> > First attempts to predict the discharge as a function of precipitation events using regression-type approaches date back 170 years

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=1&selection=84,10,88,54&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6005]]
> > The development towards coupled, physically based and spatially explicit representations of hydrological processes at the catchment scale has come at the price of high computational costs and a high demand for necessary (meteorological) input data. 


> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=17,26,19,11&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > The first studies using ANNs for rainfall–runoff prediction date back to the early 1990s

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=23,31,26,27&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > A drawback of feed-forward ANNs, which have mainly been used in the past, for time series analysis is that any information about the sequential order of the inputs is lost. 
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=35,37,38,56&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > Even though the traditional ANN in general performed equally well, they found that the number of delayed inputs, which are provided as driving inputs to the ANN, is a critical hyperparameter.

Delayed inputs is the hyperparameter of how many days im doing the prediction based on the current precipitation right?

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=48,6,51,49&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > The LSTM overcomes the problem of the traditional RNN of learning long-term dependencies representing e.g. storage effects within hydrological catchments, which may play an important role for hydrological processes

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=63,30,64,54&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > At date of the publication (2018) only a few attempts have been made to apply recent advances in DL to hydrological problems. 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=74,0,75,34&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > Diferent studies reported that the deep learning approach outperforms all baseline models consistently. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=80,8,83,51&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> >  They confirmed that LSTM (as well as another recurrent neural network architecture with cell memory) are better suited for for multi-step-ahead predictions than traditional architectures without explicit cell memory. 

> [!PDF|yellow] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=92,8,94,49&color=yellow|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > n this context we would like to mention Shen (2018) more explicitly, since he provides an ambitious argument for the potential of DL in earth sciences/hydrology. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=102,41,106,59&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > The calibration procedure is required because models are only simplifications of real catchment hydrology and model parameters have to effectively represent non-resolved processes and any effect of subgrid-scale heterogeneity in catchment characteristics

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=2&selection=108,7,111,32&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6006]]
> > The transferability of model parameters (regionalization) from catchments where meteorological and runoff data are available to ungauged or data-scarce basins is one of the ongoing challenges in hydrology 
> 
> 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=4,0,8,9&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > The aim of this study is to explore the potential of the LSTM architecture to describe the rainfall–runoff behaviour of a large number of catchments at the daily timescale

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=12,35,13,49&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > we test this approach on a large number of catchments of the CAMELS data set

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=26,14,33,11&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> >  This is followed by an introduction into three different experiments: in the first experiment, we test the general ability of the LSTM to model rainfall–runoff processes for a large number of individual catchments. The second experiment investigates the capability of LSTMs for regional modelling, and the last tests whether the regional models can help to enhance the simulation performance for individual catchments.


### Methods and database
