A **Dense Layer** (also known as a **Fully Connected Layer** or **Linear Layer**) is the most fundamental building block in neural networks.

In a dense layer, **every neuron receives input from every single output of the previous layer**.

### How It Works Mathematically

A dense layer performs a linear transformation on the incoming vector $\mathbf{x}$, followed optionally by a non-linear activation function $f$:

$$\mathbf{y} = f(\mathbf{W}\mathbf{x} + \mathbf{b})$$

- $\mathbf{x}$ is the input vector from the preceding layer (for example, the LSTM's final hidden state $h_n$).
- $\mathbf{W}$ is the **weight matrix**, where each element represents the connection strength between an input neuron and an output neuron.
- $\mathbf{b}$ is the **bias vector**, which allows the layer to shift the baseline of the output independently of the inputs.
- $f(\cdot)$ is an activation function (like ReLU, SELU, or none/linear for pure regression).

### Its Role in Your Hydrology Setup

In recurrent models (like the LSTM used in Kratzert et al. or your current paper), the dense layer appears in two distinct roles:

- **Encoder (Input projection):** It takes high-dimensional raw features (meteorological series + static catchment parameters) and projects them into a dense representation before the recurrent loop begins.
- **Decoder / Output Head (Discharge calculation):** The LSTM outputs an internal memory representation vector ($h_n$). The dense layer takes that hidden vector (e.g., of size 320 or 64) and compresses it down to a single continuous real number: predicted streamflow $y$ (in $\text{m}^3/\text{s}$ or $\text{mm}/\text{day}$).