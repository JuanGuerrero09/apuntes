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
Status: Read
tags:
  - Rainfall-runoff
  - LSTMs
  - Hydrology
  - RNNs
  - Fine-Tuning
---
Source: [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks]]

## Abstract

Rainfall–runoff modelling is one of the key challenges in the field of hydrology. Various approaches exist, ranging from physically based over conceptual to fully datadriven models. In this paper, we propose a novel data-driven approach, using the Long Short-Term Memory (LSTM) network, a special type of recurrent neural network. The advantage of the LSTM is its ability to learn long-term dependencies between the provided input and output of the network, which are essential for modelling storage effects in e.g. catchments with snow influence. We use 241 catchments of the freely available CAMELS data set to test our approach and also compare the results to the well-known Sacramento Soil Moisture Accounting Model (SAC-SMA) coupled with the Snow-17 snow routine. We also show the potential of the LSTM as a regional hydrological model in which one model predicts the discharge for a variety of catchments. In our last experiment, we show the possibility to transfer process understanding, learned at regional scale, to individual catchments and thereby increasing model performance when compared to a LSTM trained only on the data of single catchments. Using this approach, we were able to achieve better model performance as the SAC-SMA + Snow-17, which underlines the potential of the LSTM for hydrological modelling applications.

## Summary

This paper investigates the potential of Long Short-Term Memory (LSTM) networks as data-driven rainfall–runoff models using 241 catchments from the [[CAMELS]] dataset across four US Hydrologic Unit Codes (HUCs). It benchmarks LSTM performance against the conceptual SAC-SMA model coupled with the Snow-17 routine.

**Key Structural & Hydrological Advantages**

- Overcomes the vanishing gradient limitations of traditional RNNs, which struggle with sequence lengths beyond 10 days. The LSTM easily handles a 365-day sequence length to capture annual hydrological cycles, baseflow, and multi-month snow accumulation/melt.
- **Physical Interpretability:** The LSTM cell state acts as dynamic environmental storage (e.g., snowpack, soil moisture). The gates autonomously regulate storage depletion (forget gate), storage recharge (input gate), and release to streamflow (output gate) without explicit physical constraints enforced in the loss function.

**Network Architecture & Training Parameters**

- **Input Sequence:** 365 days of normalized daily meteorological observations ($z$-score standardization).
- **Core Network:** 2 stacked LSTM layers with 20 hidden units each, separated by 10% dropout to prevent overfitting.    
- **Output Head:** A single linear dense layer ($y = W_d h_n + b_d$) mapping the final hidden state to daily discharge.
- **Optimization:** MSE objective function, Adam optimizer, batch size of 512 randomly sampled non-chronological sequences.

### Long Short-Term Memory (LSTM) Architecture

**1. Forget Gate** The first gate is the **forget gate**. It controls which elements of the cell state vector $c_{t-1}$ will be forgotten (and to what degree):

$$f_t = \sigma(W_f x_t + U_f h_{t-1} + b_f)$$

where:

- $f_t$ is the resulting gate activation vector with values in the range $(0, 1)$.
- $\sigma(\cdot)$ is the logistic sigmoid function ($\sigma(z) = \frac{1}{1 + e^{-z}}$).
- $W_f$, $U_f$, and $b_f$ are the learnable parameters for the forget gate (input weight matrix, recurrent weight matrix, and bias vector).

**2. Candidate Cell State & Input Gate** Next, a candidate cell state vector $\tilde{c}_t$ (representing the new potential content) is computed from the current input $x_t$ and the previous hidden state $h_{t-1}$:

$$\tilde{c}_t = \tanh(W_c x_t + U_c h_{t-1} + b_c)$$

where:

- $\tilde{c}_t$ is the candidate vector with values in the range $(-1, 1)$.
- $\tanh(\cdot)$ is the hyperbolic tangent function.
- $W_c$, $U_c$, and $b_c$ are the learnable parameters for the candidate cell state.

Simultaneously, the **input gate** $i_t$ determines which elements of the candidate vector $\tilde{c}_t$ will be added to the cell state:

$$i_t = \sigma(W_i x_t + U_i h_{t-1} + b_i)$$

where:

- $i_t$ is a gating vector with values in $(0, 1)$.
- $W_i$, $U_i$, and $b_i$ are the learnable parameters for the input gate.

**3. Cell State Update** The cell state $c_t$ is updated by combining the preserved old memory and the filtered candidate memory via element-wise multiplication ($\odot$):

