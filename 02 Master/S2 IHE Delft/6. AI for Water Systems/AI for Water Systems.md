
# Introduction to optimization

## Definitions and concepts

**Optimization**: A process to find the best possible outcome from a set of alternatives

Basic concepts and definitions:
- Objective function $f(x)$: The goal that you want to maximize or minimize
- Decision variables $x$: Inputs or choices that you can change to achieve your objective, the result that i want at end of optimization
- Constraints: Where the $x$ can move, e.g. $0\leq x \leq 2$, limitations, restrictions or boundaries where you operate
- Decision space: Dimensional space formed by decision variables, where the objective function is defined
- Feasible space (or constrained space): region of the decision space formed by the constrained decision variables

### Classification of optimization methods

Nature of equations:
- Linear : OF and constraint are linear equations
- Non-linear: At least one equation (constraint or OF) is non-linear
Presence of constraints:
- Constrained: The optimum is limited to a specific region defined by constraints
- Unconstrained: No limit in decision variables, -inf to inf
Type of decision variables:
- Continuous: Decision variables can take any value within a range of real numbers
- Discrete: Variables can only take specific values, often integers

### Examples of Optimization problems:

**Dam operations for hydropower:** 

The operator of a dam needs to manage water releases for the upcoming month. Releasing more water generates more revenue from hydropower, but reduces the amount of water stored in the reservoir for the dry summer season.

- OF: Maximize total revenue
- DV: Volume of water to release through turbines each day
- Constraints: 
	- Water level of reservoir should be within mimium and maximum levels
	- A minimum amount of water must be released to maintain downstream river ecosystem
	- The daily release cannot exceed the maximum flow capacity of the turbines

Type of problem: Non-linear, continous, constrained

**City Water Supply Pumping**

A water utility operates pumps to deliver water from a reservoir to its citizens. Electricity prices change throughout the day, being cheaper at night. The utility wants to run the
pumps in the most cost-effective way over a 24-hour period.

- OF: Minimize the cost of electricity over a 24-hour period
- DV: Operational status (on/off) of each pump for each hour
- Constraints:
	- Volume of water pumped must meet customer demand each hour
	- Water in storage tanks must remain between operational levels
	- Flow rate for each pump cannot exceed its maximum capacity

Type of problem: Non-linear, discrete, constrained

**Irrigation Scheduling for a Farm**

A farmer has several fields growing different crops. The farmer has a limited total allocation of water from the local authority. Each crop yields a different profit but also has different water needs throughout its growth cycle.

- OF: Maximize the total net profit from all crops for the season
- DV: The amount of water to apply to each field (f) during each week or watering cycle (t)
- Constraints:
	- Total water applied cannot exceed the farmer's legal water allocation
	- The amount of water applied cannot exceed the maximum flow rate of the farm's pump
	- Each crop must receive a minimum amount of water over the season to be viable.

Type of problem: Non-linear, continous, constrained

## Tips

- If it says minimum or maximum is the objective function
- Decision variables are things that we can actually change
---

## Linear and non linear problems


### Linear programming

Finding the optimal value of a **linear** objective unction subject to a set of linear constraints

Can be solved with a graphical method

### Non-linear programming

Most of real-world systems are not linear. Objective function or constraints (or both) are represented with non-linear equations.

Optimal solutions is no longer guaranteed, there could be many local solutions.

Types of solutions:

- Steepest descent: Walking downhill: to find the local minimum of a non-linear function
- Conjugate gradient methods

## Unconstrained optimization

Careful, needs mathematical derivation, but doesn't work always since it could have multiple minimums

Lagrange multiplier: mathematical tool used in calculus to find the maximum or minimum of a function when you are restricted by certain conditions (constraints).

## Discrete optimization

Problems where the decision variables must be discrete (e.g., integers, binary values, elements from a list)  Example: It is not possible to design a piped water network systems that use out-of-the-market diameters, even if they are sub-optimal

Types of DO:
- Pure integer programming: all variables are integers
- Mixed-integer programming: some are integers, other are continuous
- Binary integer programming: variables are 0 or 1, often used for yes/no decision

Integer programming: A type of linear programming where some or all of the variables must be integers. Why is it hard? We can not just solve the LP and round the answer. Rounding might make the solution infeasible or non-optimal.

Combinatorial Optimization: A subset of discrete optimisation that deals with finding an optimal object from a finite set of objects. It's about finding the best combination, ordering, or selection.

Common solution strategies:
- Brute force: systematically checking all possible candidates.
- Greedy algorithms:  dividing the problem in steps, and making the optimal choice at each step, does not guarantee that global optimim is found
- Genetic Algorithm
- ACCO - Adaptative cluster covering

## Optimization with unknown objective 

If objective function is not known analytically then we cannot get the gradients. Typical for a case when values of the OF are calculated by a computer program. There's knowledge about OF but is not known how to mathematically express it.

