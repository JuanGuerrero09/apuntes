---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-30
Last Modified: Thursday 30th October 2025 16:53
---
# Thursday 30th October 2025

# 📒Class Summary

Time integration methods, numerical properties, algebraic equation system


---
# 🕸️Resources



---
# 📝 Notes

## Time Discretization

### Time integration - implicit.

Suppose we have a discretized PDE of type

f′=f(k+1)−f(k)Δtf' = \frac{f^{(k+1)} - f^{(k)}}{\Delta t}f′=Δtf(k+1)−f(k)​

We can integrate in time the following ways:

---

### Explicit:

f(tk+1)=f(tk)+Δt f′(tk)f(t^{k+1}) = f(t^k) + \Delta t \, f'(t^k)f(tk+1)=f(tk)+Δtf′(tk)

→ solution easy to determine  
→ Euler forward / _first order accurate_

---

### Implicit:

f(tk+1)=f(tk)+Δt f′(tk+1)f(t^{k+1}) = f(t^k) + \Delta t \, f'(t^{k+1})f(tk+1)=f(tk)+Δtf′(tk+1)

→ iterative solution  
→ Euler backward / _first order accurate_

### Forward time - centered space (FTCS)

-> Euler forward in time - central differences in space
![[Pasted image 20251030170022.png]]
e.g.
Diffusion equation 1D
$$
\frac{\partial\phi}{\partial t}= D \frac{\partial^2\phi}{\partial x^2}
$$
can be discretized to

$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k}{\Delta x^2}
$$
$$
\phi_i^{k+1} = \phi_i^k+\frac{D \Delta t}{\Delta x^2}(\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k)
$$

### Backward difference in time-centered space (BTCS)
![[Pasted image 20251030170650.png]]
$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}
$$
regrup (only known term in the right)

$$
(1 + 2\frac{D\Delta t}{\Delta x^2})\phi_i^{k+1}-\frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i-1}- \frac{D\Delta t}{\Delta x^2}\phi^{k+1}_{i+1} = \phi^k_i
$$

### Crank - Nicolson method / Central difference in time - centered in space (CTCS)
![[Pasted image 20251030171151.png]]

$$
\frac{\phi_i^{k+1} - \phi_i^k}{\Delta t}= D \frac{1}{2}( \frac{\phi_{i+1}^{k+1} - 2\phi_{i}^{k +1} + \phi_{i-1}^{k+1}}{\Delta x^2}+\frac{\phi_{i+1}^{k} - 2\phi_{i}^{k} + \phi_{i-1}^{k}}{\Delta x^2})
$$
$$
(2 + 2\frac{D\Delta t}{\Delta x^2})\phi_i^{k+1}-\frac{D\Delta t}{\Delta x^2}

$$

TO BE FINISHED

### Higher order time-integration schemes
Multipoint method (Adams-Bashforth scheme)

### Runge Kutta time-integration schemes
2 equations, one as a prediction and one correction

## Numerical Properties

### Initial conditions
Every derivative in time requires initial conditions

Impact of initial conditions should decay over time

Solution should not depend in the initial conditions

### Consistency
Truncation errors $O(\Delta t)^q$ and $O(\Delta x)^q$
How to analyze order of convergence

### Important numerical properties

- Consistency -> Truncation errors decay to zero for infinitesimal step size
- Stability -> Erros do not magnify over time
- Convergence -> Consistent and stable
- Conservation -> Solution should reflect the underlying conservation laws
- Boundedness -> Solution within proper bounds (e.g. no negative density)

### Consistency criterion
Von Neumann stability
D -> Determines if the error magnifies or not

### CFL Criterion

## Algebraic equation system

> Implicit method will be the second excercise

Compass notation

Every cell that I'm computing Im creating a matrix




---
# 🐢 Definitions


---
# 📅 Homework



