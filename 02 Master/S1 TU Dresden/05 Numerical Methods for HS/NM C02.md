---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-10-29
Last Modified: Wednesday 29th October 2025 09:19
---
# Wednesday 29th October 2025

# 📒Class Summary


---
# 🕸️Resources



---
# 📝 Notes

## Basics discretization methods - part 1

Learning objective:
After the lecture, you will understand how to set up a problem that is described by a partial
differential equation by making proper choices for discretization and boundary conditions.

### Problem statement
What do you want to solve?

- What are possible assumptions? (rarefied / continuum, steady / unsteady, viscid/inviscid, compressile/incompressible, 1D / 2D / 3D)
- What is important in the physical problem? (diffusion, inertia, gravity)

### Typical problem: Advection-Diffusion-transport

Unesteady heat transfer equation

To determine the temperature field
𝑇 = f(x, y, z, t, u, v, w)

we need as many partial differential equations (PDEs) as we have unknowns

eg. T unknown but u = (u, v, w)T (fluid velocity field)

\par{T/t} + \par{(Tui/xi)} = Ds \par2{T/xi}

Assumptions

isotropic?, diffusion coef is ocnstant
2D, i = 1,2

→ Need algebraic expressions as approximations
for the derivatives to solve for the unknows
→ Taylor series expansion to approximate a
function by an infinite sum of its derivative

### Taylor series expansion and finite differences
What is a Taylor series expansion? -> a function is an infinite sum of terms that are expressed in terms of the function's derivatives at a single point.
What is finite differences?

First derivative is the tangent

$$
f(x+\Delta x) = f(x) + \frac{1}{1!} \frac{df(x)}{dx}(\Delta x) + \frac{1}{2!}\frac{d^2f(x)}{dx^2}(\Delta x)^2 + ...
$$

or

$$
\sum_{n=0}^{\infty}\frac{f^{n}(x)}{n!}\Delta x^n
$$
#### Finite difference scheme

$$
a\frac{df}{dx} + b\frac{d^2f}{dx^2} = cf
$$

Need algebraic expresions

No one ever expands above 3th order, since all avobe 4th order is neglectable since delta x is too small

$$\begin{gather}
f(x+\Delta x) = f(x) + \frac{1}{1!} \frac{df(x)}{dx}(\Delta x) + \frac{1}{2!}\frac{d^2f(x)}{dx^2}(\Delta x)^2 + ... \\ \\
\text{then}
\\ \\
\frac{df}{dx}=\frac{f(x+ \Delta x) - f(x)}{\Delta x} - \frac{1}{2}\frac{df^2}{dx^2}\Delta x + O(\Delta x)^2+...
\end{gather}
$$
First order accurate -> Euler forward

Euler backward (odd terms negative sign)
$$
f(x-\Delta x) = f(x) -\frac{df(x)}{dx}(\Delta x) + \frac{df^2(x)}{dx^2}(\Delta x)^2 - \;...
$$
then
$$
\frac{df}{dx}=\frac{ f(x) - f(x- \Delta x)}{\Delta x} + O(\Delta x)+...
$$

Can you become more accurate? To account for high order accuracy 

Central differences (substract backward from forward schemes -> Recombine forward and backward)
$$
f(x+ \Delta x) - f(x- \Delta x) = 2\frac{df(x)}{dx}(\Delta x)+\frac{1}{3}\frac{d^3f(x)}{dx^3}(\Delta x)^3
$$

then

$$
\frac{df(x)}{dx} = \frac{f(x+ \Delta x) - f(x - \Delta x)}{2 \Delta x} + O(\Delta x)^2
$$

reducing my delta x by a factor for 2 the improvement in the numerical method is by a factor of four
This is **second order accurate**

We take advantage of the second order for the taylor series expansion

#### Second order derivative
-> Adding forward backward scheme

$$

f(x+ \Delta x) - f(x- \Delta x) = 2f(x)+\frac{d^2f(x)}{dx^2}(\Delta x)^2+....

$$

then
$$
\frac{d^2f(x)}{dx^2} = \frac{f(x+ \Delta x) - 2f(x) + f(x - \Delta x)}{ \Delta x^2} + O(\Delta x)^2
$$


#### Numerical diffusion

Finite discretization foreces us to approximate sttep gradients

![[Pasted image 20251029102358.png]]

Discretization smoothens steep gradients → numerical diffusion
Intensity of numerical diffusion (~1/𝑞) given by truncation error $𝑂(Δx)^𝑞$

ANything we would like to do with finites differences will diffuse the solution

### Boundary Conditions
What are boundary conditions?
Discretizing we create nodes
Constant value vs constant gradient

#### Types of boundary conditions
##### Dirichlet
Constant values. e.g no slip velocity
$$
y(x) = f(x)∀x ∈ \partial \Omega
$$
Imporant to parameterize walls (zero velocity) and sources and sinks (constant values0)
![[Pasted image 20251029103201.png]]
##### Neumann 
Constant gradient e.g. free shear?? in fluid flow simulations
$$
\frac{\partial y}{\partial n}(x) = \frac{y_{i+1} - y_{i-1}}{2 \Delta x} = f(x)∀x ∈ \partial \Omega
$$
Realized via ghost cells or nodes, one layer of nodes outside the computational domain, start the boundary sligthly outside the boundary
![[Pasted image 20251029102731.png]]

#### Periodic boundary
For having a domain like channel, is big enough to repeat itself, useful in fundamental science analysis
Whatever comes out comes in again?
Important to simulate representative unit volume e.g. turbulent channel flow
![[Pasted image 20251029103247.png]]
Compute the physical propertie in a representative volume
### Summary
• Partial differential equations (PDEs) that can be discretized by Taylor series expansions
→ finite differences
• Finite differences can be discretized with different order of convergence
• Truncation error gives rise to numerical diffusion
• PDEs also need boundary conditions to become solvable



---
# 🐢 Definitions

Rarefied
Continuum
Viscid
Diffusion: like darcy flow


---
# 📅 Homework