$$c_t = f_t \odot c_{t-1} + i_t \odot \tilde{c}_t$$

- $f_t \odot c_{t-1}$: Decides what information to keep ($f_t \approx 1$) or discard ($f_t \approx 0$).
- $i_t \odot \tilde{c}_t$: Decides what new information to incorporate ($i_t \approx 1$) or ignore ($i_t \approx 0$).
- At the initial time step ($t = 0$), $c_0$ and $h_0$ are initialized as vectors of zeros matching the hidden layer dimension.

**4. Output Gate & Hidden State** The final gate is the **output gate** $o_t$, which controls which parts of the cell state $c_t$ are emitted into the new hidden state $h_t$:

$$o_t = \sigma(W_o x_t + U_o h_{t-1} + b_o)$$

$$h_t = o_t \odot \tanh(c_t)$$

where:

- $o_t$ is the output gate vector with values in $(0, 1)$.
- $W_o$, $U_o$, and $b_o$ are the learnable parameters for the output gate.
- $h_t$ is the resulting hidden state vector emitted to subsequent layers or future time steps.

#### Output Layer ([[Dense Layer]])

The output from the last LSTM layer at the final time step ($h_n$) connects through a standard dense layer to a single output neuron, which computes the final discharge prediction:

$$y = W_d h_n + b_d$$

where:

- $y$ is the predicted stream discharge.
- $h_n$ is the output vector (hidden state) of the last LSTM layer at the final sequence step $n$.
- $W_d$ is the learnable weight matrix of the dense output layer.
- $b_d$ is the learnable bias term of the dense output layer.




**Experimental Configurations & Core Findings**

- **Experiment 1 (Individual Catchment Models):** 241 separate LSTMs trained per basin. Mean NSE of 0.63 across all basins. Outperformed baseline models in snow-driven catchments, but performance degraded in arid catchments with intermittent/zero discharge.

- **Experiment 2 (Regional Models per HUC):** A single regional LSTM trained per HUC across all contained catchments. In 50% of basins, the regional model matched or surpassed the individually calibrated models while providing a more balanced error distribution (less peak underestimation).

- **Experiment 3 (Fine-Tuned Regional Models):** Regional models pre-trained across HUCs were fine-tuned for a few epochs on single basins. This configuration achieved the best overall performance, outperforming the SAC-SMA + Snow-17 benchmark and highlighting strong transferability for data-scarce and ungauged catchments.

For the experiments, it shows that the best results are from the model fine-tuned since it generalizes better after having the base of the regionalized model.

The major findings were:

a. LSTMs are able to predict runoff from meteorological observations with accuracies comparable to physically based models.  
  
b. The 15 years of daily data used for calibration seem to constitute a lower bound of data requirements.  
  
c. Pre-trained knowledge can be transferred into different catchments, which might be a possible approach for reducing the data demand and/or regionalization applications, as well as for prediction in ungauged basins or basins with few observations.

And is mention that adding the physical properties as additional input layer into the LASTM may improve predictive power and ability of LSTM to work as regional models and make predictions in ungauged basins.

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

#### Long Short-Term Memory network

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=50,0,52,52&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > The LSTM architecture is a special kind of recurrent neural network (RNN), designed to overcome the weakness of the traditional RNN to learn long-term dependencies.

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=52,53,57,38&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > Bengio et al. (1994) have shown that the traditional RNN can hardly remember sequences with a length of over 10. For daily streamflow modelling, this would imply that we could only use the last 10 days of meteorological data as input to predict the streamflow of the next day, which is too short considering the memory of catchments including groundwater, snow or glacier storages.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=145,0,146,49&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > The differences of the traditional RNN and the LSTM are the internal operations of the recurrent cell

RNN internal state $h_t$ 
$$
h_t = g(Wx_t + Uh_{t-1}+b)
$$
Where **g** is the activation function (typically hyperbolic tangent), **W** and **U** are adjustable weight matrices of the hidden state **h** and the input **x**, and **b** is an adjustable bias vector.

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=212,0,220,41&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > In comparison, the LSTM has an additional cell state or cell memory $c_t$ in which information can be stored, and gates that control the information flow within the LSTM cell.

#### Long Short-Term Memory (LSTM) Architecture

**1. Forget Gate** The first gate is the **forget gate**. It controls which elements of the cell state vector $c_{t-1}$ will be forgotten (and to what degree):

$$f_t = \sigma(W_f x_t + U_f h_{t-1} + b_f)$$

where:

