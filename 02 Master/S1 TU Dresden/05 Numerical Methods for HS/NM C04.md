---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-05
Last Modified: Wednesday 5th November 2025 09:24
---
# Wednesday 5th November 2025

# 📒Class Summary


---
# 📝 Notes

## Exercise 1: Wave equation
The one-dimensional wave equation is a second-order linear partial differential equation (PDE)
that describes the propagation of waves, such as sound waves, light waves, or water waves, in
a given medium. The equation is given by:
$$\frac{\partial^2u}{\partial t^2} = c^2 \frac{\partial^2u}{\partial x^2}$$
where:
- $x$ is space component
- $t$  is time
- $u = f(t,x)$ is the displacement at position 𝑤� and time 𝑟�,
•
𝑐 is the speed of the wave in the medium.
Solve the equation numerically within 1D domain. The minimal value of 𝑤� in the domain is
denoted as 𝑤�𝑚𝑖𝑚� and equals to zero, while the maximum value of 𝑤� is 𝑤�𝑚𝑎𝑥 and equals to 1.
The size of the domain 𝐿 = 𝑤�𝑚𝑎𝑥 − 𝑤�𝑚𝑖𝑚� = 1 − 0 = 1. Use the formula at the end of the
exercise sheet to determine 𝑐.

### Solution

$$\frac{\partial^2u}{\partial t^2} = c^2 \frac{\partial^2u}{\partial x^2}$$
A second derivative can be stated as:
$$
\frac{\partial^2\phi}{\partial s^2}= \frac{\phi_{i+1}^{k} - 2\phi_{i}^k + \phi_{i-1}^k}{\Delta s^2}
$$
So for this excersice

$$
\frac{u_{i}^{t+1} - 2u_{i}^t+ u_{i}^{t-1}}{\Delta t^2} = c^2 \frac{u_{i+1}^{t} - 2u_{i}^t + u_{i-1}^t}{\Delta x^2}
$$
becomes


$$
u_i^{t+1}=c^2\frac{\Delta t^2}{\Delta x^2}(u^t_{i+1}-2\cdot u_i^t + u_{i+1}^t)+ 2\cdot u_i^t - u_i^{t-1}
$$


---

For using the implicit method for space we have 

$$\frac{\partial^2u}{\partial t^2} = c^2 \frac{\partial^2u}{\partial x^2}$$
to

$$
\frac{u_{i}^{t+1} - 2u_{i}^t+ u_{i}^{t-1}}{\Delta t^2} = c^2 \frac{u_{i + 1}^{t+1} - 2u_{i}^{t+1}+ u_{i - 1}^{t+1}}{\Delta x^2}
$$
it becomes $c^2\frac{\Delta t^2}{\Delta x^2} = D$ se  

---
# 💡 Key Takeaways


---

# 💭 Questions

---
# 🐢 Definitions


---
# 📅 Homework



