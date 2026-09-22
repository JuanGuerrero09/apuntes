
> [!note]+ Definition
> A specialized type of recurrent neural network (RNN) designed for sequential data and deep learning.
> 	
> > [!PDF|red] [[Apuntes/00 Thesis/Papers/Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks.pdf#page=3&selection=50,0,52,52&color=red|Rainfall–runoff modelling using Long Short-Term Memory (LSTM) networks, p.6007]]
> > The LSTM architecture is a special kind of recurrent neural network (RNN), designed to overcome the weakness of the traditional RNN to learn long-term dependencies.
> 
> 

### Hydrological Modeling Context

- **Lumped Catchment Modeling:** Most state-of-the-art hydrological LSTMs employ a lumped formulation, where dynamic meteorological forcing data and static catchment attributes are spatially averaged across the watershed before being fed into the network.

- **Seminal Paper:** The foundational benchmark establishing LSTMs for rainfall–runoff modeling across large-sample datasets is **[[Kratzert et al. (2018)]]**.

### Core Architecture Formulation

![[Kratzert et al. (2018)#Long Short-Term Memory (LSTM) Architecture]]

### Step-by-Step Numeric Example

Assume a single-neuron scalar setup where input dimension is $1$ and cell/hidden dimension is $1$.

**Given Initial States & Input:**

- Previous cell state: $c_{t-1} = 2.0$
- Previous hidden state: $h_{t-1} = 0.5$
- Current input: $x_t = 1.0$

**Learned Weights & Biases:**

- Forget gate: $W_f = 0.8,\; U_f = 0.4,\; b_f = -0.5$
- Input gate: $W_i = 0.5,\; U_i = 0.2,\; b_i = 0.0$
- Candidate state: $W_c = 1.0,\; U_c = -0.5,\; b_c = 0.2$
- Output gate: $W_o = 0.6,\; U_o = 0.1,\; b_o = -0.1$

**Step 1: Compute Forget Gate ($f_t$)**

$$z_f = W_f x_t + U_f h_{t-1} + b_f = (0.8 \cdot 1.0) + (0.4 \cdot 0.5) - 0.5 = 0.8 + 0.2 - 0.5 = 0.5$$

$$f_t = \sigma(0.5) = \frac{1}{1 + e^{-0.5}} \approx 0.6225$$

_(The model keeps $\approx 62.25\%$ of its previous long-term memory)._

**Step 2: Compute Candidate ($\tilde{c}_t$) & Input Gate ($i_t$)**

$$z_c = W_c x_t + U_c h_{t-1} + b_c = (1.0 \cdot 1.0) + (-0.5 \cdot 0.5) + 0.2 = 1.0 - 0.25 + 0.2 = 0.95$$

$$\tilde{c}_t = \tanh(0.95) \approx 0.7398$$

$$z_i = W_i x_t + U_i h_{t-1} + b_i = (0.5 \cdot 1.0) + (0.2 \cdot 0.5) + 0.0 = 0.5 + 0.1 = 0.6$$

$$i_t = \sigma(0.6) = \frac{1}{1 + e^{-0.6}} \approx 0.6457$$

_(The model incorporates $\approx 64.57\%$ of the new candidate information)._

**Step 3: Update Cell State ($c_t$)**

$$c_t = f_t \cdot c_{t-1} + i_t \cdot \tilde{c}_t$$
$$c_t = (0.6225 \cdot 2.0) + (0.6457 \cdot 0.7398)$$
$$c_t = 1.2450 + 0.4777 = 1.7227$$

**Step 4: Compute Output Gate ($o_t$) & Hidden State ($h_t$)**

$$z_o = W_o x_t + U_o h_{t-1} + b_o = (0.6 \cdot 1.0) + (0.1 \cdot 0.5) - 0.1 = 0.6 + 0.05 - 0.1 = 0.55$$
$$o_t = \sigma(0.55) = \frac{1}{1 + e^{-0.55}} \approx 0.6341$$
$$h_t = o_t \cdot \tanh(c_t)$$
$$\tanh(1.7227) \approx 0.9382$$
$$h_t = 0.6341 \cdot 0.9382 \approx 0.5949$$

**Final Values:**

- Updated Cell State: $c_t \approx 1.7227$
- Emitted Hidden State: $h_t \approx 0.5949$