- $f_t$ is the resulting gate activation vector with values in the range $(0, 1)$.
- $\sigma(\cdot)$ is the logistic sigmoid function ($\sigma(z) = \frac{1}{1 + e^{-z}}$).
- $W_f$, $U_f$, and $b_f$ are the learnable parameters for the forget gate (input weight matrix, recurrent weight matrix, and bias vector).

**2. Candidate Cell State & Input Gate** Next, a candidate cell state vector $\tilde{c}_t$ (representing the new potential content) is computed from the current input $x_t$ and the previous hidden state $h_{t-1}$:

$$\tilde{c}_t = \tanh(W_c x_t + U_c h_{t-1} + b_c)$$

where:

- $\tilde{c}_t$ is the candidate vector with values in the range $(-1, 1)$.
- $\tanh(\cdot)$ is the hyperbolic tangent function.
- $W_c$, $U_c$, and $b_c$ are the learnable parameters for the candidate cell state.

Simultaneously, the **input gate** $i_t$ determines which elements of the candidate vector $\tilde{c}_t$ will be added to the cell state:

$$i_t = \sigma(W_i x_t + U_i h_{t-1} + b_i)$$

where:

- $i_t$ is a gating vector with values in $(0, 1)$.
- $W_i$, $U_i$, and $b_i$ are the learnable parameters for the input gate.

**3. Cell State Update** The cell state $c_t$ is updated by combining the preserved old memory and the filtered candidate memory via element-wise multiplication ($\odot$):

$$c_t = f_t \odot c_{t-1} + i_t \odot \tilde{c}_t$$

- $f_t \odot c_{t-1}$: Decides what information to keep ($f_t \approx 1$) or discard ($f_t \approx 0$).
- $i_t \odot \tilde{c}_t$: Decides what new information to incorporate ($i_t \approx 1$) or ignore ($i_t \approx 0$).
- At the initial time step ($t = 0$), $c_0$ and $h_0$ are initialized as vectors of zeros matching the hidden layer dimension.

**4. Output Gate & Hidden State** The final gate is the **output gate** $o_t$, which controls which parts of the cell state $c_t$ are emitted into the new hidden state $h_t$:

$$o_t = \sigma(W_o x_t + U_o h_{t-1} + b_o)$$

$$h_t = o_t \odot \tanh(c_t)$$

where:

- $o_t$ is the output gate vector with values in $(0, 1)$.
- $W_o$, $U_o$, and $b_o$ are the learnable parameters for the output gate.
- $h_t$ is the resulting hidden state vector emitted to subsequent layers or future time steps.

##### Output Layer ([[Dense Layer]])

The output from the last LSTM layer at the final time step ($h_n$) connects through a standard dense layer to a single output neuron, which computes the final discharge prediction:

$$y = W_d h_n + b_d$$

where:

- $y$ is the predicted stream discharge.
- $h_n$ is the output vector (hidden state) of the last LSTM layer at the final sequence step $n$.
- $W_d$ is the learnable weight matrix of the dense output layer.
- $b_d$ is the learnable bias term of the dense output layer.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=4&selection=390,44,395,16&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6008]]
> > Due to its very simple linear interactions with the remaining LSTM cell, it can store information unchanged over a long period of time steps. During training, this characteristic helps to prevent the problem of the exploding or vanishing gradients in the backpropagation step

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=4&selection=395,53,399,56&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6008]]
> > As with other neural networks, where one layer can consist of multiple units (or neurons), the length of the cell and hidden state vectors in the LSTM can be chosen freely. Additionally, we can stack multiple layers on top of each other.

