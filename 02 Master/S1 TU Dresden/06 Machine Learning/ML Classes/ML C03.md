---
Class: "[[06 Machine Learning]]"
Date: 2025-11-09
Last Modified: Sunday 9th November 2025 22:41
---
# Friday 24th Octuber 2025

# 📒Class Summary

This lecture continues the discussion of **model evaluation**, focusing on the limitations of simple holdout splits and introducing **cross-validation** as a statistically robust alternative.  
The session also introduces **Breiman’s Two Cultures** (data modelling vs. algorithmic modelling), followed by a detailed development of **simple** and **k-dimensional linear regression**, including the mathematical derivation of **least squares estimators** and their properties.

---
# 📝 Notes

## Model Evaluation and Cross-Validation (Continuation)

## One Holdout Set

### Introduction

The **holdout method** is the simplest evaluation approach: the dataset is split into a **training set** and a **test set**. The model is trained on the former and evaluated on the latter to estimate generalization performance.

### Purpose

The method checks whether the model can generalize beyond the data used to fit its parameters. A large performance gap between training and test sets indicates **overfitting**.

### Limitations

- The estimate depends entirely on a **single split**, making it unstable.
- Small datasets produce small test sets, reducing reliability.
- Hyperparameter tuning becomes problematic because repeated testing contaminates the test set.

This motivates the use of **cross-validation**.

---

## Cross-Validation

![[Pasted image 20251029152105.png]]

### Motivation

Cross-validation provides a more reliable estimate of model performance by repeatedly training and validating the model on different portions of the data. It uses the entire dataset for both training and validation at different stages.

### K-Fold Cross-Validation

The dataset is partitioned into $K$ equally sized folds.  
For each iteration:

1. One fold acts as the **validation fold**.
2. The other $(K-1)$ folds form the **training set**.
3. Performance is measured on the validation fold.

After $K$ iterations, performance is averaged:
$$\text{Performance} = \frac{1}{K} \sum_{i=1}^{K} \text{Performance}_i$$
### Choosing $K$

- Small $K$ → faster but less stable.
- Typical choices: **5 or 10**.
- Extreme: **LOOCV** ($K = n$), yielding maximum data usage but high computational cost.

---

### Cross-Validation Variants

#### Holdout Method

Single split. Fast but unreliable.

#### 2-Fold Cross-Validation

Dataset divided into two halves. Training and validation are swapped.

#### Repeated Holdout

Multiple random train/test splits; performance is averaged.

#### Leave-One-Out (LOOCV)

Each sample becomes the validation set once.  
High data efficiency, high computational cost.

![[Pasted image 20251029152219.png]]

---

## Two Cultures

Given data $D = { (\vec{x}_i, y_i) }$, two modelling philosophies exist:

### Data Modelling

- **Goal:**  
    Identify the mathematical relationship behind the data-generating process, i.e.  
    $y = f(\vec{x})$.
- **Reward:**  
    Strong interpretability and insight into underlying mechanisms.
- **Risk:**  
    If the assumed model is incorrect, conclusions are unreliable.

### Algorithmic Modelling

- **Goal:**  
    Achieve accurate predictions of $y$ from $\vec{x}$, independent of interpretability.
- **Reward:**  
    Highly flexible; any algorithm can be used.
- **Risk:**  
    The method may have no relation to the real-world mechanism.

Both perspectives lie on a spectrum and serve complementary roles.

---

## 1D Linear Regression

### Problem Setting: Simple Linear Regression

The model assumes a linear relationship between one predictor $x$ and response $y$:
$$y_i = \beta_0 + \beta_1 x_i + \varepsilon_i,\quad i=1,\dots,n.$$
![[Pasted image 20251029153315.png]]
#### Interpretation

- **Simple:** only one predictor.
- **Linear:** model is linear in parameters $\beta_0$ and $\beta_1$.
- **Randomness:** the noise term $\varepsilon_i$ makes $y_i$ stochastic.
- **Deterministic input:** $x_i$ values are treated as known constants.

#### Model Assumptions

- $\mathbb{E}[\varepsilon_i] = 0$
- $\text{Var}(\varepsilon_i) = \sigma^2$
- $\text{Cov}(\varepsilon_i, \varepsilon_j) = 0$

These assumptions ensure unbiased and minimum-variance estimators.

---

### Least Squares Estimation

Least Squares chooses parameters that **minimize the total squared discrepancy** between observed responses and model predictions:

$\min_{\beta_0,\beta_1}\ \sum_{i=1}^{n}(y_i-(\beta_0+\beta_1 x_i))^2$.  
Squaring penalizes larger errors more heavily and yields a smooth, differentiable objective.
#### Goal

