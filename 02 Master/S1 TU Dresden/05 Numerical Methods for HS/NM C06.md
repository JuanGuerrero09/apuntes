---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-26
Last Modified: Wednesday 26th November 2025 09:21
---
# Wednesday 26th November 2025

# 📒Class Summary


---
# 📝 Notes

## Navier-Stokes equations

### Basic principle

• Transport of fluid and sediment is described by the basic equations of fluid mechanics
- Mass conservation 
	→ continuity equation
- Momentum conservation 
	→ Navier-Stokes equations 
- Transport equations for sediments 
	→ Advection-diffusion equations 
	→ Particle equation of motion

#### Transport in 1D

Consider flux of a scalar (e.g. sediment concentration $Q_c = c *u* dA$)

**Consider flux of a scalar (e.g. sediment concentration):** $Q_c = c \mathbf{u} dA$

$$\underbrace{\frac{\partial c}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{\frac{\partial (c \cdot u)}{\partial x}}_{\text{convection}} = \underbrace{\frac{\partial}{\partial x} \left( D_s \frac{\partial c}{\partial x} \right)}_{\text{diffusion}} + \underbrace{Q/S}_{\substack{\text{source/} \\ \text{sink}}}$$

- **Gráfico temporal ($t_0 \to t_1$):** Muestra cómo la convección desplaza la distribución escalar y la difusión la ensancha.
    
- **Definiciones:**
    
    - $D_s$: Coeficiente de difusión del escalar.
        
    - $Q/S$: Fuentes y sumideros.
        
    - $\rho$: Densidad del fluido.
        
    - $D_p$: Densidad de la partícula.
![[Pasted image 20251126092919.png]]

D_s…  Diffusion coefficient of the scalar  Q/S Sources and sinks \rho…  fluid density D_p…  particle density 


#### Conservation of mass (continuity equation)

**Consider mass flux through a control volume:** $Q_m = \rho \mathbf{u} dA$

El balance de flujos de entrada y salida ($\rho u dA$, $\rho v dA$) más el cambio local resulta en cero:

$$\underbrace{\frac{\partial \rho}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{\frac{\partial (\rho \cdot u)}{\partial x} + \frac{\partial (\rho \cdot v)}{\partial y}}_{\text{convective transport}} = 0$$

**Definiciones:**

- $\rho$: Densidad del fluido.
    
- $t$: Tiempo.
    
- $x, y, z$: Coordenadas cartesianas.
    
- $\mathbf{u} = (u, v, w)^T$: Vector de velocidad.
    
- $\nabla = (\frac{\partial}{\partial x}, \frac{\partial}{\partial y}, \frac{\partial}{\partial z})^T$: Operador Nabla.
    

### Incompressible flow ($\rho = const.$)

Para flujo incompresible, la densidad es constante, simplificando la ecuación a:

$$\rho \underbrace{\left( \frac{\partial u}{\partial x} + \frac{\partial v}{\partial y} \right)}_{\text{convective transport}} = \nabla \cdot \mathbf{u} = 0$$

if rho is constant (Incompressible \rho = 0)

$$
\rho (\frac{\partial u}{\partial x} + \frac{\partial v}{\partial y}) =
\nabla \cdot u = 0
$$

If we had rho variable we would need an extra equation 

#### Conservation of momentum (NSE)

**Momentum flux of $u$-velocity component through a control volume:** $Q_J = \rho u \mathbf{u} dA$

El diagrama muestra el balance de momento considerando el cambio local ($\frac{\partial (\rho u)}{\partial t}$), los flujos convectivos ($\rho u u dA$, $\rho u v dA$) y los esfuerzos normales ($\sigma$) y cortantes ($\tau$).

### Ecuación de Navier-Stokes (componente $x$)

$$\underbrace{\frac{\partial u}{\partial t}}_{\substack{\text{local} \\ \text{change}}} + \underbrace{u \frac{\partial u}{\partial x} + v \frac{\partial u}{\partial y} + w \frac{\partial u}{\partial z}}_{\text{convective transport}} = \underbrace{-\frac{1}{\rho} \frac{\partial p}{\partial x}}_{\text{pressure}} + \underbrace{\nu_f \left( \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} + \frac{\partial^2 u}{\partial z^2} \right)}_{\text{viscous stress}} + \underbrace{f_x}_{\substack{\text{external} \\ \text{forces}}}$$

**Definiciones de variables:**

- $\sigma_i$: Esfuerzo normal (presión y tensión).
    
- $\tau_{ij} = \rho \nu_f (\dots)$: Esfuerzo cortante (_shear stress_), donde $\nu_f$ es la viscosidad cinemática.

#### Different kinds of fluids

Note: A constant viscosity is an important  simplification →Clear water: Newtonian fluid →Sediment-laden flows are not Newtonian →Rheology: study of the flow and  deformation of matter 

### Navier Stokes equations

Important:
$\rightarrow$ Continuity scalar transport
$\rightarrow$ NSE is vectorial -> 3D 

$$
\vec{x} = (x_1, x_2, x_3)^T = (x, y, z)^T
$$
$$
\vec{u} = (u_1, u_2, u_3)^T = (u, v, w)^T
$$

$$\substack{\text{x-direction}\\{i=1}} \rightarrow {\frac{\partial u}{\partial t}} + {u \frac{\partial u}{\partial x} + v \frac{\partial u}{\partial y} + w \frac{\partial u}{\partial z}} = {-\frac{1}{\rho} \frac{\partial p}{\partial x}} + {\nu_f \left( \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} + \frac{\partial^2 u}{\partial z^2} \right)} + {f_x}$$
$$\substack{\text{y-direction}\\{i=2}} \rightarrow {\frac{\partial v}{\partial t}} + {u \frac{\partial v}{\partial x} + v \frac{\partial v}{\partial y} + w \frac{\partial v}{\partial z}} = {-\frac{1}{\rho} \frac{\partial p}{\partial y}} + {\nu_f \left( \frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 v}{\partial y^2} + \frac{\partial^2 v}{\partial z^2} \right)} + {f_y}$$
$$\substack{\text{z-direction}\\{i=3}} \rightarrow {\frac{\partial w}{\partial t}} + {u \frac{\partial w}{\partial x} + v \frac{\partial w}{\partial y} + w \frac{\partial w}{\partial z}} = {-\frac{1}{\rho} \frac{\partial p}{\partial z}} + {\nu_f \left( \frac{\partial^2 w}{\partial x^2} + \frac{\partial^2 w}{\partial y^2} + \frac{\partial^2 w}{\partial z^2} \right)} + {f_z}$$
why v dv/dy es convecting?