![[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&rect=48,592,303,737&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
#### Calibration procedure

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=184,10,191,38&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > Regarding the training of a LSTM, the adaptable (or learnable) parameters of the network, the weights and biases, are also updated depending on a given loss function of an iteration step. In this study we used the mean-squared error (MSE) as an objective criterion.

> [!PDF|yellow] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=196,23,199,39&color=yellow|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > This property is used in the so-called back-propagation step in which the network parameters are adapted to minimize the overall loss. For a detailed description see e.g. Goodfellow et al. (2016).

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=211,0,212,34&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > The number of samples per batch is a hyperparameter, which in our case was defined to be 512. 
> 
> 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=212,35,229,16&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> >Each of these samples consists of one discharge value of a given day and the meteorological input of the *n* preceding days. In every iteration step, the loss function is calculated as the average of the MSE of simulated and observed runoff of these 512 samples. Since the discharge of a specific time step is only a function of the meteorological inputs of the last *n* days, the samples within a batch can consist of random time steps, which *must not* be ordered chronologically.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=287,2,293,11&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > One epoch is defined as the period in which each training sample is used once for updating the model parameters. For example, if the data set consists of 1000 training samples and the batch size is 10, one epoch would consist of 100 iteration steps (number of training samples divided by the number of samples per batch).

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=300,15,304,49&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > Figure 4 shows the learning process of the LSTM over a number of training epochs. We can see that the network has to learn the entire rainfall–runoff relation from scratch (grey line of random weights) and is able to better represent the discharge dynamics with each epoch.

![[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&rect=143,575,483,730&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=5&selection=305,1,308,15&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6009]]
> > For efficient learning, all input features (the meteorological variables) as well as the output (the discharge) data are normalized by subtracting the mean and dividing by the standard deviation 

#### Open-source software

Python, Numpy, Pandas, Scikit-Learn, TensorFlow, Keras

#### CAMELS

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&selection=53,0,53,56&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]
> > The underlying data for our study is the [[CAMELS]] data set
> 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&selection=72,0,74,15&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]
> > The 671 catchments in the data set are grouped into 18 hydrological units (HUCs) following the U.S. Geological Survey’s HUC map 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&selection=78,0,82,17&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]
> > In our study, we used 4 out of the 18 hydrological units with their 241 catchments  in order to cover a wide range of different hydrological conditions on one hand and to limit the computational costs on the other hand

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&selection=113,49,117,12&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]
> > The first 15 hydrological years with streamflow data (in most cases 1 October 1980 until 30 September 1995) are used for calibrating the model, while the remaining data are used for validation. 

> [!PDF|yellow] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=6&selection=117,12,123,14&color=yellow|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6010]]
> > For each basin, 10 models were calibrated, starting with different random seeds, using the shuffled complex evolution algorithm by Duan et al. (1993) and the root mean squared error (RMSE) as objective function. Of these 10 models, the one with the lowest RMSE in the calibration period is used for validation. For further details see Newman et al. (2015).

#### Experimental design

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=7&selection=291,0,293,14&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6011]]
> > Throughout all of our experiments, we used a two-layer LSTM network, with each layer having a cell/hidden state length of 20. 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=7&selection=294,33,299,14&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6011]]
> > Between the layers, we added dropout, a technique to prevent the model from over- fitting (Srivastava et al., 2014). Dropout sets a certain percentage (10 % in our case) of random neurons to zero during training in order to force the network into a more robust feature learning.
> 
> 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=7&selection=434,0,435,50&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6011]]
> > The length of the input sequence (hyperparameter) is kept constant at 365 days for this study in order to capture at least the dynamics of a full annual cycle.

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=7&selection=446,39,448,54&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6011]]
> >  A systematic sensitivity analysis of the effects of different hyper-parameters was however not done and is something to do in the future.

The training, validation and test data split is not done wince are limited to the periods of Newman et al. (2015)

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=10,26,14,54&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> >  In addition to that, LSTMs with a low number of hidden units are quite sensitive to the initialization of their weights. It is thus common practice to repeat the calibration task several times with different random seeds to select the best performing realization of the model

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=22,24,25,27&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> >  The goal of this study is therefore not to find the best per-catchment model, but rather to investigate the general potential of LSTMs for the task of rainfall–runoff modelling. 


##### Experiment 1: one model per catchmentç

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=34,49,36,5&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > Here, we train one network separately for each of the 241 catchments
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=41,41,44,6&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > we used the first 14 years of the 15-year calibration period as training data and the last, fifteenth, year as the independent validation period. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=46,43,48,32&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > Across all catchments, the highest mean NSE was achieved after 50 epochs in this preliminary experiment. 
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=51,15,52,45&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> >  Experiment 1 yields 241 separately trained networks, one for each of the 241 catchments.


##### Experiment 2: one regional model per hydrological unit

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=64,0,66,44&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > Regarding the first motivation, having a huge training data set allows the network to learn more general and abstract patterns of the input-to-output relationship
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=69,11,71,42&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > having more than just the data of a single catchment available would help to obtain a more general understanding of the rainfall–runoff processes.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=83,0,85,8&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > The second motivation is the prediction of runoff in ungauged basins, one of the main challenges in the field of hydrology 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=89,10,91,54&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> >  the aim of the second experiment is to analyse how well the network architecture can generalize (or regionalize) to all catchments within a certain region. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=99,6,100,37&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > . Across all catchments, the highest mean NSE was achieved after 20 epochs in this case
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=106,47,109,7&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > Thus, for the final training, we train one LSTM for each of the four used HUCs for 20 epochs with the entire 15-year long calibration period.
> 
> 