Find $(\hat{\beta}_0, \hat{\beta}_1)$ that minimize:

$$\sum_{i=1}^{n} (y_i - \hat{y}_i)^2.$$

This is the **Ordinary Least Squares (OLS)** criterion.

### Notes

- OLS does **not** require assumptions about the distribution of errors.
- When Gaussian errors are assumed, OLS corresponds to **Maximum Likelihood Estimation**.

---

### Least Squares Solution

#### Slope

$$\hat{\beta}_1 = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})} {\sum_{i=1}^{n} (x_i - \bar{x})^2}$$
#### Intercept
$$\hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}$$
Both are derived by minimizing the squared loss with respect to $\beta_0$ and $\beta_1$.

#### Properties of Estimators

- $\mathbb{E}[\hat{\beta}_0] = \beta_0$
- $\mathbb{E}[\hat{\beta}_1] = \beta_1$
- Variances and covariances can be computed analytically.

---

### Observations and Takeaways

- The foundation of linear regression is minimizing squared errors.
- Simple formulas produce estimators with strong statistical guarantees:
    - unbiasedness,
    - minimal variance among linear unbiased estimators (Gauss–Markov).        
- These results enable the reuse of the same formulas whenever data follow similar generating processes.

---

## K-Dimensional Linear Regression

### Problem Setting: k-Dimensional Linear Regression

Model with $k$ predictors:  
$y_i=\beta_0+\beta_1 x_{i,1}+\cdots+\beta_k x_{i,k}+\varepsilon_i$.

![[Pasted image 20251029153612.png]]
#### Design Matrix and Notation

Stacking all observations in matrix form:  
$\vec{y}=X\vec{\beta}+\vec{\varepsilon}$,  
where $X\in\mathbb{R}^{n\times (k+1)}$ contains a column of ones (intercept) and the predictors.

### Least Squares Estimation and Solution

OLS in matrix form:  
$\hat{\vec{\beta}}=(X^\top X)^{-1}X^\top\vec{y}$.

![[Pasted image 20251029153702.png]]
#### Conditions and Practical Notes

- **Invertibility:** $X^\top X$ must be invertible; strong multicollinearity harms invertibility and inflates variance.
- **Centering/standardizing:** often improves numerical stability and interpretability of coefficients.
- **Diagnostics:** residual plots test homoscedasticity and independence; VIF checks multicollinearity.

---

## 💡 Key Takeaways

- A **single holdout** split is fast but unstable; **K-fold CV** provides a more reliable estimate of generalization.
- **Data vs. algorithmic modelling** reflects a trade-off between interpretability and pure predictive power.
- In linear regression, $\hat{\beta}$ denotes **estimated coefficients**; “hat” always signals “estimated from data”.
- **Least Squares** chooses parameters that minimize squared errors; with Gaussian noise it coincides with **MLE**.
- OLS estimators are **unbiased** and **variance-optimal** within the linear-unbiased class (Gauss–Markov).
- **Linear regression** is a mathematically grounded modelling framework with closed-form solutions and strong theoretical guarantees.
- OLS remains central because minimizing squared error appears in many modern algorithms.

---

# 🐢 Definitions

- **Holdout Method:** Evaluation using a single train/test split.
- **K-Fold Cross-Validation:** Method that averages performance over $K$ train/validation splits.
- **LOOCV:** Leave-One-Out Cross-Validation ($K = n$).
- **Data Modelling:** Modelling approach focused on interpreting the data-generating process.
- **Algorithmic Modelling:** Prediction-focused modelling with fewer assumptions.
- **Ordinary Least Squares (OLS):** Method that minimizes squared prediction errors.
- **Design Matrix ($X$):** Matrix containing predictors for all samples.
- **Model Assumptions (OLS):** zero-mean, homoscedastic, independent errors; normality often added for inference.
- **Estimator:** rule that maps data to parameter guesses; a **parameter with a hat** (e.g., $\hat{\beta}$) is the estimator’s realized value.    
- **Unbiasedness:** expected value of an estimator equals the true parameter.
- **Homoscedasticity:** constant error variance across all predictor values.
- **Multicollinearity:** strong linear dependence among predictors, degrading stability of $\hat{\beta}$.

---

# 📅 Homework

- Derive the OLS slope formula by setting the partial derivatives of $\sum_i (y_i-\beta_0-\beta_1 x_i)^2$ to zero.
- Simulate datasets with and without homoscedasticity and compare residual plots; discuss impact on variance estimates.
- Implement 5-fold and 10-fold CV for linear regression and report mean and standard deviation of the error metric.
- Create a small example with multicollinearity and show how $(X^\top X)^{-1}$ becomes ill-conditioned and inflates coefficient variance.