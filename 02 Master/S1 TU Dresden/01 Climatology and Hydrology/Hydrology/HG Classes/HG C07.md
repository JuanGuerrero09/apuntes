---
Class: "[[Hydrology]]"
Date: 2025-11-17
Last Modified: Monday 17th November 2025 11:18
---
# Monday 17th November 2025

# 📒Class Summary

The session focused on the estimation of **extreme rainfall** for hydrological design, especially for **reservoir safety**. Key topics included the distinction between **BHQ1** and **BHQ2**, the concept of **Probable Maximum Precipitation (PMP)**, and the statistical procedures behind **DDF (Depth–Duration–Frequency)** and **IDF (Intensity–Duration–Frequency)** curves. The class also addressed the derivation of rainfall quantiles using the **Gumbel distribution**, as well as the workflow required to analyse multiple rainfall durations.

---
# 📝 Notes

## 6. Precipitation

> How to perform rainfall–runoff modelling?

Key components needed:
- precipitation input,
- catchment characteristics,
- hydrological model selection,
- transformation of rainfall into runoff.
### 6.5 Extreme Rainfall

Skillset required for designing a reservoir for flood protection:

- **Catchment delineation**
- **Precipitation data collection**, station identification, spatial interpolation
- **Storm rainfall estimation**, especially through DDF methods
- **Direct runoff modelling** (e.g., SCS–Curve Number)
- **Flood frequency estimation** (design floods)
- **Catchment water balance** estimation

These elements combine to produce a complete representation of flood behaviour for design.

---

#### Flood Design: BHQ1 / BHQ2

![[Pasted image 20251117112103.png]]

Using **DIN 19700** (German Technical norms), two design floods are required:
- **BHQ1:** overflow and spillway design
- **BHQ2:** global dam stability (extreme safety verification)

Both depend on:
- dam category
- reservoir volume

Critical questions:
- What is an extreme event?
- What is the maximum possible precipitation?
- How can a reservoir be protected from extreme floods?

Two approaches exist for design flood estimation:
1. from discharge statistics,
2. from rainfall statistics + rainfall–runoff model.

![[Pasted image 20251117112449.png]]

#### Probable Maximum Precipitation (PMP)

“**The greatest depth of precipitation for a given duration that is physically possible at a specific location.**”

Two major approaches:

##### Estimation based on _storm area_ (indirect approach)

A group of storms is collected across a meteorologically homogeneous region. The procedure:

1. Identify largest storms and their statistical factor $K_m$
2. **Enveloping**: determine upper envelope for various durations
3. **Transposition**: transpose storm magnitude to target site
4. Compute PMP:$$PMP|P_t = \bar{P_n} + K_m S_m$$

