
Guide book 
-> Nalluri And Featherstone’s Civil Engineering Hydraulics Essential Theory with Worked Examples (Martin Marriott) (Z-Library)
-> Hydraulics in Civil and Environmental Engineering ( Andrew Chadwick, John Morfett, Martin Borthwick)

## Property of Fluids
### Viscosity of fluids

 Starting from the $\textbf{Newton's law of viscosity}$.
 
$$\tau = \mu \frac{d\textit{u}}{dy}$$ ^b9cbeb

where $\tau$ is the shear stress ($N/m^2$), $d\textit{u}/{dy}$ the velocity gradient or the rate of deformations ($rad/s$) and $\mu$ the coefficient of dynamic (or absolute) viscosity ($N\:s/m^2$ or $kg/(m\: s)$).

Kinematic viscosity ($v = \frac{\mu}{\rho}$) is the ratio of dynamic viscosity to mass density expressed in
metres squared per second. 

Water is a Newtonian fluid having a dynamic viscosity of approximately 1.0 × 10−3
$Ns/m^2$ and kinematic viscosity of 1.0 × 10−6 $m^2/s$ at 20◦C.

### Vapour pressure of liquids
A liquid in a closed container is subjected to partial vapour pressure due to the escaping molecules from the surface; it reaches a stage of equilibrium when this pressure reaches saturated vapour pressure. Since this depends upon molecular activity, which is a function of temperature, the vapour pressure of a fluid also depends upon its temperature and increases with it. If the pressure above a liquid reaches the vapour pressure of the liquid, boiling occurs; for example, if the pressure is reduced sufficiently, boiling may occur at room temperature.
The saturated vapour pressure for water at 20◦C is $2.45×10^3 N/m2$.

## Fluid Statics
By [[Pascal Law]] the pressure in a fluid is the same in all directions. Considering an elementary cylindrical volume of fluid, the equilibre of forces is the following: 

$$ 
p dA - (p+dp)dA - \rho g\:dA\:L\:\sin(theta) = 0 
$$
with 
$$ dp = -\rho\:g\:dy \qquad (since\:  \sin\theta = \frac{dy}{L}) $$
and $\rho$ constant 
$$
 \rho\:g\:dy = \rho\: g\:dy 
$$

![[pressure-variation.png| center]]


$\rho$ being constant for incompressible fluids, we can write
$$\int dp = \int \rho g \:dy
$$
which gives 
$$p = -\rho g h + C$$
When $y = y0$, $p = p_{a}$ the atmospheric pressure.
$$p - p_{a} = \rho g (y{_0} - y)$$
or the pressure at depth $h, p = p_{a} + \rho g h$ 
$$p = \rho g h $$ above atmospheric pressure.

## Fluid Flow Concepts and Measurements
### Steady vs Unsteady 
The flow parameters such as velocity, pressure and density of a fluid flow are independent
of time in a steady flow, whereas they depend on time in unsteady flows. For example, this
can be written as
$$ \frac{\partial V}{\partial t}_{x_0, y_0, z_0} = 0 \qquad \text{For steady flow} $$ $$
\frac{\partial V}{\partial t}_{x_0, y_0, z_0} \neq 0 \qquad \text{For Unsteady flow}$$
### Uniform vs non-uniform flows

A flow is uniform if its characteristics at any given instant remain the same at different
points in the direction of flow; otherwise it is termed as non-uniform flow. Mathematically,
this can be expressed as
$$ \frac{\partial V}{\partial s}_{t_0} = 0 \qquad \text{For uniform flow} $$ $$
\frac{\partial V}{\partial s}_{t_0} \neq 0 \qquad \text{For non-uniform flow}$$
The flow through a long uniform pipe at a constant rate is steady uniform flow and at a
varying rate is unsteady uniform flow. Flow through a diverging pipe at a constant rate is
steady non-uniform flow and at a varying rate is unsteady non-uniform flow.
### One-, two- and three-dimensional flows

The velocity component transverse to the main flow direction is neglected in one-dimensional flow analysis. Flow through a pipe may usually be characterised as one-dimensional.
In two-dimensional flow, the velocity vector is a function of two coordinates and the flow conditions in a straight, wide river may be considered as two-dimensional.
Three-dimensional flow is the most general type of flow in which the velocity vector varies with space and is generally complex.
Thus, in terms of the velocity vector $V(s, t)$, we can write
$$V = f (x, t) \qquad \text{(one-dimensional flow)}
$$
$$V = f (x, y, t) \qquad \text{(two-dimensional flow)}$$
$$V = f (x, y, z, t) \qquad \text{(three-dimensional flow)}$$
###  Continuity Equation
Considering an elemental streamtube of the flow, we can state:
$$\frac{\text{mass entering the tube}}{second } = \frac{\text{mass leaving the tube}}{second }$$
![[Streamtube.png]]
And since there is no mass flow across the tube (principle of mass conservation).
 $$\rho_1V_1 dA_1 = \rho_2V_2 dA_2$$
where V1 and V2 are the steady average velocities at the entrance and exit of the elementary
streamtube of cross-sectional areas dA1 and dA2, and 𝜌1 and 𝜌2 are the corresponding
densities of entering and leaving fluid.
Therefore, for a collection of such streamtubes along the flow,
$$\overline{\rho}_1\overline{V}_1A_1 = \overline{\rho}_2\overline{V}_2A_2$$
where $\overline{\rho}_1$ and $\overline{\rho}_2$ are the average densities of fluid at the entrance and exit, and $\overline{V}_1$ and $\overline{V}_2$
are the average velocities over the entire entrance and exit sections of areas $A_1$ and $A_2$ of
the flow tube.
For incompressible steady flow, reduces to the one-dimensional continuity equation
$$\overline{V}_1A_1 = \overline{V}_2A_2 = Q$$
and $Q$ is the volumetric rate of flow called discharge, expressed in metres cubed per second,
often referred to as cumecs.

### Acceleration of fluid particles.
The velocity vector in a flow field is function of time and space.
$$V = f(s,t)$$
showing that the fluid particles experience accelerations due to $a)$ change in velocity in space (**convective acceleration**) and $b)$ change in velocity in time (local or temporal acceleration).

