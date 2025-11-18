---
Class: "[[06 Machine Learning]]"
Date: 2025-11-14
Last Modified: Friday 14th November 2025 13:15
---
# Friday 14th November 2025

# 📒Class Summary


---
# 📝 Notes
## Classification, Convolutions and CNNs with pytorch 

### MLP for Classification

### Computer Vision with NN

### Convolutions

![[Pasted image 20251114135814.png]]

Convolution width Stride = 1

![[Pasted image 20251114135856.png]]

• kernel is reversed/rotated before operation is performed w⃗ = (−1, 0, 1) → (1, 0, −1) • stride describes by how much the kernel is moved 

#### Padding Strategies and Output Sizes 

Full Padding 0 0 1 2 3 4 1 0 -1 (output = input + 2) 
Same Padding 0 1 2 3 4 1 0 -1 (output = input) 
Valid Padding 1 2 3 4 1 0 -1 (output = input - 2) 


#### Convolution
Convolution Given a signal ⃗x (⃗x ∈ Rn) which is padded by p fields and a convolution kernel w ⃗(w⃗ ∈ Rm) which is applied at stride s, the output size is given by 
$$
o = [\frac{n + 2p -m}{s}]+1
$$

#### Convolution of images


### Convolutional Neural Networks



---
# 💡 Key Takeaways


---

# 💭 Questions

---
# 🐢 Definitions


---
# 📅 Homework

CNN with Pytorch