#### Shorthand for NSE

Einstein summation

$$
{\frac{\partial u_i}{\partial t}} + {u_j \frac{\partial u_i}{\partial x_j}} = {-\frac{1}{\rho} \frac{\partial p}{\partial x_i}} + {\nu_f \left( \frac{\partial^2 u_i}{\partial x_j^2} \right)} + {f_i}
$$
Vectorial form

$$
{\frac{\partial \vec{u}}{\partial t}} + \nabla \cdot (\vec{u} \; \vec{u}) = {-\frac{1}{\rho} \nabla p} + {\nu_f \left( \nabla^2\vec{u} \right)} + \vec{f}
$$
- Stokes equations imply that $(|\vec{u}|<<1)$
>explain

$$
0 = - \frac{1}{\rho} + \nu_f \nabla^2 \vec{u} + \vec{f}
$$
si integramos este se obtiene darcy equation

- Euler equation $|\vec{u}|>>1$

don't care about the viscous term
$$
{\frac{\partial \vec{u}}{\partial t}} + \nabla \cdot (\vec{u} \; \vec{u}) = {-\frac{1}{\rho} \nabla p}  + \vec{f}
$$
not really used in hydroscience since speeds are not that big (like in aerodynamics with high plane speeds)

- Non-dimensional form of NSE
scenario: 2D flow, D char = D cylinder, uchar = u_inf , pchar = the stagnation point pressure (to determine from bernoulli) = $\rho u^2$, tchar = Dcyl/u

non-dimensional quantities = \tild{u} = \vec{u} / u_inf, \tild{L} = L/Dcyl, same for pressure, t = u_inf t / dcyl

>explain this please
##### plugging non-dimensional quantities in NSE

as long as we have the velocity the derivation of the equaition (inser equation) with the reynolds number it can describe every equation between the euler and stokes equation


### Weak versus strong coupling

Three + 1 equations needed, 3 of NSE and the continuity. Solving the NSE introduces four unknowns (u, v, w, p) → need to couple to continuity equation 

Weak coupling -> eq 1 -> eq 2 -> ccheap, prone to inestabilities
Strong coupling -> eq 1 -> eq 2 -> eq 1 check if equations yield good results -> more expansive, better stability

#### Time integration of NSE (weak coupling)

Integrating non-dimensional NSE in time

1) Implicit predictor for intermediate velocity field

**known value** , _unknown value_

$$
\frac{\bf{u^*}}{}
$$
2) Solve Poisson equation to determive divergence

3) Correct velocity field to become divergence free
4) Compute pressure

#### The SIMPLE algorithm (strong coupling)

start with initial guess and start with previous u and p


### 3D-NSE and their time integration


### Governing equations of fluid dynamics  

### Integrating the Navier-Stokes equation 

### Flow past a cylinder / sphere 

### Turbulent flows 

---
# 💡 Key Takeaways


---

# 💭 Questions

---
# 🐢 Definitions


---
# 📅 Homework



