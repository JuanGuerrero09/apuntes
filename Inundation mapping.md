Ionana Popescu

Aim:
- To create a 1D steady flow
- Create steady flow extent map for flood risk exercises
$$
\frac{\partial}{\partial t} = 0 \qquad \text{Steady}
$$

Open Channel flow
- Unsteady $\frac{\partial}{\partial t} \neq 0$
- Steady $\frac{\partial}{\partial t} = 0$
	- Uniform
	- Not uniform
		- Gradually varied
		- Rapidly-varied

Equations

- Steady flow $Q = vA$
- Unsteady flow: 1D Saint Venant equations (continuity and momentum)
$$
\frac{\partial A}{\partial t} + \frac{\partial Q}{\partial x} = q_L
$$
$$
\frac{\partial Q}{\partial t} + \frac{\partial Q}{\partial x}(\frac{Q^2}{A}) - gAS_o  + gAS_f= 0
$$
Since both depend on time even if there's no local acceleration (first term) is not steady since is changing in time for the first equation.


# HEC-RAS

Input data:
- Geometric parameters
- Physical parameters
- Boundary conditions (hydrographs)
- Initial conditions 

Ouput data: 
- Results of modelling

## RAS Flow types implementation

![[Pasted image 20260303092118.png]]

- Difference Steady vs Unsteady solver
	- Boundary conditions handling
	- Numerical solution algorithm
	- Handling of non flow areas
	- Flow and BC data requirements

## HEC-RAS Elements

Extension meanings are:
![[Pasted image 20260303092438.png]]
Computation properties

Steady: Convetance is averaged $\bar{S_f} = \frac{Q_1+Q_2}{K_1+K_2}$ 
