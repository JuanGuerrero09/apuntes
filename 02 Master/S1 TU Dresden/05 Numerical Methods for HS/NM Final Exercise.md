
---

# Numerical Implementation: The SIMPLE Algorithm

The **SIMPLE** (Semi-Implicit Method for Pressure-Linked Equations) algorithm is used to solve the coupled Navier-Stokes and energy equations. In Rayleigh-Bénard convection, we use the **Boussinesq approximation**, where density variations only appear in the buoyancy term.

## 1. Governing Equations (Non-Dimensional)

### Mass Conservation (Continuity)

$$\frac{\partial u}{\partial x} + \frac{\partial v}{\partial y} = 0 \tag{1}$$

### Momentum Conservation

$$\frac{\partial u}{\partial t} + u\frac{\partial u}{\partial x} + v\frac{\partial u}{\partial y} = -\frac{\partial p}{\partial x} + \frac{1}{Re} \nabla^2 u \tag{2}$$

$$\frac{\partial v}{\partial t} + u\frac{\partial v}{\partial x} + v\frac{\partial v}{\partial y} = -\frac{\partial p}{\partial y} + \frac{1}{Re} \nabla^2 v + \underbrace{Ra \cdot Pr \cdot \rho}_{\text{Buoyancy}} \tag{3}$$

### Scalar Transport (Density/Temperature)

$$\frac{\partial \rho}{\partial t} + u\frac{\partial \rho}{\partial x} + v\frac{\partial \rho}{\partial y} = \frac{1}{Pe} \nabla^2 \rho \tag{4}$$

---

## 2. Step 1: Scalar Update ($\rho^*$)

Given the state at time $n$ ($u^n, v^n, p^n, \rho^n$), we first solve for the new density field. Using central differences for space and implicit Euler for time:

$$\frac{\rho_{i,j}^{*}-\rho_{i,j}^{n}}{\Delta t} + u_{i,j}^n \frac{\rho_{i+1,j}^{*}-\rho_{i-1,j}^{*}}{2\Delta x} + v_{i,j}^n \frac{\rho_{i,j+1}^{*}-\rho_{i,j-1}^{*}}{2\Delta y} = \frac{1}{Pe} \left[ \frac{\rho_{i+1,j}^{*}-2\rho_{i,j}^{*}+\rho_{i-1,j}^{*}}{\Delta x^{2}} + \frac{\rho_{i,j+1}^{*}-2\rho_{i,j}^{*}+\rho_{i,j-1}^{*}}{\Delta y^{2}} \right]$$

### Matrix Assembly

We rearrange this into a linear system $A_\rho \rho^* = b_\rho$:

$$A_P \rho_{i,j}^* - A_E \rho_{i+1,j}^* - A_W \rho_{i-1,j}^* - A_N \rho_{i,j+1}^* - A_S \rho_{i,j-1}^* = \rho_{i,j}^n$$

---

## 3. Step 2: Momentum Predictor ($u^*, v^*$)

We solve for intermediate velocities $u^*$ and $v^*$ using the pressure field from the previous step ($p^n$) and the newly calculated buoyancy.

### Discretized Momentum

$$A_P^u u_{i,j}^* = \sum A_{nb} u_{nb}^* + u_{i,j}^n - \Delta t \left( \frac{p_{i+1,j}^n - p_{i-1,j}^n}{2\Delta x} \right)$$

$$A_P^v v_{i,j}^* = \sum A_{nb} v_{nb}^* + v_{i,j}^n - \Delta t \left( \frac{p_{i,j+1}^n - p_{i,j-1}^n}{2\Delta y} \right) + \Delta t(Ra \cdot Pr \cdot \rho^*)$$

At this stage, the velocity field $(u^*, v^*)$ usually **does not** satisfy the continuity equation: $\nabla \cdot \mathbf{u}^* \neq 0$.

---

## 4. Step 3: Pressure Correction ($p'$)

To satisfy continuity, we define the corrections:

$$p^{n+1} = p^n + p' \quad | \quad u^{n+1} = u^* + u' \quad | \quad v^{n+1} = v^* + v'$$

### The Relationship between $u'$ and $p'$

From the momentum equation, we assume the velocity correction is driven by the pressure correction gradient:

$$u'_{i,j} \approx -d_u \frac{p'_{i+1,j} - p'_{i-1,j}}{2\Delta x}, \quad v'_{i,j} \approx -d_v \frac{p'_{i,j+1} - p'_{i,j-1}}{2\Delta y}$$

where $d = \Delta t / A_P$.

### The Poisson Equation for $p'$

Substituting the corrections into the continuity equation $\nabla \cdot \mathbf{u}^{n+1} = 0$:

$$\frac{u'_{i+1,j} - u'_{i-1,j}}{2\Delta x} + \frac{v'_{i,j+1} - v'_{i,j-1}}{2\Delta y} = -\underbrace{\left[ \frac{u_{i+1,j}^* - u_{i-1,j}^*}{2\Delta x} + \frac{v_{i,j+1}^* - v_{i,j-1}^*}{2\Delta y} \right]}_{\text{Divergence of starred velocity (Mass Source)}}$$

This results in a linear system for $p'$:

$$\mathbf{A}_{p'} \mathbf{P}' = \mathbf{b}_{div}$$

---

## 5. Step 4: Final Update and Relaxation

Once $p'$ is found, we update the fields. To ensure numerical stability, we use **under-relaxation factors** ($\alpha$):

1. **Correct Velocity:** $\mathbf{u}^{n+1} = \mathbf{u}^* + \mathbf{u}'$
    
2. **Correct Pressure:** $p^{n+1} = p^n + \alpha_p p'$ (typically $\alpha_p \approx 0.3$)
    
3. **Check Convergence:** If the mass residual $|b_{div}|_{max} < \epsilon$, move to the next time step. Otherwise, repeat Step 2 with the updated pressure.
    

---

# Simple
## Numerical Implementation: The SIMPLE Algorithm

Continuity (incompressibility):
$$
\frac{\partial u}{\partial x}
+
\frac{\partial v}{\partial y}
= 0
\tag{mass conservation equation}
$$
Momentum (with buoyancy source in $y$-equation)
$$
\frac{\partial u}{\partial t}
+ u\frac{\partial u}{\partial x}
+ v\frac{\partial u}{\partial y}
=
-\,\frac{\partial p}{\partial x}
+ \frac{1}{Re}
\left(
\frac{\partial^{2} u}{\partial x^{2}}
+
\frac{\partial^{2} u}{\partial y^{2}}
\right)
$$

$$
\frac{\partial v}{\partial t}
+ u\frac{\partial v}{\partial x}
+ v\frac{\partial v}{\partial y}
=
-\,\frac{\partial p}{\partial y}
+ \frac{1}{Re}
\left(
\frac{\partial^{2} v}{\partial x^{2}}
+
\frac{\partial^{2} v}{\partial y^{2}}
\right)
+ \rho g
$$

Convection--diffusion for $\rho$:
$$
\frac{\partial \rho}{\partial t}
+ u\frac{\partial \rho}{\partial x}
+ v\frac{\partial \rho}{\partial y}
=
\frac{1}{Pe}
\left(
\frac{\partial^{2} \rho}{\partial x^{2}}
+
\frac{\partial^{2} \rho}{\partial y^{2}}
\right)
$$^rho
we can't solve $u,v,P$ at the same time, there is no equation for P, but we need it for mass conservation equation.

## How to start

given a known state of values:
$$
u^{n},v^{n},p^{n},\rho^{n} \tag{previous step}
$$
Since we are nor sure that the values of this velocity field satisfy the mass conservation equation que are not calling it $u^{n+1},v^{n+1},P^{n+1},\rho^{n+1}$ instead $u^{*},v^{*},P^{*},\rho^{*}$, 

we solve the equation for non-dimensional density of the fluid whit previous step values $u^{n},v^{n}$.
$$
\frac{\partial \rho}{\partial t}
+ u\frac{\partial \rho}{\partial x}
+ v\frac{\partial \rho}{\partial y}
=
\frac{1}{Pe}
\left(
\frac{\partial^{2} \rho}{\partial x^{2}}
+
\frac{\partial^{2} \rho}{\partial y^{2}}
\right)
$$
___

$$\begin{multline}
\frac{\rho_{i,j}^{*}-\rho_{i,j}^{n}}{\Delta t}
+ u_{i,j}\frac{\rho_{i+1,j}^{\,*}-\rho_{i-1,j}^{\,*}}{2\Delta x}
+ v_{i,j}\frac{\rho_{i,j+1}^{\,*}-\rho_{i,j-1}^{\,*}}{2\Delta y}
=\\
\frac{1}{Pe}\left[
\frac{\rho_{i+1,j}^{\,*}-2\rho_{i,j}^{\,*}+\rho_{i-1,j}^{\,*}}{\Delta x^{2}}
+
\frac{\rho_{i,j+1}^{\,*}-2\rho_{i,j}^{\,*}+\rho_{i,j-1}^{\,*}}{\Delta y^{2}}
\right]
\end{multline}
$$

___
$$\begin{multline}
\left(1+ \frac{2}{Pe}\frac{\Delta t}{\Delta x^{2}}+\frac{2}{Pe}\frac{\Delta t}{\Delta y^{2}}\right)\rho_{i,j}^{*}
=\\
\left( \frac{1}{Pe}\frac{\Delta t}{\Delta x^{2}}-\frac{u_{i,j}\,\Delta t}{2\Delta x}\right)\rho_{i+1,j}^{*}
+ \left(\frac{1}{Pe}\frac{\Delta t}{\Delta x^{2}}+\frac{u_{i,j}\,\Delta t}{2\Delta x}\right)\rho_{i-1,j}^{*}
\\
+ \left(\frac{1}{Pe}\frac{\Delta t}{\Delta y^{2}}-\frac{v_{i,j}\,\Delta t}{2\Delta y}\right)\,\rho_{i,j+1}^{*}
+ \left(\frac{1}{Pe}\frac{\Delta t}{\Delta y^{2}}+\frac{v_{i,j}\,\Delta t}{2\Delta y}\right)\rho_{i,j-1}^{*}
+ \rho^{n}_{i,j}
\end{multline}
$$
___

$$
A_P\,\rho_{i,j}^{*}
=
A_E\,\rho_{i+1,j}^{*}
+ A_W\,\rho_{i-1,j}^{*}
+ A_N\,\rho_{i,j+1}^{*}
+ A_S\,\rho_{i,j-1}^{*}
+ b
$$
___

$$
\textbf{A}_\rho\rho^{*}=\textbf{b}_\rho
$$
___
$$
\begin{pmatrix}
 A_P & -A_E & \cdot & -A_N & \cdot & \cdot & \cdot \\
 -A_W & A_P & -A_E & \cdot & -A_N & \cdot & \cdot \\
 \cdot & -A_W & A_P & \cdot & \cdot & -A_N & \cdot \\
 -A_S & \cdot & \cdot & A_P & -A_E & \cdot & -A_N \\
 \cdot & -A_S & \cdot & -A_W & A_P & -A_E & \cdot \\
 \cdot & \cdot & -A_S & \cdot & -A_W & A_P & \cdot \\
 \cdot & \cdot & \cdot & -A_S & \cdot & \cdot & A_P
\end{pmatrix}
\begin{pmatrix}
\rho_{1,1}^{*} \\
\rho_{2,1}^{*} \\
\rho_{3,1}^{*} \\
\
\vdots \\
\rho_{N_x,N_y}^{*}
\end{pmatrix}
=
\begin{pmatrix}
\rho_{1,1}^{n} \\
\rho_{2,1}^{n} \\
\rho_{3,1}^{n} \\
\
\vdots \\
\rho_{N_x,N_y}^{n}
\end{pmatrix}
$$
___
the result of this is :
$$
\rho^{*}_{i,j}=\begin{pmatrix}
\rho_{1,1}^{*} \\
\rho_{2,1}^{*} \\
\rho_{3,1}^{*} \\
\
\vdots \\
\rho_{N_x,N_y}^{*}
\end{pmatrix}
$$

## Campo de velocities
Now we need to solve the momentum equations to find a initial velocity field
$$
\frac{\partial u}{\partial t}
+ u\frac{\partial u}{\partial x}
+ v\frac{\partial u}{\partial y}
=
-\,\frac{\partial p}{\partial x}
+ \frac{1}{Re}
\left(
\frac{\partial^{2} u}{\partial x^{2}}
+
\frac{\partial^{2} u}{\partial y^{2}}
\right)
$$
$$
\frac{\partial v}{\partial t}
+ u\frac{\partial v}{\partial x}
+ v\frac{\partial v}{\partial y}
=
-\,\frac{\partial p}{\partial y}
+ \frac{1}{Re}
\left(
\frac{\partial^{2} v}{\partial x^{2}}
+
\frac{\partial^{2} v}{\partial y^{2}}
\right)
+ \rho g
$$
___

$$
\begin{multline}
\frac{u_{i,j}^{*}-u_{i,j}^{n}}{\Delta t}
+ u_{i,j}^{n}\frac{u_{i+1,j}^{*}-u_{i-1,j}^{*}}{2\Delta x}
+ v_{i,j}^{n}\frac{u_{i,j+1}^{*}-u_{i,j-1}^{*}}{2\Delta y}
=\\
-\,\frac{p_{i+1,j}^{n}-p_{i-1,j}^{n}}{2\Delta x}
+\frac{1}{Re}\left[
\frac{u_{i+1,j}^{*}-2u_{i,j}^{*}+u_{i-1,j}^{*}}{\Delta x^{2}}
+
\frac{u_{i,j+1}^{*}-2u_{i,j}^{*}+u_{i,j-1}^{*}}{\Delta y^{2}}
\right]
\end{multline}
$$
$$
\begin{multline}
\frac{v_{i,j}^{*}-v_{i,j}^{n}}{\Delta t}
+ u_{i,j}^{n}\frac{v_{i+1,j}^{*}-v_{i-1,j}^{*}}{2\Delta x}
+ v_{i,j}^{n}\frac{v_{i,j+1}^{*}-v_{i,j-1}^{*}}{2\Delta y}
=\\
-\,\frac{p_{i+1,j}^{n}-p_{i-1,j}^{n}}{2\Delta y}
+\frac{1}{Re}\left[
\frac{v_{i+1,j}^{*}-2v_{i,j}^{*}+v_{i-1,j}^{*}}{\Delta x^{2}}
+
\frac{v_{i,j+1}^{*}-2v_{i,j}^{*}+v_{i,j-1}^{*}}{\Delta y^{2}}
\right]+\rho g
\end{multline}
$$

___
$$
\begin{multline}
\left(1+\frac{2}{Re}\frac{\Delta t}{\Delta y^{2}}+\frac{2}{Re}\frac{\Delta t}{\Delta x^{2}}\right)u_{i,j}^{*}
=\\
\left(\frac{1}{Re}\frac{\Delta t}{\Delta x^{2}}-\frac{u_{i,j}^{n}\,\Delta t}{2\Delta x}\right)u_{i+1,j}^{*}
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta x^{2}}+\frac{u_{i,j}^{n}\,\Delta t}{2\Delta x}\right)u_{i-1,j}^{*}
\\
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta y^{2}}-\frac{v_{i,j}^{n}\,\Delta t}{2\Delta x}\right)u_{i,j+1}^{*}
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta y^{2}}+\frac{v_{i,j}^{n}\,\Delta t}{2\Delta x}\right),u_{i,j-1}^{*}
\\
+ u_{i,j}^{n}-\Delta t\left(\frac{p_{i+1,j}^{n}-p_{i-1,j}^{n}}{2\Delta x}\right)
+ \end{multline}
$$
$$
\begin{multline}
\left(1+\frac{2}{Re}\frac{\Delta t}{\Delta y^{2}}+\frac{2}{Re}\frac{\Delta t}{\Delta x^{2}}\right)v_{i,j}^{*}
=\\
\left(\frac{1}{Re}\frac{\Delta t}{\Delta x^{2}}-\frac{u_{i,j}^{n}\,\Delta t}{2\Delta x}\right)v_{i+1,j}^{*}
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta x^{2}}+\frac{u_{i,j}^{n}\,\Delta t}{2\Delta x}\right)v_{i-1,j}^{*}
\\
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta y^{2}}-\frac{v_{i,j}^{n}\,\Delta t}{2\Delta x}\right)v_{i,j+1}^{*}
+ \left(\frac{1}{Re}\frac{\Delta t}{\Delta y^{2}}+\frac{v_{i,j}^{n}\,\Delta t}{2\Delta x}\right),v_{i,j-1}^{*}
\\
v_{i,j}^{n}-\Delta t\left(\frac{p_{i,j+1}^{n}-p_{i,j-1}^{n}}{2\Delta y}
\right)+\Delta t\,\rho_{i,j}^{*}\,g \end{multline}
$$
___
$$
A_P^{u}\,u_{i,j}^{*}
=
A_E^{u}\,u_{i+1,j}^{*}
+ A_W^{u}\,u_{i-1,j}^{*}
+ A_N^{u}\,u_{i,j+1}^{*}
+ A_S^{u}\,u_{i,j-1}^{*}
+ b_{i,j}^{u}
$$
$$
A_P^{v}\,u_{i,j}^{*}
=
A_E^{v}\,u_{i+1,j}^{*}
+ A_W^{v}\,u_{i-1,j}^{*}
+ A_N^{v}\,u_{i,j+1}^{*}
+ A_S^{v}\,u_{i,j-1}^{*}
+ b_{i,j}^{v}
$$
___
$$
\textbf{A}_u\textbf{u}^{*}=\textbf{b}_u
$$
$$
\textbf{A}_v\textbf{v}^{*}=\textbf{b}_v
$$
the result of this is :
$$
u^*,v^*
$$
but the Continuity (incompressibility):
$$
\frac{\partial u}{\partial x}
+
\frac{\partial v}{\partial y}
\ne 0
$$
for these values so we need to correct them.
## Pressure correction
we define the following:
$$
\begin{gather}
p^{n+1}=p^{*}+p'\\
u^{n+1}=u^{*}+u'\\
v^{n+1}=v^{*}+v'\\
\end{gather}
$$
where $u',v'$ are corrections due to $p'$, we use the Continuity equation, ad we find that. 
$$
\frac{\partial u}{\partial x}
+
\frac{\partial v}{\partial y}
= 0
$$
---
$$
\frac{u_{i+1,j}^{n+1}-u_{i-1,j}^{n+1}}{\Delta x}
+
\frac{v_{i,j+1}^{n+1}-v_{i,j+1}^{n+1}}{\Delta y}
= 0
$$
and subbing for the past definitions
$$
\frac{(u_{i+1,j}^{*}+u'_{i+1,j})-(u_{i-1,j}^{*}+u'_{i-1,j})}{\Delta x}
+
\frac{(v_{i,j+1}^{*}+v'_{i,j+1})-(v_{i,j+1}^{n+1}+v'_{i,j+1})}{\Delta y}
= 0
$$
Now we separate what we know and what we don't. 
$$
\frac{u_{i+1,j}' - u_{i-1,j}'}{\Delta x}
+
\frac{v_{i,j+1}' - v_{i,j-1}'}{\Delta y}
=
-\left[
\frac{u_{i+1,j}^{*} - u_{i-1,j}^{*}}{\Delta x}
+
\frac{v_{i,j+1}^{*} - v_{i,j+1}^{*}}{\Delta y}
\right]

$$
---
at last we need to relate $u',v'$ whit $p'$, we know that $u^{n+1}$ come from the momentum equation as:
$$
A_P^{u}\,u_{i,j}^{n+1}
=
A_E^{u}\,u_{i+1,j}^{n+1}
+ A_W^{u}\,u_{i-1,j}^{n+1}
+ A_N^{u}\,u_{i,j+1}^{n+1}
+ A_S^{u}\,u_{i,j-1}^{n+1}
+ b_{i,j}^{u}
$$
which can be rewritten as :
$$
\begin{multline}
A_P^{u}\,(u^{*}+u')_{i,j}
=\\
A_E^{u}\,(u^{*}+u')_{i+1,j}
+ A_W^{u}\,(u^{*}+u')_{i-1,j}
+ A_N^{u}\,(u^{*}+u')_{i,j+1}
+ A_S^{u}\,(u^{*}+u')_{i,j-1}
+ b_{i,j}^{u}
\end{multline}
$$
if we