Where:
- $\bar{P_n}$ = mean annual maxima
- $S_m$ = standard deviation
- $K_m$ = statistical factor (# of std deviations added)
---
##### Generalized Estimation

- Identify a high-efficiency observed storm
- Apply moisture maximization
- Transpose storm to area of interest
- Envelope all maximized storms
- Derive PMP

---
##### Estimation based on watershed area (direct approach)
Used for reservoir design.

Steps:
1. Define storm model
2. Maximize moisture
3. Obtain PMP
4. Estimate PMF (Probable Maximum Flood)
Reference: **WMO Manual for PMP (2009)**.
---
##### Local Estimation of Storm Rainfall (Rain Gauge)

Used for most engineering applications because PMP is too conservative.

Goal: **estimate rainfall depths for different durations and selected return periods.**

Two tools:

- **DDF** — Depth-Duration-Frequency
- **IDF** — Intensity-Duration-Frequency

---
#### Depth–Duration–Frequency (DDF) Curves

![[Pasted image 20251117114254.png]]


A **formal statistical method** to estimate extreme rainfall.

##### Steps to Derive DDF Curves

1. **Obtain rainfall time series**  
    Ideally ≥30 years. Shorter series introduce uncertainty.
2. **Aggregate rainfall for multiple durations**  
    Examples: 10 min, 1 h, 6 h, 24 h.
3. **Select annual maxima**  
    For each duration.
    Alternatively: **peaks over threshold** (POT).
4. **Create empirical PDF**  
    ![[Pasted image 20251117115845.png]]
    Values are normalized so the integral = 1.
5. **Compute empirical CDF**    
    Sum of PDF bars from left to right.
6. Compute probability of exceedance:
    $P_e = 1 - F$
7. Fit a theoretical distribution (for extrapolation):  
    Common choices: **Gumbel, Lognormal, Weibull**.


e.g. 80% of the values are not exceeded in the image
![[Pasted image 20251117120308.png]]

---
##### Fit theoretical probability distribution

Empirical distribution: no extrapolation possible.  
The empirical CDF only describes what happened in the available record. It **cannot** predict values outside the observed range (e.g., 100-year events if only 20 years exist).  
Therefore, it is necessary to **fit a theoretical probability distribution** to the observed annual maxima.

The idea is:

1. Compute the empirical CDF from the data (ranking → $F$).
2. Select a suitable probability distribution (Gumbel, lognormal, Weibull, …).
3. Fit its parameters to the data.
4. Use the fitted model to estimate quantiles for selected return periods.

---

###### Select a distribution

Common choices for extreme rainfall:

- **Gumbel (EV1)** → very common in hydrology
- Lognormal
- Weibull
- Generalized Extreme Value (GEV)

For Gumbel (Extreme Value Type I), the CDF is:
$$F(x) = \exp\Bigl[-\exp\Bigl(-\frac{x-u}{\alpha}\Bigr)\Bigr]$$
where:
- $u$ is a location parameter
- $\alpha$ is a scale parameter

---

###### Derive parameters (method of moments)

To fit the Gumbel distribution to the rainfall sample, the **method of moments** can be used.

Moments of the Gumbel distribution:

- Mean:
$$\mu_x = \int_{-\infty}^{\infty} x \, f(x) \, dx = u + \gamma_e \alpha
$$
- Variance:
$$\sigma_x^2 = \int_{-\infty}^{\infty} (x - \mu_x)^2 \, f(x) \, dx = \frac{\pi^2}{6}\alpha^2
$$
Where:

- $\gamma_e = 0.5772$ (Euler–Mascheroni constant)

Using **empirical moments** from the sample:

- Sample mean: $\mu_p$
- Sample variance: $\sigma_p^2$

Then:

$$\alpha = \sqrt{6}\, \sigma_p \,/\, \pi \quad u = \mu_p - \gamma_e \alpha$$

Esto permite ajustar la distribución Gumbel a cualquier duración de lluvia (1 h, 3 h, 6 h, …).

---

###### Test of fit

Before using the fitted distribution for design purposes, perform a goodness-of-fit test:

- **Kolmogorov–Smirnov test**
- **Chi-square ($\chi^2$) test**

These tests indicate whether the theoretical distribution adequately represents the sample.

---

###### Example (duration 1 hour)

Given:

- Empirical mean: $\mu_p = 14.1$    
- Empirical standard deviation: $\sigma_p = 3.48$

From the method of moments:

- $\alpha = 4.6$
- $u = 11.4$

Once parameters are known:

$$F(P) = \exp\left[-\exp\left(-\frac{P-u}{\alpha}\right)\right]$$

For a **return period $R$**, the non-exceedance probability is:

$$F = 1 - \frac{1}{R}​$$

To compute rainfall depth $P$ corresponding to a given $R$, invert the CDF:
$$P = u + \alpha \left[ -\ln\left( -\ln\left( \frac{R-1}{R} \right) \right) \right]
$$
Este es el procedimiento usado para generar tablas de lluvia extrema.

![[Pasted image 20251117120905.png]]

---

###### Deriving $P$ for selected return periods

- Use $F = 1 - 1/R$ in the Gumbel quantile formula.
- Compute $P$ for $R = 2, 10, 50, 100$ años.

![[Pasted image 20251117121136.png]]

![[Pasted image 20251117121143.png]]  
![[Pasted image 20251117121157.png]]

These $P$ values populate the Depth–Duration–Frequency (DDF) tables used for design rainfall.

Fuente: Dingman: _Physical Hydrology_ (2nd Ed. 2014), Sec. 4.4.3, p. 185ff.

---

##### IDF (Intensity–Duration–Frequency Analysis)

The IDF approach expresses rainfall in terms of **intensity**, not depth.

Relationship:
$$
i(D, R) = \frac{P(D, R)}{D}​$$
Where:

- $i$ = rainfall intensity (mm/h)
- $P$ = rainfall depth for duration $D$ (mm)
- $R$ = return period

Once the DDF table is obtained:

1. For each duration $D$, compute intensity $i = P/D$.
2. Plot intensity vs. duration on log–log or semi-log axes.
3. Fit a power-law curve:

$i(D, R) = a \, D^k$ Or equivalently: $P(D, R) = a \, D^k$

As shown in the DDF example figure, plotting in log scale results in nearly straight lines, making curve fitting easier.

This curve is used in:

- Urban drainage design
- SCS-CN and unit hydrograph rainfall inputs
- Stormwater models (SWMM, MIKE URBAN, etc.)
- Flood protection design

---
# 💡 Key Takeaways
- Extreme rainfall analysis supports flood-protection design (reservoirs, spillways, dam safety).
- BHQ1 and BHQ2 refer to two design reference floods linked to spillway sizing and global dam stability.
- PMP represents a physical upper limit of precipitation; useful for safety-critical structures but not for everyday design.
- DDF curves relate rainfall depth to duration and return period; curves flatten because long-duration storms rarely maintain high intensities.
- Construction of DDF requires: long rainfall records, duration aggregation, annual maxima, empirical CDF, fitting a theoretical distribution.
- Empirical distributions cannot extrapolate → fitting is essential (Gumbel, lognormal, Weibull).
- Gumbel (EV1) is commonly used for extremes. Parameters obtained by method of moments ($\mu_p$, $\sigma_p$ → $u$, $\alpha$).
- Return period $R$ links to non-exceedance probability $F = 1 - 1/R$.
- Design rainfall depth for a given $R$ is obtained by inverting the fitted CDF.
- IDF curves convert DDF depths into intensities: $i = P / D$; often fitted with a power law.

---
# 💭 Questions

- What is the functional difference between BHQ1 and BHQ2?
    **BHQ1** ensures the spillway can handle a standard design flood, while **BHQ2** ensures the dam won't collapse during a "worst-case" catastrophic event.
- Why is PMP not the main tool for most hydrological design tasks?
    Because is not necessary the design scenario desired for construction, instead, a scenario of a probably of occurrence of 80% or similar for the PMP could be used.
- Why do DDF curves flatten at long durations?
    Because the rainfall duration tend to have a time of maximum precipitation, after it the rainfall ends and so the depth of rain obtained flatten
- How does the return period relate to exceedance and non-exceedance probability?
    The relation is that the exceedance is inverselly proportional by the relation F = 1 - 1/R
- Why is it necessary to fit a theoretical distribution instead of using only the empirical values?
    Because it allows the model to be generalized for other scenarios to predict a behavior instead of just sticking to existing values,
- What is the physical interpretation of the Gumbel parameters $u$ and $\alpha$?
    - **$u$ (Location):** This is the **mode** (most frequent value) of the annual maxima. It represents the "typical" extreme event. 3
    - **$\alpha$ (Scale):** This represents the **variability** or spread of the extremes. A higher $\alpha$ means the difference between a 10-year storm and a 100-year storm is very large. 4
- How does record length affect the reliability of extreme rainfall estimates?
    Because the estimate is obtained by the measurements, that for extremely short scenarios can be inaccurate
- Why is IDF more useful than DDF in urban stormwater design?
    In the urban stormwater design is more needed the peak discharge than the accumulated, since the structures needs to be design to not pass the design flows when doing the drainage.
- How does the choice of distribution (Gumbel, lognormal, Weibull) influence extreme rainfall estimation?
    Different distributions (Gumbel vs. GEV) change the "tail" of the curve. Some are more conservative and predict much higher values for long return periods ($R=1000$). 6
- What assumptions underlie the use of annual maxima?
	This method assumes that each year's maximum is **independent** and that the climate is **stationary** (the probability of an extreme event doesn't change over time).

