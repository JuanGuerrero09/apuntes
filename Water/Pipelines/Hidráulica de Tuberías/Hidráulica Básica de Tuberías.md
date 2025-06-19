# 1. Teoría de diseño de tuberías
### Tipos de flujo
- Flujo uniforme permanente _no cambia en el espacio ni en el tiempo_
- Flujo uniforme no permanente _no cambia en el espacio pero si en el tiempo_
- Flujo variado permanente _cambia en el espacio y no en el tiempo_
	- Gradualmente variado _Los cambios en presión y velocidad son graduales en el tiempo, como con contracciones o expansiones *suaves* en tubería_
	- Rápidamente variado _Cambio de presión y velocidad inmediato como con valvulas o bombas, con mucha turbulencia_
- Flujo variado no permanente _Cambia en el espacio y en el tiempo_
## Resumen de Ecuaciones
### Equilibrio de fuerzas 
![[Pasted image 20250614122525.png]]
La deducción de la ecuación de Bernoulli sale de las siguientes [[Hydraulics Theory#Fluid Equations from equilibre of forces| ecuaciones de fluidos desde equilibrio de fuerzas]]

Cuando se tiene en cuenta la fricción por el esfuerzo cortante de la tubería se obtiene
$$
\begin{matrix}
pA - (p+dp)A +dW \cos\theta-
\tau_oPdx = 0 \\
-dpA + \rho g A dx\cos\theta-\tau_0 Pdx\\
-dpA-\rho gA dz-\tau_0 Pdx = 0 
\end{matrix}
$$
Resultando 
$$\tau_0 = \frac{A}{p}\rho g  \frac{d}{dx}(\frac{p}{\rho g}+dz)$$
Deduciendo así la forma *general de las ecuaciones de pérdidas por fricción* en el flujho de una tubería, siendo además el termino $\frac{d}{dx}(\frac{p}{\rho g}+dz)$ la pendiente de fricción del flujo en la tubería, *$S_f$*, generando:
$$\tau_0 = \frac{A}{P}\rho gS_f = \gamma R_h S_f$$
Esta ecuación representa la forma inicial de una ecuación para explicar las pérdidas por fricción que experimenta un flujo a través de cualquier tipo de conducto, sea este una tubería, un canal, una alcantarilla, etc.
### Reynolds y viscosidad
De una relación de fuerzas inerciales y fuerzas viscosas se puede obtener el valor de la viscosidad cinemática del fluido )su resistencia al movimiento debvido a su propia naturalza) y la ecuación de *Reynolds*, que son los siguientes.
$$\nu = \frac{\mu}{\rho}$$
$$Re = \frac{u D}{\nu} =\frac{\rho u D}{\mu}$$

#### Campos de Flujo
Las fuerzas importantes para producir el movimiento de las partículas son:
- Fuerzas de presión $F_p$
- Fuerzas viscosas $F_v$
- Fuerzas Inerciales $F_I$
La fuerzas de tensión superficial $F_ts$  no existen por no haber superficies de contacto gas-líquido o líquido-liquído y las fuerzas de compresibilidad $F_c$ son muy pequeñas por ser la velocidad menor a la del sonido
!NOTA PENDIENTE
### Fricción de tuberías
La siguiente ecuación se dedujo mediante análisis dimensional a partir de la fisica clásica, siendo la ecuación de resistencia fluida más general que existe. Otra ecuación debe ser un caso paerti cular de esta.
$$
h_f = \frac{l}{d}\frac{v^2}{2g}F''(\frac{k_s}{d}, Re)
$$
# 2. Diseño de Tuberías Simples

# 3. Ecuaciones y Metodologías Alternas de Tuberías Simples

## Comparación Ecuaciones