##### Experiment 3: fine-tuning the regional model for each catchment

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=8&selection=119,9,123,47&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6012]]
> > . In the field of DL this is a common approach called fine-tuning, where a model is first trained on a huge data set to learn general patterns and relationships between (meteorological) input data and (streamflow) output data.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=7,3,10,40&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > Then, the pre-trained network is further trained for a small number of epochs with the data of a specific catchment alone to adapt the more generally learned processes to a specific catchment

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=10,42,14,17&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > Loosely speaking, the LSTM first learns the general behaviour of the runoff generating processes from a large data set, and is in a second step adapted in order to account for the specific behaviour of a given catchment

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=16,0,17,18&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > In this study, the regional models of Experiment 2 serve as pre-trained models

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=20,0,22,31&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > With the initial LSTM weights from the regional model, the training is continued only with the training data of a specific catchment for a few epochs

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=23,16,24,57&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > Similar to Experiment 1, we finally have 241 different models, one for each of the 241 catchments.
> 
> 

Why are they using a number of epoch instead of early-stopping?

#### Evaluation metrics

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=38,0,48,3&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > The metrics for model evaluation are the Nash–Sutcliffe ef- ficiency (Nash and Sutcliffe, 1970) and the three decompositions following Gupta et al. (2009). These are the correlation coefficient of the observed and simulated discharge (r), the variance bias (α) and the total volume bias (β). 
> 
> 

### Results and discussion

#### RNN vs LSTM

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=116,0,119,53&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > To empirically test the effect of (not) being able to learn long-term dependencies, we compared the modelling of a snow-influenced catchment (basin 13340600 of the Pacific Northwest region) with a LSTM and a traditional RNN. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=120,13,123,5&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > we adapted the number of hidden units of the RNN to be 41 for both layers (so that the number of learnable parameters of the LSTM and RNN is approximately the same)

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=9&selection=128,46,135,58&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6013]]
> > (i) The hydrograph simulated by the RNN has a lot more variance compared to the smooth line of the LSTM. 
> > (ii) The RNN underestimates the discharge during the melting season and early summer, which is strongly driven snowmelt and by the precipitation that has fallen through the winter months. 
> > (iii) In the winter period, the RNN systematically overestimates observed discharge, since snow accumulation is not accounted
> 
> 

![[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&rect=70,475,288,733&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=71,5,73,59&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > These simulation deficits can be explained by the lack of the RNN to learn and store long-term dependencies, while especially the last two points are interesting and connected.
> 
> 

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=75,36,82,13&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > The RNN is not able to store the amount of water which has fallen as snow during the winter and is, in consequence, also not able to generate sufficient discharge during the time of snowmelt. The RNN, minimizing the average RMSE, therefore overestimates the discharge most times of the year by a constant bias and underestimates the peak flows, thus being closer to predicting the mean flow.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=84,16,88,12&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> >  LSTM seems to have 
> >  (i) no or fewer problems with predicting the correct amount of discharge during the snowmelt season and 
> >  (ii) the predicted hydrograph is much smoother and fits the general trends of the hydrograph much better.

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=97,0,99,13&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > we can conclude that traditional RNNs should not be used if (e.g. daily) discharge is predicted only from meteorological observations.


#### LSTM as hydrological models (experiment 1)

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=106,53,108,45&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > In over 50 % of the catchments, an NSE of 0.65 or above is found, with a mean NSE of 0.63 over all catchments. 

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=114,41,115,38&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > The performance deteriorates in the more arid catchments where no discharge is observed for longer periods of the year

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=118,10,121,33&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > Having a constant value of discharge (zero in this case) for a high percentage of the training samples seems to be difficult information for the LSTM to learn and to reproduce this hydrological behaviour.
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=133,56,136,42&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > This clearly shows the benefit of using LSTMs, since the snow accumulation and snowmelt processes are correctly reproduced, despite their inherent complexity. 
> 
> 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=10&selection=156,9,157,30&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6014]]
> > the LSTM underestimates the peaks more strongly compared to the benchmark model


> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=11&selection=235,11,238,30&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6015]]
> > However, we want to highlight again that achieving the best model performance possible was not the aim of this study, but rather testing the general ability of the LSTM to reproduce runoff processes.

