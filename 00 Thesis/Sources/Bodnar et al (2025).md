---
Title: "Aurora: A foundation model for the Earth system"
Authors:
  - Cristian Bodnar
  - Wessel P. Bruinsma
  - Ana Lucic
  - Megan Stanley
  - Anna Allen
  - Johannes Brandstetter
  - Patrick Garvan
  - Maik Riechert
  - Jonathan A. Weyn
  - Haiyu Dong
  - Jayesh K. Gupta
  - Kit Thambiratnam
  - Alexander T. Archibald
  - Chun-Chieh Wu
  - Elizabeth Heider
  - Max Welling
  - Richard E. Turner
  - Paris Perdikaris
Journal: Nature
Date: 2025-05-21
Year: 2025
Status: To Review
tags:
  - Foundation-Models
  - Aurora
  - Meteorological-Forecasts
  - AI
  - Fine-Tuning
Source: "[[Aurora A foundation model for the Earth system.pdf]]"
---
Source: [[Aurora A foundation model for the Earth system.pdf]]

## Abstract

Reliable forecasting of the Earth system is essential for mitigating natural disasters and supporting human progress. Traditional numerical models, although powerful, are extremely computationally expensive. Recent advances in artificial intelligence (AI) have shown promise in improving both predictive performance and efficiency , yet their potential remains underexplored in many Earth system domains. Here we introduce Aurora, a large-scale foundation model trained on more than one million hours of diverse geophysical data. Aurora outperforms operational forecasts in predicting air quality, ocean waves, tropical cyclone tracks and high-resolution weather, all at orders of magnitude lower computational cost. With the ability to be fine-tuned for diverse applications at modest expense, Aurora represents a notable step towards democratizing accurate and efficient Earth system predictions. These results highlight the transformative potential of AI in environmental forecasting and pave the way for broader accessibility to high-quality climate and weather information.


## Summary

Pangu-Weather?

In this paper, we introduce Aurora, a foundation model for the Earth system, capable of tackling a variety of forecasting tasks.

- Aurora Foundation Model is a family of large-scale transformer architectures for Earth system modeling, weather forecasting, and multimodal time series analysis.
- It employs hierarchical, patch-based transformer backbones with modality-specific encoders and innovative adaptation strategies to ensure cross-domain generalization.
- It achieves superior computational efficiency and predictive accuracy through lightweight decoder training and full fine-tuning, validated against operational forecasting benchmarks.

Aurora has state-of-the-art performance in the following:
- 5-day global air pollution forecast at 0.4 resolution
- 10-day global ocean wave forecasts at 0.25° resolutio
- 5-day tropical cyclone track forecasts
- 10-day global weather forecasts at 0.1° resolution

And could work with LSTM rain-runoff?

Aurora is a machine learning model that produces forecasts for any collection of Earth system variables at any desired resolution.

