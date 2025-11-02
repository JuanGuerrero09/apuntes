---
Class: "[[06 Machine Learning]]"
Date: 2025-10-29
Last Modified: Wednesday 29th October 2025 15:40
---
# Wednesday 29th October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

## Lab 03 - ANNs and SGD

## Recap: Linear Models

> Open the notebook 1d_linear_Regression_modelled.ipynb PENDIENTE POST NOTEBOOK DE LA CLASE PASADA

What differences do you observe doing the sckit-learn and in hand?

## Artificial Neural Networks

Idea of Rosenblatt (1958) and recive every input as a node

Signals from the input lavery are handed over to the hidden layer by multiplication of W_00 to H_0.

Not lienar activation function

Then multiplicated again the output of hidden layer and get result of output layer

Also bias term b_h 

Xo * w + b_H = y_0

Input Layer:

Hidden Layer

Output Layer:


![[Pasted image 20251029154934.png]]

- Non linear activations $\sigma$ important
	- popular choice: ReLU? (Rectified Linear Unit)
	![[Pasted image 20251029155747.png]]
	- Alternatives: sigmoid, tanh, GeLU
	- required to express non-linear dependencies
If we didn't have non-linear activations we be restricted to only model linear dependencies

- Hidden layers:
	-  every hidden unit is connected to all inputs
	• every hidden unit has a fixed bias term
	• output of hidden layer: σ(W⃗x +⃗b)

The output is constructed the matrix of weigths by the inputs, bias input and then the non-linear activation

### Multilayer Perceptron

Meaning?

![[Pasted image 20251029160000.png]]
To train this kind of models we have to define a GAIN (Remember from the class before? decision tree) we call it loss function, L(y, y = f(x))


## How did we learn?

After the multilearning perceptron, how do we learn in


---
# 🐢 Definitions


---
# 📅 Homework



