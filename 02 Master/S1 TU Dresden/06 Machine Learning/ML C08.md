---
Class: "[[06 Machine Learning]]"
Date: 2025-11-22
Last Modified: Saturday 22nd November 2025 13:31
---
# Friday 21st November 2025

# 📒 Class Summary

Introduction to **Convolutional Neural Network (CNN) architectures**, focusing on the development and intuition behind **ResNets** (Residual Networks) and **UNets**.  
The lecture covered how convolutions learn hierarchical features, why stacking convolutions increases the receptive field, and how **skip connections** and **residual learning** mitigate degradation in deep networks.  
Additionally, the session explored **image segmentation**, contrasting it with classification and showing the role of **UNets** as the baseline architecture for segmentation tasks in science.

---

# 📝 Notes

## CNN Architectures: ResNets and UNets

### Recap

#### How Convolutions Work

CNNs process images through **convolutional layers**, which apply small learnable filters (kernels) to the input image to detect features such as edges, textures, and shapes.

Each neuron in a convolutional layer processes only a **local region** of the input but shares weights across the entire spatial domain, allowing translation invariance and reducing the number of parameters compared to fully connected networks.

![[Pasted image 20251122171556.png]]

The **receptive field (RF)** of a CNN is the number of input pixels that affect an activation in a feature map — directly or indirectly.  
As convolutions are stacked, the receptive field increases **pyramidally**, meaning each deeper neuron captures larger and more abstract structures of the input (e.g., from edges → shapes → objects).

$$  
\text{RF} = f(\text{kernel size}, \text{stride}, \text{padding})  
$$

- **Shallow layers**: learn low-level features (edges, corners)
- **Intermediate layers**: capture textures, parts
- **Deep layers**: identify semantic structures (objects, faces)

This hierarchy of features explains why CNNs activate differently across layers — they mimic human perception, processing information from local details to global meaning.

![[Pasted image 20251122171659.png]]

#### Recap: ImageNet

- **ImageNet (Deng et al., 2009)** – a benchmark dataset with **1.2 million labeled images** across **1,000 classes**.
- Images are resized to **224×224 RGB pixels**.
- Evaluation uses **Top-5 accuracy**: the model’s prediction is correct if the actual label is among its top five predicted categories.
- ImageNet is fundamental in advancing computer vision, enabling models to learn general representations transferable to other tasks.

---

### Feature Propagation in CNNs

CNN filters evolve during training — early layers detect simple features like color gradients or edges, while deeper layers respond to object parts or entire shapes.  
Visualization studies (Zeiler & Fergus, 2014) showed how filters “specialize” over epochs, forming a hierarchy of visual abstractions.

This hierarchical learning arises from **repeated convolutions**, **non-linear activations (ReLU)**, and **pooling**, which progressively transform pixel data into higher-level feature maps.

---

### ResNets for Classification

#### Motivation: Why Deeper Isn’t Always Better

Increasing CNN depth was initially thought to guarantee better accuracy.  
However, experiments by **He et al. (2015)** demonstrated that **deep networks can degrade** — even their training error increases with more layers.

![[Pasted image 20251122200708.png]]

This degradation isn’t due to overfitting but to **optimization difficulties** — deeper networks struggle to propagate gradients effectively through many layers.

---

#### The Heart of ResNets: Skip Connections

![[Pasted image 20251122203749.png]]

ResNets introduced **skip (residual) connections** that bypass one or more layers by adding the input $x$ directly to the layer output $F(x)$:

$$  
H(x) = F(x) + x  
$$

Here:

- $F(x)$ = residual function to be learned.
- $x$ = input (identity mapping).

This design means that each residual block **learns only the residual mapping**, not the entire transformation.  
If the residual $F(x)$ becomes zero, the block simply passes its input — allowing the model to behave like a shallower network when needed.

**Advantages:**

- Prevents **vanishing gradients**, as gradients can flow directly through skip paths.
- Enables successful training of **very deep networks (>100 layers)**.
- Adds **no extra parameters** or computational cost.
- Layers must maintain the same dimensionality to allow addition ($F(x) + x$).

---

#### Deeper is Better (with Residuals)

![[Pasted image 20251122203817.png]]

Empirically, ResNets achieved lower training and test errors with increasing depth — e.g., **ResNet-18, 34, 50, 101, and 152 layers**.  
The skip-connection mechanism opened the door to **ultra-deep networks** that maintain optimization stability.

---

#### Rise of ResNets

|Model|Top-1 Error (%)|Top-5 Error (%)|
|---|---|---|
|VGG (2014)|24.4|7.1|
|PReLU-net|21.59|5.71|
|BN-Inception|21.99|5.81|
|**ResNet-34**|21.53|5.60|
|**ResNet-50**|20.74|5.25|
|**ResNet-101**|19.87|4.60|
|**ResNet-152**|**19.38**|**4.49**|

**Insights:**

- _Top-1 error_: single best prediction accuracy.
- _Top-5 error_: correct if the true label is among top 5 predictions.
- ResNet-50 remains a **benchmark architecture** even today due to its balance between performance and computational cost.

---

#### Common CNN Architectures