![[Aurora A foundation model for the Earth system.pdf#page=2&rect=35,508,572,741&color=red|Aurora A foundation model for the Earth system, p.1181]]

The model consist on three parts

- An Encoder thatconverts heterogeneous inputs into a universal latent three-dimensional (3D) representation
- A Processor that evolves the representation forward in time
- A Decoder that translates the standard 3D representation back into physical predictions. 
The processor is implemented as a 3D Swin [[Transformer]]

Aurora is able to achieve unprecedented performance in fine-tuning tasks by simultaneously scaling the volume of data used during pretraining along with its model size.

### Architecture 

![[Pasted image 20260908135421.png]]

The Aurora family is grounded in hierarchical, patch-based transformer backbones employing [modality-specific encoders](https://www.emergentmind.com/topics/modality-specific-encoders) and sophisticated adaptation strategies.

**1.1. Atmospheric and Earth System Foundation Model**

Aurora for weather and Earth system prediction uses an encoder–processor–decoder pipeline ([Bodnar et al., 2024](https://www.emergentmind.com/papers/2405.13063), [Lehmann et al., 23 Jun 2025](https://www.emergentmind.com/papers/2506.19088)):

- **Inputs:** Two consecutive global "images" Xt−1,XtXt−1,Xt of size T×H×WT×H×W (typically T=2T=2, H=720H=720, W=1440W=1440).
- **Patch Embedding:** Images are tiled into patches (T×P×PT×P×P, P=4P=4), then linearly projected into E=512E=512-dimensional embeddings.
- **Encoder:** A 3D Perceiver condenses C=13C=13 atmospheric pressure levels to CL=3CL​=3 "latent levels." Surface and static variables, such as land–sea mask and soil type, are concatenated as additional channels.
- **Processor:** 3D Swin-Transformer [U-Net](https://www.emergentmind.com/topics/u-net) backbone for spatiotemporal encoding. Outputs a latent tensor of shape T×H×WT×H×W0 (surface + latent levels).
- **Decoder:** Variable-specific linear layers project T×H×WT×H×W1-dim embeddings to patch reconstructions.

**1.2. Multimodal and Parameter-Efficient Aurora Variants**

Aurora has also been instantiated as:

- A [multimodal time series forecasting](https://www.emergentmind.com/topics/multimodal-time-series-forecasting) backbone with separate encoders for text (BERT), images (ViT), and timeseries, using [modality-guided multi-head self-attention](https://www.emergentmind.com/topics/modality-guided-multi-head-self-attention) and prototype-guided flow-matching generative decoders ([Wu et al., 26 Sep 2025](https://www.emergentmind.com/papers/2509.22295)).
- A parameter-efficient cross-modal prompt-tuning variant leveraging mode-approximation with only ~0.1M tunable parameters for efficient transfer ([Wang et al., 2023](https://www.emergentmind.com/papers/2305.08381)).

## 6. Implications, Best Practices, and Limitations

### 6.1. Best Practices for Resource-Constrained Use

- Freeze the backbone to minimize recomputation
- Attach compact task-specific MLP heads per variable
- Apply domain-informed loss masking (latitude, land/sea)
- Employ warmup+cosine decay learning rate schedules
- Prefer partial adaptation to full fine-tuning for compute-constrained clusters

### 6.2. Model Limitations and Future Directions

- Deterministic forecasts only—probabilistic ensembles and improved [uncertainty](https://www.emergentmind.com/topics/uncertainty) quantification are open research problems ([Bodnar et al., 2024](https://www.emergentmind.com/papers/2405.13063), [Wu et al., 26 Sep 2025](https://www.emergentmind.com/papers/2509.22295))
- Global, not regional, optimization—enhancement with regional high-resolution data remains unexplored
- Input modalities—In multimodal Aurora, current textual descriptions are LLM-generated; performance on real user-provided exogenous metadata has not been evaluated
- High pretraining cost—parameter-efficient distillation and cross-modal adaptation for practical deployment
- Model extensions—Earth system coupling (land, ocean, ice, air), additional modalities (e.g., audio, radar), and continuous-time decoders are potential future avenues

Aurora offers a rigorous blueprint for scalable, extensible, and computationally tractable foundation modeling in the Earth sciences. Its development marks a convergence of multi-scale transformer architectures, robust cross-domain adaptation, and practical strategies for enabling widespread, resource-aware application across atmospheric and hydrological forecasting domains.
### Relevant Definitions

Zero-shot Forecast

## Extracted Highlights & Quotes

### Main Article

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=127,32,129,65&color=note|Aurora A foundation model for the Earth system, p.1180]]
> > Earth system forecast  provide crucial early warnings for extreme events, and are also important for diverse applications ranging from agriculture to healthcare to global commerce
> 
> 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=134,26,137,13&color=red|Aurora A foundation model for the Earth system, p.1180]]
> > Earth system forecasting models face several limitations. They are computationally demanding, often requiring purpose-built supercomputers and dedicated engineering teams for maintenance. 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=157,0,163,11&color=red|Aurora A foundation model for the Earth system, p.1180]]
> > In 2023, a breakthrough came with Pangu-Weather, in which a neural network replaced a numerical solver, outperforming state-of-the-art forecasting systems and sparking a wave of weather prediction models based on AI

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=173,0,174,59&color=red|Aurora A foundation model for the Earth system, p.1180]]
> > In this paper, we introduce Aurora, a foundation model for the Earth system, capable of tackling a variety of forecasting tasks.

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=178,2,183,13&color=note|Aurora A foundation model for the Earth system, p.1180]]
> > Fe first pretrain Aurora on more than one million hours of diverse Earth system data. We then fine-tune the model on a range of downstream tasks, demonstrating for the first time that an AI model can outperform several existing operational systems while also being orders of magnitude faster. 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=1&selection=206,0,207,60&color=red|Aurora A foundation model for the Earth system, p.1180]]
> > Aurora is a machine learning model that produces forecasts for any collection of Earth system variables at any desired resolution.
> 
> 

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=14,0,19,6&color=note|Aurora A foundation model for the Earth system, p.1181]]
> > The model consists of three parts: 
> > 	(1) an encoder that converts heterogeneous inputs into a universal latent three-dimensional (3D) representation
> > 	(2) a processor that evolves the representation forward in time
> > 	(3) a decoder that translates the standard 3D representation back into physical predictions. 
> > The processor is implemented as a 3D Swin Transformer

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=28,8,29,65&color=red|Aurora A foundation model for the Earth system, p.1181]]
> > Forecasts for different lead times are generated by recursively feeding predictions back into the model as inputs.


> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=32,0,34,51&color=red|Aurora A foundation model for the Earth system, p.1181]]
> > We train Aurora on a large body of Earth system data to learn a generalpurpose representation of the dynamics that govern atmospheric and oceanic flow and associated second-order processes.

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=34,56,36,49&color=note|Aurora A foundation model for the Earth system, p.1181]]
> >  first training phase is called pretraining and includes a mixture of forecasts, analysis data, reanalysis data and climate simulations

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=39,43,41,72&color=note|Aurora A foundation model for the Earth system, p.1181]]
> > Second training phase can make use of the learned general-purpose representations to efficiently adapt to new tasks, new datasets and new variables.

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=42,50,44,57&color=red|Aurora A foundation model for the Earth system, p.1181]]
> > Whereas pretraining is expensive and requires large amounts of data, fine-tuning is much cheaper and can typically be performed with little data. 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=51,0,53,35&color=red|Aurora A foundation model for the Earth system, p.1181]]
> > Aurora is able to achieve unprecedented performance in fine-tuning tasks by simultaneously scaling the volume of data used during pretraining along with its model size.
> 
> 

> [!PDF|important] [[Aurora A foundation model for the Earth system.pdf#page=2&selection=68,0,77,30&color=important|Aurora A foundation model for the Earth system, p.1181]]
> > Aurora outperforms both the Integrated Forecasting System (IFS) of the European Centre for Medium-Range Weather Forecasts (ECMWF), the state-of-the-art numerical weather prediction system and GraphCast3 on more than 91% of all target

Note: Not in deep research has been done in Atmospheric chemistry and air pollution, Ocean wave dynamics and Tropical cyclone tracking since the goal is to use Aurora for floods.
#### High-resolution weather forecasting

How can I translate this to my field?

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=6&selection=19,0,22,39&color=red|Aurora A foundation model for the Earth system, p.1185]]
> > To accurately resolve high-impact weather events such as severe storms, it is essential that weather prediction systems operate at a high spatial resolution to resolve processes occurring at smaller scales, such as convective and boundary layer effects. 

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=6&selection=33,12,35,56&color=note|Aurora A foundation model for the Earth system, p.1185]]
> > The reason why state-of-the-art AI approaches are focused on 0.25° is the wealth of high-quality data available at this resolution, whereas 0.1° data are only available from 2016 onwards. 
> 
> 

> [!PDF|important] [[Aurora A foundation model for the Earth system.pdf#page=6&selection=35,56,38,33&color=important|Aurora A foundation model for the Earth system, p.1185]]
> > Here we demonstrate that a pretraining–fine-tuning protocol can be used to efficiently adapt Aurora to 0.1° and surpass the forecasting skill of IFS HRES under operational evaluation protocols.

> [!PDF|important] [[Aurora A foundation model for the Earth system.pdf#page=6&selection=65,19,67,65&color=important|Aurora A foundation model for the Earth system, p.1185]]
> > Owing to the limited availability of 0.1° data, we find that pretraining Aurora is essential in this application. On average, the pretrained model is better than training from scratch by 25% 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=6&selection=79,2,81,52&color=red|Aurora A foundation model for the Earth system, p.1185]]
> > Aurora is the only one capable of accurately predicting the abrupt increase in maximum 10-m wind speed, closely matching IFS analysis, which is taken to be the ground truth.

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=21,48,24,27&color=red|Aurora A foundation model for the Earth system, p.1186]]
> > From start to finish, each fine-tuning experiment took 4–8 weeks with a small team of engineers, compared with a typical development period of several years for dynamical baseline models. 