---
# 🐢 Definitions

- **BHQ1**: Design flood used to size spillway structures.
    
- **BHQ2**: Extreme flood used to check overall dam safety.
    
- **PMP**: Maximum physically possible precipitation for a duration at a location.
    
- **PMF**: Flood hydrograph resulting from PMP via rainfall-runoff modelling.
    
- **Return period ($R$)**: Inverse of exceedance probability; $1/R$.
    
- **Exceedance probability**: Probability the event is exceeded in a year; $1/R$.
    
- **Non-exceedance probability ($F$)**: Probability the event is not exceeded; $F = 1 - 1/R$.
    
- **DDF**: Depth-Duration-Frequency relationship (rainfall depth vs duration vs frequency).
    
- **IDF**: Intensity-Duration-Frequency relationship (intensity vs duration vs frequency).
    
- **Gumbel distribution (EV1)**: Common extreme-value distribution for maxima.
    
- **$\alpha$ (scale)**: Controls spread of extremes.
    
- **$u$ (location)**: Shifts distribution horizontally.
    
- **CDF**: Cumulative distribution function; $F(x)=P(X\le x)$.
    
- **PDF**: Probability density function; derivative of CDF for continuous variables.

---
# 📅 Homework

- Exercise 3 
- Compute design rainfall depths for return periods $R = 2, 10, 50, 100$ using given $u$ and $\alpha$ for 1-hour duration.
    
- Construct a complete DDF table for 1h, 3h, 6h, 12h, 24h using the fitted distribution.
    
- Convert the DDF table into an IDF table (intensity = depth / duration).
    
- Fit the power-law $P = a,T^{k}$ (or $i = a,D^{k}$) and estimate parameters $a$ and $k$.
    
- Verify goodness-of-fit via Kolmogorov–Smirnov or $\chi^2$ test.



