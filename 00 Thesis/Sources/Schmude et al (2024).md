---
Title: "Prithvi WxC: Foundation Model for Weather and Climate"
Authors:
  - Johannes Schmude
  - Sujit Roy
  - Will Trojak
  - Johannes Jakubik
  - Daniel Salles Civitarese
  - Shraddha Singh
  - Julian Kuehnert
  - Kumar Ankur
  - Aman Gupta
  - Christopher E Phillips
  - Romeo Kienzler
  - Daniela Szwarcman
Journal: Preprint
Date: 2024-09-20
Year: 2024
Status: To Review
tags:
  - AI
  - Foundation-Models
---
Source: [[Prithvi WxC Foundation Model for Weather and Climate.pdf]]

Keywords: 
## Abstract

Triggered by the realization that AI emulators can rival the performance of traditional numerical weather prediction models running on HPC systems, there is now an increasing number of large AI models that address use cases such as forecasting, downscaling, or nowcasting. While the parallel developments in the AI literature focus on foundation models – models that can be effectively tuned to address multiple, different use cases – the developments on the weather and climate side largely focus on single-use cases with particular emphasis on mid-range forecasting. We close this gap by introducing Prithvi WxC, a 2.3 billion parameter foundation model developed using 160 variables from the Modern-Era Retrospective Analysis for Research and Applications, Version 2 (MERRA-2). Prithvi WxC employs an encoder-decoder-based architecture, incorporating concepts from various recent transformer models to effectively capture both regional and global dependencies in the input data. The model has been designed to accommodate large token counts to model weather phenomena in different topologies at fine resolutions. Furthermore, it is trained with a mixed objective that combines the paradigms of masked reconstruction with forecasting. We test the model on a set of challenging downstream tasks namely: Autoregressive rollout forecasting, Downscaling, Gravity wave flux parameterization, and Extreme events estimation. The pretrained model with 2.3 billion parameters, along with the associated finetuning workflows, has been publicly released as an open-source contribution via Hugging Face.

## Summary

Prithvi WxC 
- Transformed-based deep learning architecture
- large scale foundation model for weather and climate applications
- 2.3 billion parameters
- 160 variables from MERRA-2
- Encoder-decoder architecture

Task-specific deep learning forecast models examples:
- FourCastNet: Nvidia
- Pangu: Huawei
- GraphCast: Google Deepmind
- FengWu: Shanghai Artificial Intelligence Laboratory
- Stormer: UCLA
- AIFS: ECMWF

Prithvi WxC is at its core a scalable 2D vision transformer. The architecture is designed to allow for memory-efficient masked pretraining. It draws inspiration from both Hiera, MaxViT and SWIN transformers. Inputs, structured into windows, take the shape (batch, windows, tokens, features). We alternate between **local attention** (within a window) and **global attention** (across windows). This is implemented by transposing dimensions between transformer layers. Attention acts on the third dimension, the second being part of the batch. When data becomes dense -- i.e. in the absence of masking -- it is possible to add SWIN-like shifts to the local attention layers.

![[Pasted image 20260921132136.png]]

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=54,0,56,58&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > The validation of Prithvi WxC extends from zero shot evaluations for reconstruction and forecasting to downstream tasks such as downscaling of weather and climate models, the prediction of hurricane tracks and atmospheric gravity wave flux parameterization.

Note: I'm ommiting most of the training part since is kinda irrelevant

### Relevant Definitions

MERRA2: Modern-Era Retrospective Analysis for Research and Applications Version 2

## Extracted Highlights & Quotes


> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=1&selection=143,37,147,12&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.1]]
> > While the parallel developments in the AI literature focus on foundation models – models that can be effectively tuned to address multiple, different use cases – the developments on the weather and climate side largely focus on single-use cases with particular emphasis on mid-range forecasting.

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=1&selection=157,0,159,80&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.1]]
> > We test the model on a set of challenging downstream tasks namely: Autoregressive rollout forecasting, Downscaling, Gravity wave flux parameterization, and Extreme events estimation.


> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=1&selection=169,0,170,91&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.1]]
> > Deep learning is increasingly transforming weather applications by delivering highly accurate forecasts with reduced computational costs compared to traditional numerical weather prediction

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=0,66,6,1&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > Unlike the traditional physics-based approaches, deep learning models do not directly simulate the underlying physics. Instead, they capture this through probability distributions derived from model training, a method adapted from natural language processing and computer vision.