Studies (Canziani et al., 2017) compared major CNNs (AlexNet, VGG, GoogLeNet, ResNet, Inception).  
They found that **more parameters ≠ better performance**.  
Instead, **depth and architectural design** (like residual connections or inception modules) determine efficiency.

---

### UNets for Segmentation

#### What is Image Segmentation?

![[Pasted image 20251122104145.png]]

Segmentation assigns a **class label to every pixel**, turning image classification into a **pixelwise regression problem**.  
It goes beyond detection — not only recognizing an object but **localizing it precisely** within the image.

**Types of segmentation:**

- **Semantic segmentation**: classifies pixels into categories (e.g., dog, cat, background).
    
- **Instance segmentation**: distinguishes between separate instances of the same class.
    
- **Object detection**: identifies objects using bounding boxes.
    

Applications include:

- Medical imaging (tumor or organ segmentation)
    
- Environmental analysis (clouds, vegetation)
    
- Engineering (defect or flow pattern detection)
    

---

#### Particularities of Segmentation

Unlike classification, segmentation networks must:

- Produce an **output of the same spatial resolution** as the input.
    
- Handle **smaller datasets** (annotation is expensive).
    
- Learn **object localization** (not just class presence).
    

---

#### The UNet Architecture

![[Pasted image 20251122105105.png]]

Proposed by **Ronneberger et al., 2015**, UNet is a **fully convolutional network** (FCN) — it contains **no fully connected layers**, making it invariant to input image size.

**Key components:**

1. **Contracting path (encoder):**
    
    - Repeated convolutions and pooling layers reduce spatial dimensions.
        
    - Extracts deep semantic features (like in classification CNNs).
        
2. **Expansive path (decoder):**
    
    - Performs **upsampling** through transposed convolutions.
        
    - Reconstructs fine spatial details to match the input resolution.
        
3. **Skip connections:**
    
    - Transfer feature maps from encoder to decoder layers at corresponding levels.
        
    - Preserve spatial information lost during downsampling.
        

**Loss function:** pixel-wise **cross-entropy loss**, comparing predicted segmentation mask with ground truth.

---

#### The Rise of UNets

![[Pasted image 20251122105439.png]]

UNet quickly became the **gold standard** for biomedical and scientific image segmentation due to its accuracy and efficiency on small datasets.

Metrics like **Intersection over Union (IoU)** quantify segmentation quality:

$$  
IoU = \frac{\text{Area of Overlap}}{\text{Area of Union}}  
$$

**Modern frameworks:**

- **MONAI:** PyTorch-based library for 2D/3D medical imaging.
    
- **nnU-Net:** automatically configures UNet architecture for specific datasets.
    

---

#### UNets Beyond Segmentation

UNets are versatile — they can perform any **pixelwise regression** task:

- Dose prediction in radiotherapy.
    
- Weather and fluid dynamics modeling.
    
- Image-to-image translation tasks.
    

They are also used as **auxiliary networks** in multitask learning (e.g., feature extraction for other models).

---

#### Segmentation Beyond UNets

![[Pasted image 20251122105725.png]]

Modern segmentation uses **foundation models** like **SAM (Segment Anything Model)** and **SAM2**, which handle both images and videos.  
These models are based on **Vision Transformers (ViTs)**, not CNNs, and represent the current frontier in segmentation research.

---

# 💡 Key Takeaways

- **Convolutions** learn hierarchical spatial patterns, from simple edges to complex objects.
    
- **Receptive field** increases with network depth — giving CNNs a growing “field of view”.
    
- **ResNets** solve the vanishing gradient problem using **skip connections**, enabling deep networks to learn effectively.
    
- Each residual block learns a **residual mapping** ($F(x)$), simplifying optimization.
    
- **ResNet-50** remains a widely used architecture balancing performance and computation.
    
- **UNets** are designed for **pixelwise prediction**, with encoder-decoder paths and skip connections that restore spatial detail.
    
- Segmentation requires **dense prediction**, not just classification.
    
- UNets serve as baselines for segmentation and are used in multitask and scientific applications.
    
- **Vision Transformers** now extend segmentation beyond CNNs (e.g., SAM).
    

---

# 💭 Questions

- Why does increasing CNN depth sometimes degrade performance?
    
- What exactly is the function of a skip connection in ResNets?
    
- Why is UNet effective for small biomedical datasets?
    
- How does IoU differ from pixel accuracy?
    
- How does segmentation differ conceptually from object detection?
    

---

# 🐢 Definitions

- **Receptive Field (RF):** the number of input pixels influencing one output neuron.
    
- **Residual Connection:** a shortcut that adds input $x$ directly to output $F(x)$.
    
- **IoU (Intersection over Union):** metric evaluating overlap between predicted and true segmentation masks.
    
- **Pixelwise Regression:** predicting a continuous or categorical value for each pixel.
    
- **Skip Connection:** pathway connecting encoder and decoder layers to preserve spatial context.
    

---

# 📅 Homework

- Review the concept of receptive fields and derive how kernel size and stride affect it.
    
- Implement a simple ResNet block and visualize how skip connections affect gradient flow.
    
- Explore UNet segmentation on a small dataset using MONAI.
    
- Compare performance metrics: accuracy vs IoU vs Dice coefficient.