> [!PDF|red] [[https://www.nature.com/nature-index/topics/l4/machine-learning-applications-in-hydrological-modeling|Nature: Machine Learning Applications in Hydrological Modeling]]
> > A large pre-trained AI model that can be fine-tuned for specific downstream tasks such as meteorological or geospatial forecasting.

Whaat is the difference between foundtaion models and generative AI?

[https://youtu.be/mJMvFyBvZEk?si=0oFVUvs-yovs8n8D](https://youtu.be/mJMvFyBvZEk?si=0oFVUvs-yovs8n8D)  

# WWDC25: Meet the Foundation Models framework | Apple
  


Foundation Models API give access to the Apple Intelligence Model.

Everything is on device. Optimized for many tasks.

## Model

Uses a LLM with 3B parameters with each 2 bits

Is a device scale model and optimized to:
- Summarization
- Extraction
- Classification
- Tagging
- Composition
- Revision

## Guided generation

Offers a solution into how the model generate solutions

Constraints the code to simplify the prompts and guarantee the correct structure of the answer

## Snapshot streaming

Snapshots: deltas transformed into snapshot

robust and convinient representation for streaming structure output

## Tool calling

Allows the model to execute code in app

## Stateful sessions

FM are built around sessions

Specify the role 

Specify style and length

Instructions vs prompts
- Instructions: what comes from the developer, they have priority
- Prompts: what may come from the developer or users


  
  
[https://youtu.be/jhWAm5zKByU?si=t4g1OFQfRTm-PuwF](https://youtu.be/jhWAm5zKByU?si=t4g1OFQfRTm-PuwF)  
# Keynote: Phi-3-Vision: A highly capable and "small" language vision model | Microsoft Research Forum

It was the lastest foundation model. Mixed large language capabilities with computer vision.

Model architecture:
- Vision Encoder
- Text Prompt
- Textual and visual tokens ->Transformer Language Decoder (Phi-3-Mini-128k)

Sparse attention and self attention is used in those Transformer Language Model

  Pre trining:
  - Acquire general VL understaingd /generation skills
  - A diverse dataset of 100M image-text pairs

Post training 1 Supervised fine-tuning (SFT)
- Enhance model ability to follow instructions to solve downstream tasks
- A 15B-token dataset covering diverse domains/tasks 

Post training 2 Directed preference optimization (DPO)
- Improve the alignment of model behaviours to human preference 
- A highly selective multi-modal preference data 

![[Pasted image 20260828112550.png]]


[https://youtu.be/hdCuyPkaRBI?si=QT6Pmn9zd6P7WQTQ](https://youtu.be/hdCuyPkaRBI?si=QT6Pmn9zd6P7WQTQ)

# What is a foundation model

Pre trained in large amount of unlabeled data

Difference with traditional ML models:
- Models are built for specific use-case
- Limited by the quantity and quality of data
- FM are trained on large scale unlabeled and unstructured data (internet scale data)
- FM learn patterns and representation directly from raw input
- FM can handle task from many domains and fine tuned by supervised techniques
- FM paradign shift from traditional ML model


e.x. Amazon bedrock

[https://arxiv.org/abs/2410.15218](https://arxiv.org/abs/2410.15218)  

  

[https://arxiv.org/pdf/2607.03585](https://arxiv.org/pdf/2607.03585)