> [!PDF|important] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=28,46,31,48&color=important|Aurora A foundation model for the Earth system, p.1186]]
> > First, Aurora can easily be extended to generate an ensemble of forecasts, which are crucial in situations in which predictions are uncertain, such as for forecasts at longer lead times or for localized phenomena.
> 
> 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=36,66,41,61&color=red|Aurora A foundation model for the Earth system, p.1186]]
> > Following recent advances in end-to-end weather forecasting 49 , Aurora could be extended to directly operate on observational data. 

> [!PDF|important] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=46,25,50,12&color=important|Aurora A foundation model for the Earth system, p.1186]]
> > Although in this paper we showcase the application of Aurora to four domains, it could be fine-tuned for any desired Earth system prediction task, potentially producing forecasts that outperform the current operational systems at a fraction of the cost.
> 
> 

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=50,13,52,66&color=note|Aurora A foundation model for the Earth system, p.1186]]
> > Some examples include predicting local and regional weather, [...], extreme weather modalities such as floods and wildfires [...]. 

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=7&selection=54,31,57,21&color=red|Aurora A foundation model for the Earth system, p.1186]]
> > With the ability to fine-tune Aurora to diverse application domains at only modest computational cost, Aurora represents notable progress in making actionable predictions accessible to anyone.

### Methods
> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=9&selection=294,0,299,56&color=red|Aurora A foundation model for the Earth system, p.1188]]
> > 3D Perceiver encoder. To accommodate heterogeneous weather datasets with varying variables, pressure levels and resolutions, we design a flexible encoder that maps different datasets into a standardized 3D representation for input into the model backbone

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=9&selection=301,0,311,43&color=note|Aurora A foundation model for the Earth system, p.1188]]
> > The encoder treats all variables as H × W images. We incorporate static variables (orography, land–sea mask and soil-type mask) by treating them as extra surface-level variables. 
> 
> 

> [!PDF|note] [[Aurora A foundation model for the Earth system.pdf#page=9&selection=363,0,369,15&color=note|Aurora A foundation model for the Earth system, p.1188]]
> > The backbone of Aurora is a 3D Swin Transformer U-Net , which serves as a neural simulator (see Fig. B1 Supplementary Information Section B.1). This architecture allows for efficient simulation of underlying physics at several scales.

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=9&selection=370,23,372,34&color=red|Aurora A foundation model for the Earth system, p.1188]]
> > unlike classical Vision Transformers, here we use local self-attention operations within windows and a symmetric upsampling–downsampling structure.


> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=9&selection=398,0,400,55&color=red|Aurora A foundation model for the Earth system, p.1188]]
> > The decoder reverses the operations of the encoder, converting the output of the backbone, again a 3D representation, back to the normal latitude–longitude grid (

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=10&selection=2,0,8,29&color=red|Aurora A foundation model for the Earth system, p.1189]]
> > To train very large Aurora models on long-term dynamics efficiently, even at high resolutions, we develop a new roll-out fine-tuning approach. Our approach uses low-rank adaptation (LoRA) to fine-tune all linear layers in the backbone’s self-attention operations, allowing adaptation of very large models in a data-efficient and parameter-efficient manner.

> [!PDF|red] [[Aurora A foundation model for the Earth system.pdf#page=10&selection=35,21,39,37&color=red|Aurora A foundation model for the Earth system, p.1189]]
> >  Key datasets used in our experiments include ERA5 reanalysis, HRES operational forecasts, IFS ensemble forecasts, GFS operational forecasts, GEFS ensemble reforecasts, CMIP6 climate simulations, MERRA-2 atmospheric reanalysis, as well as CAMS forecasts, analysis and reanalysis data. 

