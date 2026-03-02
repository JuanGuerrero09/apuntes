# Introduction (Lucy?)

Our project focuses on the numerical simulation of Rayleigh-Bénard Convection
We are solving the Navier-Stokes equations coupled with a **scalar transport equation**
We are looking how **heat**, represented here by **density** variations causes the fluid to move.

# The Numerical Domain (Grid Generation) (lucy)

We implemented a staggered grid. This is a type of discretization in which instead of having all the components in the nodes, we keep only the scalars, density and pressure, while having the velocities at the faces of the nodes

We did this specifically to avoid 'checkerboard instability,' a common numerical error where the pressure and velocity become decoupled, leading to non-physical results. (and will show an animation comparing both results)

# Central differences vs Upwind (jose)

For the discretization we used explicit method in space with central differences and implicit in space with a backward euler. However, it became unstable for higher Peclet numbers, that were almost the norm for the initial conditions, so we switched to this First-Order Upwind Scheme. It's more stable because it 'looks' in the direction the fluid is coming from to calculate the next state

# Solver SIMPLE (jose)

The process for the simple algorithm is in every time step update the density field, by the previous step velocities and densities, the process of the discretization of the scalar transport equation is there, so it yields to a form Ax = B, solving the new densities.

Then a discretizaiton is done for the momentum equations in both x and y axis, howver, one they are solved the velocities fields does not satisfy the conservation of mass equation (in this case, the divergence field is not equal to zero), so the for SIMPLE's sake, we take those results as intermediate velocities u* and v*

Then by the usage of the Poisson equation to enforce the conservation of mass, this equation is just the rearaging of the equations for the intermediate and correct velocities

$$\frac{u^* - u^n}{\Delta t} = \text{Advection} + \text{Diffusion} - \frac{\partial p^n}{\partial x}$$
$$\frac{u^{new} - u^n}{\Delta t} = \text{Advection} + \text{Diffusion} - \frac{\partial p^{new}}{\partial x}$$

Rearranging and discretizing this yields the formulas to update the velocity fields:
$$u^{new}_{i,j} = u^*_{i,j} - \Delta t \frac{p'_{i,j} - p'_{i-1,j}}{\Delta x}$$
$$v^{new}_{i,j} = v^*_{i,j} - \Delta t \frac{p'_{i,j} - p'_{i,j-1}}{\Delta y}$$
Then replacing that into the conservation of mass

$$\frac{u^{new}_{e} - u^{new}_{w}}{\Delta x} + \frac{v^{new}_{n} - v^{new}_{s}}{\Delta y} = 0$$
Substituting the velocity correction formulas into this continuity equation:

$$\frac{\left[ u^*_{e} - \frac{\Delta t}{\Delta x}(p'_E - p'_P) \right] - \left[ u^*_{w} - \frac{\Delta t}{\Delta x}(p'_P - p'_W) \right]}{\Delta x} + \frac{\left[ v^*_{n} - \frac{\Delta t}{\Delta y}(p'_N - p'_P) \right] - \left[ v^*_{s} - \frac{\Delta t}{\Delta y}(p'_P - p'_S) \right]}{\Delta y} = 0$$
Next is rearanged into a form Ax = B to get the unknow pressure correction p', then add it to velocites new and check if the divergence is (approximately ) zero, in case of not getting it do another iteration until the error is below a certain thresold, the result of this was a heavy intesing 

# Projection method ( **Chorin's projection method**) (juan)
The incompressible Navier-Stokes equation ([differential form](https://en.wikipedia.org/wiki/Differential_form "Differential form") of momentum equation) may be written as

$$\frac{\partial \mathbf {u} }{\partial t}+(\mathbf {u} \cdot \nabla )\mathbf {u} =-\frac{1}{\rho } \nabla p+\nu \nabla ^{2}\mathbf {u} $$

One first computes an intermediate velocity, u∗, explicitly using the momentum equation by ignoring the pressure gradient term:

$$
{{\frac {\mathbf {u} ^{*}-\mathbf {u} ^{n}}{\Delta t}}=-(\mathbf {u} ^{n}\cdot \nabla )\mathbf {u} ^{n}+\nu \nabla ^{2}\mathbf {u} ^{n}} \qquad \xcancel{-\frac{1}{\rho } \nabla p}
$$

That is corrected by

$$ \mathbf {u} ^{n+1}=\mathbf {u} ^{*}-{\frac {\Delta t}{\rho }}\,\nabla p^{n+1}
$$
In the same form of the SIMPLE algorithm, and getting the pressure forces with the Poisson equation in the same way

# Animation showcase (juan)
We also included the folloingw animations to compare 

## Animation showcase

#### Changing the $x_{ref}$
#### Comparing Central differences vs Upwind differences  

#### Comparing $N_x = 50$ and $N_x = 100$
#### Comparing $g = 50$ and $g = 10$
