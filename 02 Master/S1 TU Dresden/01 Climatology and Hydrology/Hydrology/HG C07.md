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

> How to do a rainfall runoff modelling?

### 6.5 Extreme Rainfall

Skillset
Design a reservoir for flood
protection:
 Catchment delineation
 P, station data, interpolation
 Storm rainfall estimation
(DDF)
 Direct runoff (SCS-CN)
 Flood frequency estimation
(design floods)
 Catchment water balance

Practice problem: estimate design flood BHQ for a reservoir
directly from statistics of observed flood

BHQ1: overflow
spillway design
BHQ2: global
stability

![[Pasted image 20251117112103.png]]

BHQ1 / BHQ2

**Flood computation for dams and storage reservoirs**

According to the revision of DIN 19700, design flows for reservoirs have to be determined for two reference events (BHQ1 and BHQ2):

- dimensioning of spillway structures using BHQ1
- proof of safety for the dam using BHQ2

Both depend on:

- the category of dam or
- the volume of the reservoir

Need to estimate

What is extreme event?
What is the maximum precipitation?


Practice problem: estimate design flood BHQ for a reservoir
instead from (statistics of) rainfall:
• estimate storm rainfall
• rainfall- runoff model
• derive peak flood level (and volume)
![[Pasted image 20251117112449.png]]

#### Probable Maximum Precipitation (PMP)

“the greatest depth of precipitation for a given duration that is physically
possible … at a particular geographical location …”

##### Estimation based on storm area (indirect approach)
 a group of PMPs with various durations and storm areas in a wide region
(a zone with meteorologically homogeneous conditions)

- Statistical estimation: 
	- Largest strom Km -> Enveloping (for various durations per station) -> Transposition (transposes Km to design station) -> PMP
	- $PMP|P_t = \bar{P_n} + K_m S_m$

where
$𝑃_𝑚, 𝑆_𝑚$ … mean and std of n annual maxima
$𝐾_𝑚$… statistical value (# of std added to
obtain maximum observed P, Pm)

- Generalized estimation
	- High-efficiency storm (observed) -> moisture maximization -> Transposition -> Enveloping -> PMP
##### Estimation based on watershed area (direct approach)
 direct estimation of PMP with a given duration (for reservoir design)
- Storm model -> Maximization -> PMP -> PMF

> Manual on Estimation of Probable Maximum Precipitation (PMP), WMO-No. 1045, 2009

##### Local estimation of storm rainfall (e.g., at a rain gauge)
-  design and risk analysis based on exceedance probability (= inverse of return period) and not on PMP/PMF
-  Aim: estimation of rainfall depth for various storm durations and a given re-occurrence period
	- Depth-Duration-Frequency (DDF) analysis
	- Intensity-Duration-Frequency (IDF) analysis (intensity = depth / duration)

> Is not really that useful to use PMP for the most of the tasks
##### Depth-Duration-Frequency (DFF) curve
>Explain how they work, why do  they flatten?

![[Pasted image 20251117114254.png]]


- Formal statistical method to derive extreme rainfall from data
- Steps to derive a DDF:
	- obtain rainfall time series of suitable length
	- aggregate for different durations
	- select annual maxima (for given durations)
		-  alternatively: values over threshold

Why is bigger when you had rainfall information overtime?

Ideally with 30 years, not possible with 3 or 5 years

With precipitation data for example, with 1 hour

![[Pasted image 20251117115845.png]]

histogram: empirical
probability density
function, pdf
> explain, normalized values to sum 1 the sum of all of them


rank P and calculate
cumulative distribution
function, cdf

> sum all the bars of the histogram

After that. I CAN HAVE THE PROBABILITY OF EXCEDENCE FROM the cumulative distribution function

Probability of exceedance = 1- F
non-exceedance probability, F

e.g. 80% of the values are not exceeded in the image
![[Pasted image 20251117120308.png]]


empirical distribution: no extrapolation possible
fit theoretical distribution function to the data

Then, Fit theorethical probability function to the obtained data

- select fistribution: eg. _Gumbel_, lognormal, Weibul
$$
F(x) = exp[-exp(-\frac{x-u}{\alpha})]
$$
- derive parameters (method of moments)
	- moments of Gumbel distribution
$$
\mu_x$$$$
\sigma_x^2
$$
	- with empirical momens of the sample (mean \mu_p, variance simga_p^2)
- Test fit. eg. Koklomogorov test, x^2 test

e.g. duration 1 hour

- empirical momen of the sample \mu_p = 14.1, \sigma_p^1 34.8
- parameters of gumbel distribution \alpha = 4.6 u = 11.4

![[Pasted image 20251117120905.png]]

 Use non-exceedance
probability F to derive P-
depths for selected return
periods (R = 2, 10, 50, 100 a)
 exceedance probability:
(1 – F) = 1 / R

![[Pasted image 20251117121136.png]]

![[Pasted image 20251117121143.png]]
![[Pasted image 20251117121157.png]]

> Dingman: Physical Hydrology,
(2nd Ed. 2014), Sec. 4.4.3, p 185ff


##### IDF (Intesity-Duration-Frequency Analysis)
> To fill
intensity = depth / duration







---
# 💡 Key Takeaways


---

# 💭 Questions


---
# 🐢 Definitions


---
# 📅 Homework

- Exercise 3 



