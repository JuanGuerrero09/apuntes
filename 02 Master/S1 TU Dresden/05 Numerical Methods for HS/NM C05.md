---
Class: "[[05 Numerical Methods for HS]]"
Date: 2025-11-13
Last Modified: Thursday 13th November 2025 17:08
---
# Thursday 13th November 2025

# 📒Class Summary


---
# 📝 Notes

Implicit method for 2D duffiusion equation

$$
\frac{\partial\phi}{\partial t} = D(\frac{\partial^2\phi}{\partial x^2} + \frac{\partial^2\phi}{\partial y^2}) = \nabla^2\phi
$$

---

Usando **Backward difference (implícito) en el tiempo**:

$$\frac{\phi_{i,j}^{k+1} - \phi_{i,j}^{k}}{\Delta t} = D \left( \frac{\phi_{i+1,j}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i-1,j}^{k+1}}{\Delta x^2} + \frac{\phi_{i,j+1}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i,j-1}^{k+1}}{\Delta y^2} \right)$$

---

Multiplicando ambos lados por $\Delta t$:

$$\phi_{i,j}^{k+1} - \phi_{i,j}^{k} = D \Delta t( \frac{\phi_{i+1,j}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i-1,j}^{k+1}}{\Delta x^2} + \frac{\phi_{i,j+1}^{k+1} - 2\phi_{i,j}^{k+1} + \phi_{i,j-1}^{k+1}}{\Delta y^2}$$

---

Agrupando términos en ϕk+1\phi^{k+1}ϕk+1:

$$( 1 + 2\alpha + 2\beta)\phi_{i,j}^{k+1} - \alpha\,\phi_{i+1,j}^{k+1} - \alpha\,\phi_{i-1,j}^{k+1} - \beta\,\phi_{i,j+1}^{k+1} - \beta\,\phi_{i,j-1}^{k+1} = \phi_{i,j}^{k}$$

donde:

$$\alpha = \frac{D\Delta t}{\Delta x^2}, \qquad \beta = \frac{D\Delta t}{\Delta y^2}​$$



---
# 💡 Key Takeaways


---

# 💭 Questions

---
# 🐢 Definitions


---
# 📅 Homework