Main approaches:
- Set space covering techniques
- Random search methods (evolutionary and genetic algorithms)
- Multiple local searches using clustering

Types of random search methods: 
- Pure random reach (uniform sampling)
- Adaptative random search (non-uniform sampling)
- Evolutionary (genetic) algorithms
- Adaptative cluster covering

Newer, more powerful algorithms: check Multi Objective Optimisation in Python tool PyMOO (pymoo.org)

**Genetic algorithm**

- Emulate natural evolution. 
- Genetic operators
	- Crossover or recombination: to combine good points
	- Mutation: to generate new, different points
	- Selection: What points to keep and what to leave for next population

### Model based optimization

Model-based optimisation is a special case, where the code function includes a step where a model is ran to estimate the objective function.

```python
def my_objective_function(decision_variable):
	new_model = change_model_input(decision_variable)
	new_model_ouputs = run_model(new_model)
	obf = calculate_objective(new_model_ouputs)
	return obf
```

Example:
1. Model inputs
2. Process model (any water system model)
3. Model ouputs
4. Use model ouputs to calculate objective function
5. Optimizer:
	1. Algorithm that checks how much the objective function value changed
	2. Suggest new model inputs
6. Prepare the new inputs to be used by the model and go back to step 1



## Multi objective optimization

There are several objectives that are to be optimized, however, minimizing one does not mean minimizing another one.

ex.
- Maximize quality, minimize price
- Minimize urban floods. minimize river pollution
- Maximize power, minimize consumption

Definitions:
- Decision space: The set of all possible inputs or "levers" you can pull.
- Function objective space: The set of all possible performance outcomes.
- Pareto front: Set of options that are equally good. The boundary of optimal trade-offs where no improvement is possible.
- Ideal points: The "Utopia" point representing the theoretical best for each objective., could be 0,0 

From multi-objective to single-objective problem:

- Weighting method, choosing a $Z$ based on $Z= w_1Z_1+w_2Z_2$, disadvantage: how to choose $w_1, w_2$, one is compensated by other
- Method of ideal point: $Z = sqrt(Z_1^2+Z_2^2)$, disadvantage: data must be normalized, one is compensated by another
- Constraint method: Only one as fixed values as threshold $Z_2 \leq fixed\_value$  , then $Z_1$ can get the min, disadvantage: less sensitive to the fixed value $Z_2$



# AI and Machine Learning techniques

Popular methods in Machine learinng
- Linear regression and Logistic regression
- Support vector Machines
- Decision trees / random forest / model trees
- K nearest neighbour
- Bayesian Learning
- Reinforcement learning
- Artificial Neural Networks
	- Deep Neural Networks
		- Recurrent Neural Networks (RNNs)
		- Convolutional Neural Networks (CNNs)

**Difference between ML and Physically based models:**
- Physically based model are based on the understanding of processes (like how the water flows) while ML models are data driven develop
- PB process the knowledge on equations and conceptual descriptions, using parameters that have physical meaning
- ML Develop the system by connecting state variables (inputs and ouputs) and the paramters don't have physical significance

**A learning machine**

A learning machine using observations of a physical system D: {x, y} to learn a mapping  y = f (x). During the learning phase the prediction error (y – y’) is used to modify the  learning machine 

Components of learning:
- Physical system which returns an output vector y for a given input x according to a unknown mapping function f such that y=f(x)
- Finite number of observation D:{x,y}
- Learning machine that learns and unknown mapping f between system inputs and outputs
Computing error is such as:
$$
E=\frac{1}{N}\sum_{i=1}^N ||y_i-y_i^{'}||
$$

Deduction vs induction: Deduction gets the knowledge by knowing the principles, induction by learning from data (such as ML or a baby learning to walk)

## Supervised vs unsupervised learning

Basically labeled vs no labelled

Types of learning tasks:
- Clustering (unsupervised learning)
- Learning supervised classification
- Learning supervised regression
- Learning to control

Clustering: Finding groups in data
Classification: Target the output to a set of labels
Regression: Approximate a real valued target
Control: Learning machine learn to act as an optimal controller

## Data preparation

Types of data:
- Categorical data: belong to classes and is descriptive, like gender nationality or hometown
	- Nominal: no order, like gender
	- Ordinal: ordered, cold - medium - warm, good - medium - bad
- Numeric: Quantitative, can be measured and statistics can be measured
- Time series: indexed with specific time intervals
- Text data (strings)

Filling missing data: 
- Limited amount of missing data
	- Linear interpolation
	- Estimating missing data without changing mean or std of series
- Large gaps
	- Time periods with gaps may be removed
	- ML models may be built to fill the gaps

Noisy data:
- Can come from:
	- Measurement errors
	- Instrumentation errors
	- Human errors
	- Documentation errors
	- Communication errors

**Data normalization**

Before using the ML model the data is normalized. Usually converting the data within 0 and 1. However, sometimes data is normalized between 0.1 and 0.9 or -3 to 3

$$
x_i^{'} = \frac{x_i - x_{min}}{x_{max} - x_{min}}
$$


**Data transformation**

Most ml models work well if data distribution is close to the normal distribution. Data transformation can be linear or non-linear

Most widely used is to convert data to zero mean and unit variance:

$$
z_t = \frac{x_t-\mu}{\sigma}
$$
Bing $x_t$ the original data at moment t, $\mu$ the average value, $\sigma$ the standard deviation of x and $z_t$ the transformed data at moment t. The mean of z is 0.


**Linear transformation**

Does not change relationship between different time series. Can be the normalization.

**Non-linear transformation**

Can be logarithmic, like in sediment transport.

Sometims box-cox transformation is used as a non linear transformation method 

$$
z_t = \frac{x_t^\lambda-1}{\lambda}
$$

Where lambda is an exponent.



**Selection of variables**

- Based on understanding of the process:
	- For example: for a catchment could be used the past discharges, rainfall, ET, temperatures, etc
	- Lagged variables can be used 
- Based on the analysis of the data:
	- Correlation analysis
$$
r = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum_{i=1}^{n} (x_i - \bar{x})^2 \sum_{i=1}^{n} (y_i - \bar{y})^2}}
$$
		- $x_i, y_i$: Individual sample points.
		- $\bar{x}, \bar{y}$: The sample means of $X$ and $Y$.
		- The numerator represents the **covariance** of the two variables.
		- The denominator represents the product of their **standard deviations**.