> [!PDF|note] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=8,77,14,13&color=note|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > most current deep learning models for weather are task-specific forecast emulators, which focus solely on the forecasting problem. 

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=29,0,30,89&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > Looking beyond atmospheric sciences at developments in AI in general and language models in particular, the last few years have been dominated by the emergence of foundation models.
> 
> 

> [!PDF|note] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=31,4,32,36&color=note|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > A Foundation Model is a large AI models pretrained in a task-agnostic manner that can be effectively fine-tuned to address a number of specific use cases

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=33,8,33,93&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > applications of the foundation model principle to atmospheric sciences have been rare

> [!PDF|note] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=33,94,39,9&color=note|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> >  Current Foundation Models:
> >  - AtmoRep (Lessig et al., 2023) considered problems ranging from nowcasting to downscaling and bias corrections
> >  - Aurora (Bodnar et al., 2024) focusses a number of different forecasting problems.
> 
> 

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=40,0,42,64&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > To address this gap, we introduce Prithvi WxC, a large-scale foundation model for weather and climate applications trained on 160 atmospheric variables from the Modern-Era Retrospective analysis for Research and Applications, Version 2 (MERRA-2) data set
> 
> 

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=47,0,49,75&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > Prithvi WxC is a transformer-based deep learning architecture which combines ideas from several recent transformer architectures in order to effectively process regional and global dependencies of the input data and to efficiently process longer sequence lengths of tokens

> [!PDF|note] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=50,13,51,31&color=note|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > run in different spatial contexts or infuse additional tokens from off-grid measurements to the model during finetuning.

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=54,0,56,58&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > The validation of Prithvi WxC extends from zero shot evaluations for reconstruction and forecasting to downstream tasks such as downscaling of weather and climate models, the prediction of hurricane tracks and atmospheric gravity wave flux parameterization.

> [!PDF|note] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=2&selection=68,70,71,103&color=note|Prithvi WxC Foundation Model for Weather and Climate, p.2]]
> > - Since weather models can run on the entire earth or in a regional context, do we need specialized architectures for global and local problems?
> > -  Do we need to differentiate between models with zero and non-zero lead time? 
> > - If we do consider tasks with zero and non-zero lead time, what is a suitable pretext task for pretraining?

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=3&selection=27,0,31,34&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.3]]
> >  foundation model aiming to address all such use cases should be able to deal with a non-positive forecast step.

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=4&selection=136,13,136,75&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.4]]
> >  Prithvi WxC is a scalable and flexible 2D vision transformer.

> [!PDF|important] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=8&selection=12,0,14,85&color=important|Prithvi WxC Foundation Model for Weather and Climate, p.8]]
> > With all these caveats in mind, Prithvi WxC performs well to exceptionally well at very short lead times (6 and 12 hours), particularly for parameters like surface temperature. However, performance then decays and after about 66 hours Prithvi WxC falls below the performance of Pangu

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=16&selection=16,9,17,64&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.16]]
> > The emergence of deep learning, particularly foundation models pretrained on vast datasets, offers a promising alternative for weather and climate modeling.

> [!PDF|red] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=16&selection=24,33,26,21&color=red|Prithvi WxC Foundation Model for Weather and Climate, p.16]]
> >  Unlike task-specific deep learning models, Prithvi WxC aims to address a diverse set of downstream tasks, aligning with the foundation model paradigm prevalent in AI research. 

> [!PDF|important] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=16&selection=36,0,40,1&color=important|Prithvi WxC Foundation Model for Weather and Climate, p.16]]
> > In both cases, we demonstrate that a pretrained, frozen transformer trained on a single dataset can be effectively combined with additional architectural components to achieve strong results on new tasks with different datasets.

> [!PDF|important] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=16&selection=48,0,49,65&color=important|Prithvi WxC Foundation Model for Weather and Climate, p.16]]
> > Here, we found that the fine-tuned Prithvi WxC model improves by more than a factor of 4 over interpolation baselines.

> [!PDF|important] [[Prithvi WxC Foundation Model for Weather and Climate.pdf#page=16&selection=54,0,57,34&color=important|Prithvi WxC Foundation Model for Weather and Climate, p.16]]
> > Finetuning Prithvi WxC also demonstrates that large transformer-based foundation models can effectively learn mesocale atmospheric evolution, helping to streamline, enhance, and accelerate the development of physical parameterizations in climate models, which in turn improves prediction accuracy on interannual timescales
> 
> 


