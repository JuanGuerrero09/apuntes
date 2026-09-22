---
Title: Modula Foundation Models for Time-Series Perception in Digital Twins
Authors:
  - Quang Hung Pham
  - Ryad Zemouri
  - Martin Gagnon
  - Luc Vouligny
Journal: Preprint
Date: 2026-07-07
Year: 2026
Status: To Review
tags:
  - Time-Series-Analysis
  - Foundation-Models
  - Self-Supervised-Learning
  - Digital-twins
  - Representation-learning
  - Mixture-of-Experts
---
Source: [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf]]

## Abstract

Engineering Digital Twins and PHM systems require robust perception modules capable of extracting actionable information from heterogeneous, non-stationary time-series data, yet existing methods are often task-specific, data-hungry, and difficult to transfer across operating conditions. To address this, this paper proposes a modular [[Apuntes/00 Thesis/Notes/Foundation Models|Foundation Model]] based on a collection of pretrained representation encoders learned through self-supervised learning on heterogeneous datasets, enabling transferable and task-agnostic representations for multiple PHM tasks. A gating mechanism dynamically selects the most relevant encoders for each target dataset, while a [[Transformer]]-based self-attention module aligns and aggregates the selected representations in a shared latent space. The framework supports diverse downstream tasks, including imputation, long-term forecasting, and few-shot learning, through lightweight task-specific heads. Experiments on the ETT benchmark and a real-world virtual sensing case for hydro-generator rotor temperature demonstrate competitive performance and highlight the potential of the proposed approach as a scalable perception layer for industrial digital twin and hybrid model-data PHM applications.


## Summary



### Relevant Definitions

- MoE: Mixture of Experts: MoE models consist of multiple expert networks whose outputs are selectively combined through a gating mechanism, enabling conditional computation, modularity, and specialization
- PHM
- ETT
- Representation Encoder

## Extracted Highlights & Quotes

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=1&selection=98,0,99,57&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.1]]
> > Digital Twins (DTs) are increasingly adopted across industrial domains as computational counterparts of physical assets that evolve in synchrony with real-world processes
> 
> 

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=1&selection=103,27,107,12&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.1]]
> >  DT perception relies on multivariate time-series data from heterogeneous sensing infrastructures, which face multiple interconnected challenges: data streams often differ in sampling rates, signal quality, and reliability; labeling is limited and data suffers from class imbalance; and systems operate under non-stationary regimes influenced by load fluctuations, component aging, environmental disturbances, and evolving operational conditions. 
> 
> 

> [!PDF|note] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=2&selection=9,0,9,112&color=note|Modular Foundation Models for Time-Series Perception in Digital Twins, p.2]]
> > Mixture-of-Experts (MoE) architectures provide a principled framework for addressing several of these challenges

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=2&selection=10,15,11,82&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.2]]
> > MoE models consist of multiple expert networks whose outputs are selectively combined through a gating mechanism, enabling conditional computation, modularity, and specialization

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=2&selection=60,0,61,69&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.2]]
> > Accurate time-series forecasting remains a central challenge in machine learning, particularly in the presence of non-stationarity, multi-scale temporal dependencies, and regime shift


> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=3&selection=18,104,20,48&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.3]]
> >  In modern formulations, experts are implemented as neural networks, including recurrent, convolutional, or linear architectures, and are trained jointly with the gating network.

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=3&selection=38,0,38,94&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.3]]
> > Transformer-based architectures have further enabled MoE models to scale to unprecedented size

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=3&selection=45,0,47,24&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.3]]
> > More recently, Time-MoE Shi et al. [2025] integrated sparse MoE layers into a decoder-only Transformer architecture for time-series foundation models, allowing scaling to billions of parameters while activating only a small subset of experts during inference

For Fine-Tuning:

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=9&selection=254,52,264,5&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.9]]
> > all pretrained encoders Ei ∈ E⋆ are kept frozen, while the adaptive components of the model are trained, namely the projection modules, the aggregation module, and the task-specific head.

Results and discussion

> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=15&selection=71,14,72,8&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.15]]
> > We outperform the PatchTST and iTransformer for all three metrics and have similar performance as Dlinear.


> [!PDF|red] [[Modular Foundation Models for Time-Series Perception in Digital Twins.pdf#page=18&selection=90,0,96,37&color=red|Modular Foundation Models for Time-Series Perception in Digital Twins, p.18]]
> > This paper introduced a modular foundation model for time-series perception based on a collection of pretrained representation encoders. By leveraging self-supervised learning on heterogeneous datasets, the proposed framework learns transferable and task-agnostic representations that can be reused across multiple downstream tasks. The architecture explicitly decouples representation learning, encoder selection, and task adaptation, enabling scalable deployment under limited supervision.