**Data partitioning**

Divided in:
- Training data: used in training
- Validation or cross-validation: used to prevent overfitting
- Testing dataset: used as independent dataset to test the model

N-fold cross validation:
- Train the model  N times considering a different 10% data in cross validation with a block of 9 training - 1 test data 

## Clustering

Finding groups (clusters) in data (unsupervised learning)

Clustering is a preparation for classification

Purpose of clustering:
- Finding groups in a large datasests
- Then, aim to lavel each cluster as a class
- Clustering helps to understand the dataset and even find gorups in the data
Useful methods of clustering
- K-means clustering (clustering based on euclidean distance, MOST IMPORTANT ONE)
Find the best division f N data points in K clusters so the total variance is minimized
Minimum variance would be with N clusters

#### K-means clustering algorithm

 Consider a dataset of N data points 
 Consider K clusters (K is an input to the clustering process where K=1,2,…,N) 
 Randomly assign data points to the clusters 
 Compute the coordinate of each cluster centre 
 Reassign the data points to the new cluster  centres based on proximity 
 Recalculate the cluster centres 
 Repeat till the total variance (defined in the  previous slide) does not significantly change 

Challenges:  The number of clusters (K) needs to be an input  How to find the ideal value of K?  
#### Fuzzy logic

 Fuzzy set theory presents degree of truth in contrary to Boolean logic (yes or no) 
 Instead of something being either true or false it may have a degree of  membership (μ) to truth/false between 0 and 1 
 Fuzzy logic was introduced by Lotfi Zadeh  

![[Pasted image 20260701141851.png]]

PENDING
---

### Classification

 In classification the target output is a set of labels 
 The labels are often coded as integers 
 Each element of a class is assigned the same label (and same integer) 
 Class definitions are exclusive and thus a classifier has to learn a highly non-linear  mapping between inputs and all-or-nothing of a class label 
 We mainly talk about supervised classification 

Most used methods:
- Decision trees / random forest
- Artificial neural networks
- Support vector machines
- Bayesian classification
- K-nearest neighbor

#### Decision trees

Decision tree learning is widely used in classification problems. In DT the output variable is discrete valued (classes, e.g., Flood and No-Flood, male/  female, tall/ short) 
Inputs can be both real values or classes.

DT algorithms follow a top-down search for possible decision trees and choosing the  best one 

Most known algorithms:
- ID3
- C4.5
- C5.0
- CART


##### Entropy

Entropy is a measure that defines the purity or impurity of the collection of instances *S*. Varies between 0 and 1.

$$
Entropy(S)=-p_+log_2p_+ - p_-log_2p_-
$$

Being 
- $n_+$ the number of instances belonging to the class $+$
- $n_-$ the number of instances belonging to the class $-$
- $N=n_+ + n_-$ where N is the total number of instances
and
- $p_+$ is the ratio of $n_+$ and N
- $p_-$ is the ratio of $n_-$ and N

##### Information Gain

First the entropy (S) is computed for the available instances. 
Then attribute chosen for the root node one by one, for each attribute the information gain is computed. 
The attribute giving the highest information gain is selected.

$$
\text{Information gain}(S,A) = Entropy(S) - \sum_v (A)(\frac{n_{A,v}}{N})Entropy(S_{A,v})
$$
Being N total numbers of instances, A is a particular attribute, n_{A,v} number of instances of attribute A with value v


### Regression

## Data Preparation

Data normalization:

$$
	x_i^{'} = \frac{x_i-x_{min}}{x_{max}-x_{min}}
$$

Data transformation

$$
z_t = \frac{x_t-\mu}{\sigma}
$$

Non-linear transformation
$$
z_t = ln(x_t) \, \text{for } x_t \neq0
$$
$$
z_t = \epsilon \, \text{for } x_t = 0
$$

### Selection of input variables

If you have the right input and output variables you can build a model, you can justify  the results and your conclusions. It is also one of the most time consuming tasks 

Selection of the output variables influent the input variables

Correlation analysis

### Training in a machine learning model

ML models try to capture the implicit relationship between input and output variables 
Training is iterative; the same training data is used in N number of iterations 
At every iteration the model parameters are updated  Training is stopped when the changes in parameters are minimal or no. of iterations=N 

![[Pasted image 20260629170920.png]]

### Data partitioning

The available data needs to be split into training, testing and cross-validation dataset 
Cross-validation dataset is used in preventing overfitting 

**Overtraining** Model trained beyond the stop model, has less generalization capacity

**Overfitting**

**Generalization**


# Application of AI and Machine Learning

Data quality with full dataset, before the split

Feature selection (which inputs to select) with the training set, after data split

Data leakage


### Artificial Neural Networks

Neuron: Smaller unit that receives weighted inputs of multiple variables and computes $u$ as a linear combination of the inputs  

Most common architecture of ANN: Multi-layer perceptron (MLP) 
An MLP ANN typically has 3 or more layers of neurons 
The layers are termed as: input layer, hidden layer and output layer 

#### Input Layer

The input layer contains a number of nodes/ neurons, each node represents one input variable and the number of input nodes equals number of variables. 

Consider the problem of forecasting the water level (WLt+1) in a river (1 hr ahead of  time) We want to forecast WLt+1 using the following input variables: 
- Water level at time t (WLt) 
- Hourly rainfall at time t (Rt, rainfall measured between t-1 and t) 

### Hidden and output layers

The output layer contains a number of nodes: Each node represents one output  variable,
The number of output nodes equals the number of output variables, while the number of hidden nodes needs to be found out while building the model.

Each input node is connected with each hidden nodes: each connection has a  connection weight, and each hidden node is connected with each output node. All the connection weights need to be found out while building the model.

Hidden nodes: each hidden node receives from each input node the value of the input  variable multiplied by the connection weight. Each hidden node produces an output  

Output nodes: each output node receives from each hidden node its output multiplied  by the connection weight 


#### Steps for working

1. Initialization of weights

Before the training starts the weights need to be initialized.

2. Normalization

3. Transfer functions

Sigmoid:
$$
z = \frac{1}{1+e^{-v}}
$$

Tan hyperbolic

$$
z = tahh(v) = \frac{1}{1+e^{-v}}
$$

If needed, hidden and output layer may have different transfer functions

4. Backpropagation

Backpropagation is an iterative learning process used to train an ANN. It involves two main modes:

- **Mapping Mode:** Inputs are passed through the network (using current weights) to produce a predicted output ($z_k$). Initially, $z_k$ will differ significantly from the target/measured output ($t_k$).
    
- **Learning Mode:** The error between the predicted and actual output is computed and used to update the network weights to reduce this error in future iterations.

The error ($E$) is the metric used to guide weight updates. It measures the discrepancy between predicted outputs ($z_n$) and target values ($t_n$) across all $N$ data points.

- **For a single output node:**
$$E = \sum_{n=1}^{N} (z_n - t_n)^2 \quad \text{or (often preferred)} \quad E = \frac{1}{2} \sum_{n=1}^{N} (z_n - t_n)^2$$

- **For multiple output nodes ($K$ nodes):**
    $$E = \sum_{n=1}^{N} \sum_{k=1}^{K} (z_{k,n} - t_{k,n})^2$$
For optimizing the weights, imagine an "Error Surface" where the axes represent weight values and the height represents the error.

- **Goal:** Find the weight values that lead to the lowest point on this surface.
- **Method:** **Gradient Descent.*** Compute the slope (derivative) of the error surface at the current weight positions.
    - Adjust the weights in the direction that decreases the error most steeply.


To update a weight $w$ after iteration $m$, we calculate the change ($\Delta w$) based on the derivative of the error with respect to that weight.

**The Update Formula:**

$$\omega_{m+1} = \omega_{m} - \eta \frac{\partial E}{\partial \omega_s}$$

- **$\eta$ (Learning Parameter/Rate):** A small value ($0 < \eta < 1$) that dictates the step size. It ensures updates are not so large that they miss the optimum (ensures convergence).
    
- **$\frac{\partial E}{\partial \omega_s}$:** The derivative of the error with respect to the weight, indicating the "steepness" of the error surface in that direction.

To prevent weights from oscillating or changing too drastically, we introduce a **momentum coefficient ($\mu$)**. This uses information from the previous update to smooth the process.

**The Momentum Formula:**

$$\Delta\omega_{s,m+1} = -\eta \frac{\partial E}{\partial \omega_s} + \mu\Delta\omega_{s,m}$$

- **Why use it?** It stabilizes the learning process, prevents drastic changes, and helps the network converge more efficiently to the optimal weight values.
    
- **Typical Value:** $\mu \approx 0.7$ (meaning 70% of the previous update is carried over to the current one).

**Weight Update at the Output Node**

To update a weight $b_{j,k}$ connected to an output node, we calculate the partial derivative of the error with respect to that weight ($\frac{\partial E_k}{\partial b_{j,k}}$):

$$\frac{\partial E_k}{\partial b_{j,k}} = \frac{\partial E_k}{\partial z_k} \cdot \frac{\partial z_k}{\partial v_k} \cdot \frac{\partial v_k}{\partial b_{j,k}}$$

- **Error Gradient ($\frac{\partial E_k}{\partial z_k}$):** Given $E_k = \frac{1}{2}(z_k - t_k)^2$, the derivative is simply $(z_k - t_k)$.
    
- **Transfer Function Gradient ($\frac{\partial z_k}{\partial v_k}$):** Using the sigmoid function, the slope is $z_k(1 - z_k)$.
    
- **Input Gradient ($\frac{\partial v_k}{\partial b_{j,k}}$):**
    
    - For a **bias** (where there is no input $y$), the derivative is $1$.
        
    - For **standard weights**, the derivative is the input value $y_j$ coming from the hidden layer.
        

**Resulting gradients:**

- For bias: $(z_k - t_k) \cdot z_k(1 - z_k) \cdot 1$
    
- For weights: $(z_k - t_k) \cdot z_k(1 - z_k) \cdot y_{j,k}$
    

**Weight Update at a Hidden Node**

Updating a weight $a_{i,j}$ in a hidden layer requires propagating the error further back. We calculate the derivative of the total error $E$ (summed over all output nodes $K$) with respect to the hidden weight:

$$\frac{\partial E}{\partial a_{i,j}} = \frac{\partial E}{\partial y} \cdot \frac{\partial y}{\partial u} \cdot \frac{\partial u}{\partial a_{i,j}}$$

- **Cumulative Error Gradient:** This term aggregates the weighted errors flowing back from all output nodes: $\sum_{k=1}^{K} (z_k - t_k)z_k(1 - z_k)b_k$.
    
- **Hidden Node Gradient ($\frac{\partial y}{\partial u}$):** Similar to the output layer, using the sigmoid derivative: $y(1 - y)$.
    
- **Input Gradient ($\frac{\partial u}{\partial a_{i,j}}$):**
    
    - For a **bias**, this is $1$.
        
    - For **standard weights**, this is the input value $x_i$.
        

**Resulting gradients:**

- For bias: $\left( \sum_{k=1}^{K} (z_k - t_k)z_k(1 - z_k)b_k \right) \cdot y(1 - y)$
    
- For weights: $\left( \sum_{k=1}^{K} (z_k - t_k)z_k(1 - z_k)b_k \right) \cdot y(1 - y) \cdot x_i$


b input of the output


# Deep Learning


Deep Learning uses several processing layers to learn complex abstractions in data by building a hierarchy/levels of simpler abstractions

### **ML vs DL**

- DL is a subset of Machine Learning
- Both data-driven methods that learn from data, and depend on it to not have garbage
- ML is simpler in terms of architecture than DL
- ML is more interpretable
- ML has manual feature engineering vs DL that learn features implicitly
- ML learn with structured data vs unstructure on DL (images, audios, text)
- DL needs very large datasets, high computational requirements (GPU too) and has a slow training

Example: Differences for a regression

**Machine Learning**

1. Input: Raw Time Series
2. Human feature engineering: Antecedent Precipitation Index (API), Effective rainfall (EP), Baseflow (B)
3. Machine learning model
	1. Linear regression equation
	2. Training/validation - Testing
4. Output: River discharge


**Deep Learning**

1. Input: Raw Time Series
2. Deep learning model
	1. Layer 1: Temporal trends: Rainfall increases, then decreases, then is null
	2. Layer 2: Temporal dependencies: if rainfall increases and evapot decreases, then discharge increases
	3. Training/validation - Testing
3. Output: River discharge


### DL relevance and challenges

Why are they relevant?
- Unprecedented amount of (unstructured) data available
- Unprecedented availability of computational power
- Capacity of learning directly from data

Challenges:
- Rely heavily on data
- Overfits more easily
- More complicated training

### Deep Learning Models

- Multi Layer Perceptron (MLP): Most basic DL model
- Convolutional Neural Network (CNN): For grid based data
- Recurrent Neural Network (RNN), Long Short Term Memory (LSTM): For sequential data
- Generative Adversarial Network (GAN): Two competing neural networks
- Graph Neural Networks (GNN): Designmed to process data in structures like graphs
- Reinforcement Learning (RL): To learn decision in a specific enviroment
- Autoencoders: To learn data representations

The learning styles are:
- Supervised: MLP, CNN, RNN, GAN, GNN
- Unsupervised: Autoencoders
- Reinforcement learning

### Recurrent Neural Networks

#### Recurrent Neural Network (RNN)

##### What is a RNN?

Is a specific type of NN that deal with **sequential data**. Is mainly used to learn temporal dependencies among data and can be used for both classification and regression.

Input: Time step, window size or lookback


##### Architecture

Input layer $\rightarrow$ Hidden layer $\rightarrow$ Output layer

What changes is what is happening inside of the hidden layer. Each hidden contains specific number of recurrent neurons. Each recurrent neuron is connected to all the inputs (all input features and  all time steps), similarly to typical Neural Networks. 

![[Pasted image 20260710090047.png]]

Rolled vs Unrolled

![[Pasted image 20260710085959.png]]

There's an activation function that is "located" in each recurrent neuron

##### Handling temporal information

What is happening in the hidden layer? 

**Recurrent neurons**: 

- Each recurrent neuron receives the sequences of all input features but it learns only a specific temporal pattern. 
- Each recurrent neuron has its own set of input weights, recurrent weights  and hidden state. All the neurons within a hidden layer have the same  activation function. 

**Recurrent neurons and hidden state**: 

- When the second time step of features ($x_{t+1}$) is analysed, each neuron  remembers the previous hidden state ℎ𝑡𝑡 and updates it into $h_{t+1}$. It also  remembers and shares the previous set of inputs and recurrent weights. 

**Hidden state**:
- The hidden state $ℎ_𝑇$ is a vector containing the memory of what the neuron  has “seen” until time step 𝑇. 
- It remembers what is needed for the model to make the next prediction and it is different for each recurrent neuron.

**Weights sharing**:

- $𝑊_𝑥$ and $𝑊_ℎ$ are the matrixes of input weights and hidden state weights,  respectively. They differ for each neuron, but are shared across all time  steps. $𝑊_𝑥$ differ per input feature, while $𝑊_ℎ$ is the same across all features. 

#### Types of Recurrent Neural Networks

- One-to-many: characterised by one time step inputs and multiple time steps output. The RNN  uses it previous output to generate the next output, so it still keeps memory. 
- Many-to-one: characterised by multiple time step inputs and multiple  time steps output. 
	- Many-to-many same length predictions: if the outputs have the same number of time steps  of the inputs 
	- Many-to-many different length predictions: if the outputs have different number of time  steps of the inputs 

#### Challenges of Recurrent Neural Networks 

During Backpropagation Through Time (BPTT) the gradients of the loss  function depending on the weights are computed. This is the process that  updates the weights of the RNN 

- In the BPTT, however, it can happen that the gradients can shrink to zero (**vanishing gradients**) or grow explosively (**exploding gradients**), making the learning impossible. 

Hidden state is updated with the new information, but the memory is limited. Long memory patters the RNN prioritizes most recent time steps.

#### Long Short-Term Memory (LSTM)

A Long Short-Term Memory (LSTM) model is a special type of Recurrent  Neural Network that was designed to deal with long term sequences and  vanishing/exploding gradients. 

To deal with long term sequences, in addition to the hidden state $ℎ_𝑡$, each  neuron in the LSTM also has a **cell state $c_𝑡$** that controls the flow of  information through the time steps of the inputs sequence.  It also has the **input**, **output** and **forget gates**.

The hidden layer contains a specific number of neurons, which in the LSTM  model are called **LSTM cells**. 

Each LSTM cell (neuron) is connected to all the inputs $𝑥_𝑡$ and has its own  set of weights, hidden state and cell state. 

![[Pasted image 20260710095537.png]]

##### Architecture of the LSTM

Each LSTM has:
- Hidden state $ℎ_𝑡$, that deals with short-term memory 
- Cell state $c_𝑡$, that deals with long-term memory 
- A forget gate $𝑓_𝑡$, that decides what to forget from the previous cell state $c_{𝑡−1}$ 
- An input gate $i_𝑡$, that decides how much of the current input $𝑥_𝑡$ should be kept in memory 
- An output gate $o_𝑡$, that decides how much of the current cell state $c_𝑡$ should  be outputted as hidden state $ℎ_t$

![[Pasted image 20260710100016.png]]

The computation procedure at time t is the following:

1. The cell receives the previous hidden state $ℎ_{𝑡−1}$ and cell state  $c_{𝑡−1}$,  together with the current input $𝑥_𝑡$. 
2. The forget state $𝑓_𝑡$ takes the previous hidden state and the current input to  decide what of the previous hidden state to remove from the previous cell  state (long term memory). Based on the previous short term memory and  the new input, what should I keep memorizing for the next steps? 
3. The input gate $i_t$ takes the previous hidden state $ℎ_{𝑡−1}$ and current input $𝑥_𝑡$ to decide how much information of the current input should end up in the new  cell candidate cell state. In this stage, the current cell state is also computed.  Based on the new information received, how much of the previous short term  memory should I keep memorizing for the next steps? 
4. he output gate $o_𝑡$ takes the previous hidden state $ℎ_{𝑡−1}$ and current input $𝑥_𝑡$  and decides how much of the cell state (long term memory) should end up in  the current hidden state $ℎ_{𝑡−1}$ (short term memory). Based on the new  information received, how much of the previous long term memory should I  keep memorizing for the next steps? 

#### Class takeaways:
- RNNs are made for sequential data (time sequences) 
- Structure like NN: input-hidden-output 
- Hidden layers contain recurrent neurons. Each neuron analyses full input  sequences and retains short term memory of the previous time steps 
- RNNs struggle in capture long-term dependencies in data 
- LSTM models are a special type of RNNs defined to deal also with longterm dependencies 
- LSTM control which information to forget and which to retain thanks to three  different gates (forget, input, output) 

Early stopping

Use the one in mm.d-1
# Real time control of water systems

What is real-time? 

### Early warning systems

_The set of capacities needed to generate and disseminate timely and meaningful warning information to enable individuals, communities and organizations threatened by a hazard to prepare and act appropriately and in sufficient time to reduce the possibility of harm or loss_

### RTC can be used for?

- Flood mitigation


Define RTC for water systems
difference rtc ews
recognise types 


Componets of a control system

1. Process
2. Hardware: Sensors and actuator (physical device that acts, like pumps)
3. Software: Comparator and controler (controlled in the central system)
4. Data: Setpoint, actual value, error and nice

Categorization of control systems
By:
- Location of the control decision
	- Local: Decision are based on the information of the local situation
	- Central: Decision influenced by information coming from the different locations
- Subject that makes the control decision
- Timing of the inputs
- Scope of the algorithms in control
- Inclusion on material model
- Loop

Control scheme

## Controllers

Controller: Algortihm that takes error that was calculated by the comparatero to produce a signal for the actuator of the system Part of the software that generates an action for the actuator

Types of controllers:


PID: Proportional Integral Differential

Has
- $u$ control output
- $e$ error
- $x$ output
- $s$ setpoint
and is $u = Ke$ $e=x-s$

Being the K a proportional gain


### PID Exercise

$$
Q_{out} = CW\Delta h^{1.5}
$$



### Real-time control in urban drainage systems

Exercise

- Pond 1
	- Max Vol 1
- Flow12
	- Max flow = 2
	- Travel time = 1
- Pond 2
	- Max Vol 3
- Flow23
	- Max flow 4
	- Travel time 1
- Overflow (minimize)
- Sewage Treatment Plant
	- Max flow 4

Actuator: gate
Perpturbation : Rainfall
Setpoint: 


## Modelling for Control

Main modelling elements:
- Controllable flow elements
- Fixed flow elements
- Free flow elements


Polder: 





Assignment on real time control 25%
Written examination AI and machine learning 35%
Assingment application of AI 40%


Revisar la Field Visit - 9 of july around 12:00
Presentación julio 15
Exam 20 july
ç
![[Pasted image 20260720091512.png]]
![[Pasted image 20260720091521.png]]

![[Pasted image 20260720091529.png]]

![[Pasted image 20260720091540.png]]
![[Pasted image 20260720091612.png]]
![[Pasted image 20260720091623.png]]
![[Pasted image 20260720091633.png]]
![[Pasted image 20260720091642.png]]

![[Pasted image 20260720091451.png]]

![[Pasted image 20260720091721.png]]
![[Pasted image 20260720091738.png]]
![[Pasted image 20260720091755.png]]
![[Pasted image 20260720091814.png]]
![[Pasted image 20260720091849.png]]
![[Pasted image 20260720091857.png]]
![[Pasted image 20260720091908.png]]
![[Pasted image 20260720091915.png]]
![[Pasted image 20260720091923.png]]


### Optimization

- **What are the three main components of any optimization problem?**
    
    - Objective function, constraints, and decision variables.
        
- **Present a multi-extremum function and explain what is a problem of finding a minimum using gradient-based search.**
    
    - A multi-extremum function is a function with multiple local optima; gradient-based search may get trapped in a local minimum instead of finding the global minimum.
        
- **Multi-objective optimization: notions, decision variables space, objective functions space, Pareto set.**
    
    - **Notions**: Problems involving conflicting goals that cannot be optimized simultaneously.
        
    - **Decision variables space**: The multidimensional space of all possible values for the decision variables.
        
    - **Objective functions space**: The space representing all possible resulting values of the objective functions.
        
    - **Pareto set**: The set of optimal solutions where improving one objective necessarily degrades another.
        
- **Please finish the following statement:** Solution $s_i$ (with the estimated values of the Objective Functions being $OF_1(s_i)$ and $OF_2(s_i)$) belongs to the Pareto set if there is no other solution $s$ with the following property: **$OF_1(s) < OF_1(s_i)$ and $OF_2(s) < OF_2(s_i)$**.
    
- **Give examples of problems that require optimization.**
    
    - Maximizing hydropower generation while minimizing flood risk.
        
- **Present model calibration problem as the optimization problem.**
    
    - **Objective function**: Minimize the error between simulated results and expected observations.
        
    - **Threshold**: Physically realistic bounds for parameters (e.g., Manning’s n between 0.01 and 0.5).
        
    - **Decision variables**: Parameters such as Manning values and boundary conditions.
        
- **Present the problem of training an artificial neural network as an optimization problem.**
    
    - **Objective function**: Minimize the total error between predicted model output and expected target values.
        
- **What is global (direct) optimization?**
    
    - Methods that seek the absolute best (global) solution, often using stochastic or heuristic approaches.
        
- **What is the main idea used in genetic algorithm?**
    
    - Using random operations (crossover/mutation) to evolve a population of solutions, selecting the most accurate ones across generations.
        
- **Write down the objective function to be minimized when a linear regression model is built.**
    
    - $E = \sum_{i=1}^{n} (y_i - \hat{y}_i)^2$ (Sum of Squared Errors).
        

### Data-driven Modelling

- **What is a data-driven model?**
    
    - A model developed strictly from existing data to predict future outputs based on observed historical patterns.
        
- **What are the main data types?**
    
    - Nominal (categorical/discrete) and Continuous (numerical).
        
- **What is the role of data transformation and normalization?**
    
    - Transformation adapts raw data for model compatibility (e.g., unit conversion). Normalization scales data to a uniform range to prevent features with larger scales from dominating the model.
        
- **Write down the formula for normalization (scaling) a data set $\{x_1, \dots, x_n\}$ into $[0, 1]$ range, and the formula for the inverse transformation.**
    
    - Normalization: $x_{norm} = \frac{x - x_{min}}{x_{max} - x_{min}}$
        
    - Inverse: $x = x_{norm}(x_{max} - x_{min}) + x_{min}$
        
- **What is the purpose and the formula of the Box-Cox transform?**
    
    - Purpose: To stabilize variance and transform data to approximate a normal distribution.
        
    - Formula: $y(\lambda) = \begin{cases} \frac{x^\lambda - 1}{\lambda} & \text{if } \lambda \neq 0 \\ \ln(x) & \text{if } \lambda = 0 \end{cases}$
        
- **Role of training, cross-validation and test sets.**
    
    - **Training**: Used to fit model parameters.
        
    - **Cross-validation**: Used to tune hyperparameters and check for overfitting during training.
        
    - **Test set**: Used for the final, unbiased evaluation of the model's performance on unseen data.
        
- **Measuring error of classification and regression models.**
    
    - **Regression**: Measures like Mean Squared Error (MSE) or Mean Absolute Error (MAE).
        
    - **Classification**: Metrics like Accuracy, Recall, Precision, and F1-score based on correct classifications and the confusion matrix.
        
- **Types of data-driven models, depending on the type of their output.**
    
    - **Classification**: Discrete/nominal outputs.
        
    - **Regression**: Continuous/numerical outputs.
        
- **What is a decision tree, regression tree, model tree?**
    
    - **Decision Tree**: Predicts classes by partitioning input space.
        
    - **Regression Tree**: Uses constant values in leaves for continuous prediction.
        
    - **Model Tree**: Uses linear regression models in the leaf nodes.
        
- **How is entropy used in building a decision tree? Explain, how does ID3 algorithm work.**
    
    - Entropy measures subset disorder. ID3 works by greedily selecting the attribute that yields the highest Information Gain to partition data into branches.
        
- **What are the main elements of multi-layer perceptron (MLP) artificial neural network (ANN)?**
    
    - Input layer, hidden layer(s), output layer, weights, bias nodes, and non-linear activation functions.
        
- **Why MLP ANN is a non-linear model?**
    
    - Because it uses non-linear transfer (activation) functions at each neuron.
        
- **Write down formula for the objective function (model error) used when an MLP ANN is trained.**
    
    - $E = \frac{1}{2} \sum_{n=1}^{N} (z_n - t_n)^2$
        
- **What are the main elements of radial basis function (RBF) network. What parameters of RBF have to be optimized (trained)?**
    
    - Elements: Input layer, hidden layer with RBF neurons (centers and widths), and linear output layer.
        
    - Parameters to optimize: Centers and widths of the hidden units, and output layer weights.
        
- **Main ideas of instance-based learning.**
    
    - "Lazy learning" approach; store training instances and compare them to new inputs at query time rather than building a global model.
        
- **Comparison between eager and lazy learning.**
    
    - **Eager**: Builds a model during training (e.g., ANN, Decision Trees).
        
    - **Lazy**: Defers generalization until a new query is received (e.g., k-NN).