#### LSTM as regional hydrological models (experiment 1)

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=12&selection=41,0,44,39&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6016]]
> > However, from the histograms of the differences we can see that the median is almost zero, meaning that in 50 % of the basins the regional model performs better than the model specifically trained for a single basin.


> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=12&selection=61,11,64,35&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6016]]
> >  We can also observe that the regional models show a more balanced under- and over-estimation, while the models from Experiment 1 as well as the benchmark model tend to underestimate the discharge


> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=12&selection=66,6,69,62&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6016]]
> >  This is not too surprising, since we train one model on a range of different basins with different discharge characteristics, where the model minimizes the error between simulated and observed discharge for all basins at the same time.

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=12&selection=70,0,71,41&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6016]]
> > On average, the regional model will therefore equally overand under-estimate the observed discharge
> 
> 

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=96,54,102,10&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> > The results suggest that a single, regionally calibrated LSTM could generally be better in predicting the discharge of a group of basins compared to many LSTMs trained separately for each of the basins within the group especially when the group’s basins exhibit a strong correlation in their discharge behaviour.


#### Effects of fine-tunning (experiment 3)

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=114,11,115,40&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> >  In general the pre-training and fine-tuning improves the NSE of the runoff prediction.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=117,12,118,52&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> > we can see the biggest improvement in those basins in which the regional models performed poorly
> 
> 

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=122,33,126,6&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> > Therefore, it seems that pretraining with a bigger data set before fine-tuning for a specific catchment helps the model to learn general rainfall–runoff processes and that this knowledge is transferable to single basins
> 
> 

#### A hydrological interpretation of the LSTM

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=180,7,183,12&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> >  In comparison to traditional hydrological models, the cell states can be interpreted as storages that are often used for e.g. snow accumulation, soil water content, or groundwater storage.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=13&selection=184,40,187,20&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6017]]
> > The internal cell state come with gates: one that regulates the depletion of the storages, a second that regulates the increase in the storages and a third that regulates the out- flow of the storages.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=38,0,41,46&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > In contrast to hydrological models, however, the LSTM does not “know” the principle of water/mass conservation and the governing process equations describing e.g. infiltration or evapotranspiration processes a priori.
> 
> 

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=43,47,45,26&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > LSTM has to learn these physical principles and laws during the calibration process purely from the data.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=60,35,62,55&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > We can see that the cell state matches the dynamics of the temperature curves, as well as our understanding of snow accumulation and snowmelt.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=71,46,75,2&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > Thus, albeit the LSTM was only trained to predict runoff from meteorological observations, it has learned to model snow dynamics without any forcing to do so.

### Summary and conclusion

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=125,0,137,41&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > This contribution investigated the potential of using Long Short-Term Memory networks (LSTMs) for simulating runoff from meteorological observations. 

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=14&selection=144,46,149,38&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6018]]
> > In the first experiment we looked at classical single basin modelling, in a second experiment we trained one model for all basins in each of the regions we investigated, and in a third experiment we showed that using a pre-trained model helps to increase the model performance in single basins

> [!PDF|note] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=15&selection=4,0,13,29&color=note|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6019]]
> > The major findings in the study were:
> > 	a. LSTMs are able to predict runoff from meteorological observations with accuracies comparable to the wellestablished SAC-SMA + Snow-17 model. 
> > 	
> > 	b. The 15 years of daily data used for calibration seem to constitute a lower bound of data requirements. 
> > 	
> > 	c. Pre-trained knowledge can be transferred into different catchments, which might be a possible approach for reducing the data demand and/or regionalization applications, as well as for prediction in ungauged basins or basins with few observations.
> 

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=15&selection=17,20,19,56&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6019]]
> > We do believe that the use of “pre-trained LSTMs” (as explored in Experiment 3) is a promising way to reduce the large data demand for an individual basin.

> [!PDF|important] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=15&selection=28,28,32,39&color=important|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6019]]
> > In this context, it is also imaginable that adding physical catchment properties as an additional input layer into the LSTM may enhance the predictive power and ability of LSTMs to work as regional models and to make predictions in ungauged basins.


> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=15&selection=33,0,35,17&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6019]]
> > An entirely justifiable barrier of using LSTMs (or any other data-driven model) in real-world applications is their black-box nature.

> [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=15&selection=37,18,39,36&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6019]]
> >  However, for the LSTM at least, it might be possible to analyse the behaviour of the cell states and link them to basic hydrological patterns 