If $V_s$ in the direction of motion is equal to $f (s, t)$, then
$$dV_s = \frac{\partial V_s}{\partial s}ds\: + \: \frac{\partial V_s}{\partial t}dt$$
$$\frac{dV_s}{dt} = V_s\frac{\partial V_s}{\partial s}\: + \: \frac{\partial V_s}{\partial t}$$
The name of the above is the material derivative of fluids.

### Kinds of fluid flow

The flow can be classified as **laminar** or **turbulent**. Viscous shear stresses dominate in this kind of flow in which the shear stress and velocity distribution are governed by [[Hydraulics Theory#^b9cbeb|the following equation]].

Flow can be classified as **laminar** or **turbulent** based on how fluid particles move.

- **Laminar flow** occurs when fluid moves in smooth, parallel layers with minimal mixing. It is dominated by viscous shear stresses, and its velocity distribution follows a specific equation.
- **Turbulent flow**, more common in engineering, involves chaotic, erratic motion with fluctuating velocity components. This leads to increased momentum exchange and additional shear stresses.

The **Reynolds number (Re)**, defined as  $Re = \frac{\rho VL}{\mu}$, determines flow type by comparing inertial and viscous forces.

- **Laminar flow**: $Re<2000$
- **Transition range**: $2000 < Re < 4000$
- **Turbulent flow**: $Re > 4000$

In pipes, flow remains laminar for $Re<2000$ and transitions to turbulence as $Re$ increases beyond this range.

### Energy equation for an ideal fluid flow

Water has a relatively low viscosity and is practically incompressible and is found to behave like an ideal fluid. The study of ideal fluid motion is a valuable background information to encounter the problems of civil engineering hydraulics.

Consider an elemental stream tube in motion along a stream line of an ideal fluid flow.
![[eulers_equation_motion.png|center|450]]
The forces responsible for its motion are the **pressure forces**, **gravity** and **accelerating force due to change in velocity** along the streamline. All frictional forces are assumed to be zero and the flow is **irrotational** (i.e. uniform velocity distribution across streamlines).
By Newton’s second law of motion along the streamline (force = mass × acceleration),
$$\sum{F_i} = m_ia_i$$
$$p\,dA-(p+dp)dA-\rho g \, dA\,ds\, cos\theta=\, \rho\,dA\,ds\,\frac{dV}{dt}$$
$$ -dp -\rho g\, ds\, cos\theta=\rho\,ds\,\frac{dV}{dt}$$
Considering the [[Hydraulics Theory#Acceleration of fluid particles.|tangential acceleration]] for steady flow along streamline (meaning no change in time ($\frac{\partial{V}}{dt} = 0$)) 
$$\frac{dV}{dt} = V\frac{dV}{ds} \quad \text{and}\quad cos\theta = \frac{dz}{ds}$$
it becomes
$$ -dp -\rho g\,dz=\rho\,V\,dV$$
or reorganizing it 
$$ dz + \frac{dp}{\rho g}+\frac{d(V^2)}{g} = 0 \tag{Euler equation of motion}$$
Leaves the Euler equation of motion applicable to steady-state irrotational flow of an ideal and incompressible fluid. Integrating along the streamline we get:
$$z\:+\frac{p}{\rho g}+\:\frac{V^2}{2g} = Constant \tag{1}$$
or
$$z_1\:+\frac{p_1}{\rho g}+\:\frac{V_1^2}{2g} = z_2\:+\frac{p_2}{\rho g}+\:\frac{V_2^2}{2g} \tag{Bernoulli's equation}$$
Bernoulli’s equation represents the **total energy per unit weight** of a fluid element along a streamline in steady, ideal, incompressible flow. It is written as:
$$z\:+\frac{p}{\rho g}+\:\frac{V^2}{2g} = Constant \tag{1}$$
where:

- $z$ is the **elevation head** (potential energy per unit weight).
- $\frac{p}{\rho g}$​ is the **pressure head** (pressure energy per unit weight).
- $\frac{V^2}{2g}$​ is the **velocity head** (kinetic energy per unit weight).

The sum of these terms, called the **total head**, remains constant along a streamline in steady flow. This principle is why Bernoulli’s equation is often referred to as the **energy equation** in fluid mechanics.

For **real fluid flows** the Bernoulli's equation can be modified introducing a loss term due the energy expended in the frictional resistances caused by viscous and turbulent shear stresses and other resistances due to changes of section, valves, fittings and so on.
Therefore, for real incompressible fluid flow, we can write
$$z_1\:+\frac{p_1}{\rho g}+\:\frac{\alpha_1 V_1^2}{2g} = z_2\:+\frac{p_2}{\rho g}+\:\frac{\alpha_2 V_2^2}{2g} + \text{losses} \tag{Bernoulli's equation}$$where 𝛼 is the velocity (kinetic) energy correction factor. (For turbulent flows 𝛼 lies between 1.03 and 1.3, and for laminar flows it is 2.0.) 𝛼 is commonly referred to as the **Coriolis coefficient**, it comes from .
### Separation and cavitation in fluid flow

In a **rising main** with a uniform pipeline, Bernoulli’s equation states that the **total energy** of the fluid remains constant along the pipeline. Since the pipe has a uniform diameter, the velocity remains unchanged, simplifying Bernoulli’s equation to:
$$z+\rho gp​=Constant$$
This means that as the **elevation** $z$ increases, the **pressure** $\rho gp$ must decrease to maintain energy balance. If the pressure drops too much and reaches the **vapor pressure** of the fluid, the liquid may start to **boil**, releasing dissolved gases and forming small air bubbles. This phenomenon is known as **separation**, which disrupts the continuous flow and causes the discharge to occur intermittently, significantly reducing system efficiency.

If these air bubbles are carried by the fluid into a **high-pressure region**, they suddenly **collapse or implode**, generating a **hammering effect** on the pipeline’s inner surfaces. This sudden implosion creates high localized pressures, leading to **pitting, vibrations, and potential structural damage** to the system. This destructive process is known as **cavitation** and is highly undesirable in hydraulic systems.

Cavitation can cause significant wear and tear on pipelines, pumps, and valves, reducing their lifespan and efficiency. Therefore, **proper hydraulic design** is essential to prevent the occurrence of separation and cavitation, ensuring the longevity and optimal performance of the system.

![[separation_fluid.png|center|450]]
### Impulse-momentum equation
Momentum of a body is the product of mass and velocity ($kg m/s$), and Newton’s second law of motion states that the resultant external force acting on any body in any direction is equal to the rate of change of momentum of the body in that direction.
This can be stated as:
$$F_x = \frac{d}{dt}(mv_x)$$
The impulse-momentum equation can be written as
$$F_xdt=mdv_x$$
where $m$ is the mass of the body and d$v$ is the change in velocity in the direction considered. $Fdt$ is called the impulsed of applied force $F$. For a fluid the sum of external forces on a control volume is equal to the net change in the rate of momentum flow $\rho Qv$. 
#### Momentum correction factor ($\beta$)
In the case of non-uniform velocity distribution, particles move with different velocities across the flow section. The total momentum flow is the sum of the momentum flow of individual particles, expressed as:

$$\int_A\rho dAvv=\beta \rho A\bar{V}\bar{V} \quad \text{or} \quad  \beta \rho Q \bar{V}$$


where $\bar{V}$ is the average velocity at the section, and $\beta$ is the Boussinesq coefficient, calculated as:

$$\beta = \frac{1}{A} \int_A \left( \frac{v}{\bar{V}} \right)^2 dA$$

For turbulent flows, $\beta$ is typically less than 1.1, and for laminar flows, it is 1.33.
### Energy Losses in sudden transitions
It can be for sudden expansion $a)$  and sudden contraction $b)$.
![[suddencontrandexp.png|center]]
### Sudden Expansion (Figure a)

When the flow moves from a smaller area $A_1$​ to a larger area $A_2$, a sudden expansion occurs.  
This causes **energy loss** due to velocity dissipation in vortices and turbulence.

The governing equations for this phenomenon are:

#### **Energy Equation** (Bernoulli with an energy loss $h_L$):

$$\frac{p_1}{\rho g} + \frac{V_1^2}{2g} = \frac{p_2}{\rho g} + \frac{V_2^2}{2g} + \text{loss}$$

Here, the energy in section 1 is redistributed in section 2, plus the energy lost due to turbulence.

#### **Momentum Equation**:
$$
p_1 A_1 + p_1 (A_2 - A_1) - p_2 A_2 = \rho Q (V_2 - V_1)$$

This equation calculates the net force on the fluid due to pressure differences and how it affects velocity.

#### **Continuity Equation** (mass conservation):

$$A_1 V_1 = A_2 V_2 = Q$$

The flow rate must remain constant in both sections.

#### **Energy Loss in Expansion**:
$$h_L = \frac{(V_1 - V_2)^2}{2g}$$​

This loss occurs because the velocity suddenly decreases, creating turbulence and energy dissipation.
### Sudden Contraction (Figure b)

When the flow moves from a larger area $A_2$​ to a smaller area $A_c$​ (vena contracta), the fluid contracts and then expands again in section 2.

#### **Energy Loss in Contraction**:

$$h_L = \frac{(V_c - V_2)^2}{2g}$$​

Where $V_c$​ is the velocity at the vena contracta.

#### **Velocity at the Vena Contracta (Using Continuity)**:

$$A_c V_c = A_2 V_2 = Q$$$$V_c = \left( \frac{A_2}{A_c} \right) V_2 = \frac{V_2}{C_c}$$​
Here, $C_c$​ is the **contraction coefficient**, which indicates how much the jet contracts before expanding again.
## Flow of Incompressible Fluids in Pipelines
A fluid moving through a pipeline is subjected to energy losses from various sources. A continuous resistance is exerted by the pipe walls due to the formation of a boundary layer in which the velocity decreases from the centre of the pipe to zero at the boundary. 

In steady flow in a uniform pipeline the **boundary shear stress** $\tau_0$ is constant along the pipe, since the boundary layer is of constant thickness, and this resistance results in a uniform rate of total energy or head degradation along the pipeline. For pipelines, the **head loss due friction** along the pipeline is $h_f$ and the rate of **energy lost** or **energy gradient** is $S_f = h_f/L$. 

The hydraulic grade line shows the elevation of the pressure head along the pipe. In a uniform pipe the velocity head $𝛼V2∕2g$ is constant and the energy grade line is parallel to
the hydraulic grade line.
$$z_1\:+\frac{p_1}{\rho g}+\:\frac{V_1^2}{2g} = z_2\:+\frac{p_2}{\rho g}+\:\frac{V_2^2}{2g}+h_f \tag{EGL}$$
And since $V_1=V_2$ 
$$z_1\:+\frac{p_1}{\rho g} = z_2\:+\frac{p_2}{\rho g}+h_f\tag{HGL}$$
![[head_energy_gradients.png|center|500]]
Considering the forces equal to zero in a steady uniform flow, the motivating and drag forces are balanced by the following.
$$(p_1-p_2)A+\rho g ALsin\theta-\tau_0P_wL=0$$
Where $A$ is the area of cross section, $P$ is the wetted perimeter and $\tau_0$ the boundary shear stress. Since $Lsin\theta$ is equal to $z_2 - z_1$,
$$\frac{p_1-p_2}{\rho g}+ z_2 - z_1=\frac{\tau_0P_wL}{\rho gA}$$
From the HGL equation:
$$h_f=\frac{\tau_0P_wL}{\rho gA}$$
And since $R$ is the **hydraulic radius** $= A/P_w=D/4$ for a circular pipe of diameter D

$$h_f=\frac{\tau_0L4}{\rho gD}=\frac{4\tau_0}{\rho} \frac{L}{ g D}*\frac{\rho \frac{V^2}{2 g}}{\rho \frac{V^2}{2 g}}$$
$$h_f=\frac{4\tau_0}{\rho \frac{V^2}{2}} \frac{LV^2}{2 g D}$$
The head loss due to friction in steady uniform flow is given by the Darcy-Weisbach equation.
$$h_f=\frac{\lambda LV^2}{2gD}\:or\:f\frac{L}{D}\frac{V^2}{2g}$$
Historically, there's been work by Prandtl and Nikuradse on smooth and artificially roughened pipes revealed three zones of turbulent flow.
- a) a smooth turbulent zone in which the friction factor 𝜆 is a function of the Reynolds
number only and expressed by
$$\frac{1}{\sqrt{\lambda}}=2\text{log}\frac{Re\sqrt{\lambda}}{2.51}$$
- b) a transitional turbulent zone in which 𝜆 is a function of both k∕D andRe
- c) a rough turbulent zone in which 𝜆 is a function of k∕D only and expressed by
$$\frac{1}{\sqrt{\lambda}}=2\text{log}\frac{3.7 D}{k}$$
$$\frac{1}{\sqrt{\lambda}}=2\text{log}\frac{Re}{\sqrt{\lambda}}$$

