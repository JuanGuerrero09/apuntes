---
Class: "[[04 Hydrochemistry]]"
Date: 2025-12-01
Last Modified: Monday 1st December 2025 09:23
---
# Monday 1st December 2025

# 📒Class Summary

This lecture provided a comprehensive overview of calculating the $\text{pH}$ of various aqueous solutions governed by **Acid/Base Equilibria**. The core of the lecture focused on deriving and applying simplified formulas for acids and bases based on their strength ($\text{pK}_\text{a}$ or $\text{pK}_\text{b}$) and concentration ($\text{C}_0$). Key concepts covered included the four fundamental set equations (mass action, material balance, and charge balance), $\text{pH}$ calculations for strong, weak, and very dilute species, and the introduction of **hydrolysis** for salt solutions and **buffer systems**.

---
# 📝 Notes

## Reaction Equilibria in Aquatic Systems

### Acid/Base Equilibria

#### Set Equations for Acids

The $\text{pH}$ of any aqueous acid solution ($\text{HA}$) is governed by four coupled equilibrium equations:

Set equations for acids:
- **Law of Mass Action for Acid Dissociation ($\text{K}_\text{a}$):**
$$ \text{K}_\text{a} = \frac{c(\text{H}^+)\, c(\text{A}^-)}{c(\text{HA})}$$
- **Law of Mass Action for Water Dissociation ($\text{K}_\text{w}$):**$$ \text{K}_\text{w} = c(\text{H}^+)\, c(\text{OH}^-)$$
- **Material Balance Equation:** States that the total initial concentration of the acid ($\text{C}_0(\text{Acid})$) must equal the sum of the concentrations of all species derived from that acid in the solution (dissociated and undissociated form):$$ \text{C}_0(\text{Acid}) = c(\text{HA}) + c(\text{A}^-)$$
- **Charge Balance Equation:** States that the sum of the concentrations of all positive charges (cations) in the solution must equal the sum of the concentrations of all negative charges (anions). For a simple acid ($\text{HA}$) solution:$$ c(\text{H}^+) = c(\text{A}^-) + c(\text{OH}^-)$$

#### $\text{pH}$ of Aqueous Solutions of Acids

The four fundamental equations are solved simultaneously to find $c(\text{H}^+)$, but this requires solving a cubic or quartic equation. Therefore, simplifications based on the relative strength ($\text{pK}_\text{a}$) and concentration ($\text{C}_0$) are used.
- **Very Strong Acids ($\text{pK}_\text{a} < -1.74$):** Complete dissociation.
    - **Meaning of Complete Dissociation:** The acid dissociates $100\%$ into its ions ($\text{HA} \to \text{H}^+ + \text{A}^-$). At equilibrium, the concentration of the undissociated acid ($c(\text{HA})$) is essentially zero.
    - **Simplified Calculation:** The concentration of $c(\text{H}^+)$ equals the initial acid concentration $\text{C}_0(\text{Acid})$.$$ \text{pH} = - \lg c(\text{H}^+) = - \lg \text{C}_0(\text{Acid})$$
- **Strong Acids ($\text{pK}_\text{a} = -1.74 \text{ to } 4.5$):** The concentration of $\text{A}^-$ is much greater than the concentration of $\text{OH}^-$. The simplified charge balance is $c(\text{H}^+) \approx c(\text{A}^-)$.

- **Weak and Medium Strong Acids ($\text{pK}_\text{a} > 4.5$):** Additionally, the concentration of $\text{H}^+$ is much smaller than the initial acid concentration ($c(\text{H}^+) \ll \text{C}_0(\text{Acid})$).

##### Very Strong Acids ($\text{pK}_\text{a} < -1.74$)

Example: Calculate the $\text{pH}$ of $0.1\text{ M}$ and $0.01\text{ M}$ $\text{H}_2\text{SO}_4$ solution ($\text{pK}_{\text{a}1} = -3$)

For curriculum purposes where $\text{K}_{\text{a}2}$ is ignored, $\text{H}_2\text{SO}_4$ is treated as a monoprotic strong acid:

- For $0.1\text{ M}$: $\text{pH} = - \lg(0.1) = 1.0$
- For $0.01\text{ M}$: $\text{pH} = - \lg(0.01) = 2.0$

##### Strong Acids ($\text{pK}_\text{a} = -1.74 \text{ to } 4.5$)

When the acid is strong enough to contribute significant $\text{H}^+$, but still weak enough to establish an equilibrium (i.e., not $100\%$ dissociation), the full charge balance equation must be used, leading to the following formula for $c(\text{H}^+)$ (after applying simplifications $c(\text{OH}^-) \ll c(\text{A}^-)$ and solving the quadratic equation):

$$c(\text{H}^+) = \frac{-\text{K}_\text{a}}{2} + \sqrt{\frac{\text{K}_\text{a}^2}{4} + \text{K}_\text{a}\text{C}_0}$$

- **Where did that formula come from?**
    
    1. Start with the simplified charge balance: $c(\text{H}^+) \approx c(\text{A}^-)$ (ignoring $c(\text{OH}^-)$).
    2. Use the Material Balance: $\text{C}_0 = c(\text{HA}) + c(\text{A}^-) \implies c(\text{HA}) = \text{C}_0 - c(\text{A}^-)$.
    3. Substitute $c(\text{A}^-) \approx c(\text{H}^+)$ into the Material Balance: $c(\text{HA}) \approx \text{C}_0 - c(\text{H}^+)$.
    4. Substitute these expressions into the $\text{K}_\text{a}$ equation:$$\text{K}_\text{a} = \frac{c(\text{H}^+)\, c(\text{H}^+)}{\text{C}_0 - c(\text{H}^+)}$$
    5. Rearrange this into a quadratic equation in the form $a[c(\text{H}^+)]^2 + b[c(\text{H}^+)] + c = 0$:$$[c(\text{H}^+)]^2 + \text{K}_\text{a}\, c(\text{H}^+) - \text{K}_\text{a}\text{C}_0 = 0$$
    6. Solving this using the quadratic formula yields the expression for $c(\text{H}^+)$.

###### Exercise 2

Calculate the $\text{pH}$ of a $0.1\text{ M}$ $\text{H}_3\text{PO}_4$ solution ($\text{pK}_\text{a} = 2.1$)

Since $\text{pK}_\text{a} = 2.1$ falls within the strong/medium range, we use the quadratic formula.

- $\text{K}_\text{a} = 10^{-2.1} \approx 7.94 \times 10^{-3}$
- $\text{C}_0 = 0.1\text{ M}$

$$c(\text{H}^+) = \frac{-7.94 \times 10^{-3}}{2} + \sqrt{\frac{(7.94 \times 10^{-3})^2}{4} + (7.94 \times 10^{-3})(0.1)}$$

$$c(\text{H}^+) \approx -0.00397 + \sqrt{0.00001576 + 0.000794}$$

$$c(\text{H}^+) \approx -0.00397 + 0.02845 \approx 0.02448\text{ M}$$

$$\text{pH} = - \lg(0.02448) \approx 1.61$$

##### Medium Strong and Weak Acids ($\text{pK}_\text{a} = 4.5 \text{ to } 9.0 \text{ and } > 9$)

For these acids, the concentration of undissociated acid is much greater than the dissociated form ($c(\text{HA}) \approx \text{C}_0$). We also assume $c(\text{H}^+) \approx c(\text{A}^-)$ and neglect water dissociation ($\text{K}_\text{w}$).

- **Derivation:**
    1. Start with $\text{K}_\text{a} = \frac{c(\text{H}^+)\, c(\text{A}^-)}{c(\text{HA})}$.
    
    2. Apply approximations: $c(\text{A}^-) \approx c(\text{H}^+)$ and $c(\text{HA}) \approx \text{C}_0$.
    
    3. Substitute: $\text{K}_\text{a} \approx \frac{c(\text{H}^+)^2}{\text{C}_0}$.
    
    4. Solve for $c(\text{H}^+)$: $c(\text{H}^+) = \sqrt{\text{K}_\text{a}\text{C}_0(\text{Acid})}$.
    
- **Logarithmic Form:** Applying $-\lg$ to both sides gives the simplified formula:
    
    $$ \text{pH} = \frac{1}{2} (\text{pK}_\text{a} - \lg \text{C}_0)$$

    - **Explanation:** This formula simplifies the calculation by assuming the degree of dissociation ($\alpha$) is very small, allowing us to approximate the concentration of the undissociated acid ($\text{HA}$) as the initial concentration ($\text{C}_0$).

###### Example 3: 

Calculate the $\text{pH}$ of a $4$-chlorophenol solution ($\text{pK}_\text{a} = 9.4$) with $\text{C}_0 = 1\text{ g/L}$ and $10\text{ g/L}$

- Molar Mass ($\text{M}$) $= 128.5\text{ g/mol}$
    
- **Case 1: $1\text{ g/L}$**
    
    - $\text{C}_0 = 1\text{ g/L} / 128.5\text{ g/mol} \approx 0.00778\text{ M}$.
    - $\text{pH} = 0.5 \times (9.4 - \lg(0.00778)) \approx 0.5 \times (9.4 - (-2.11)) = 0.5 \times 11.51 \approx 5.76$
    
- **Case 2: $10\text{ g/L}$**
    
    - $\text{C}_0 = 10\text{ g/L} / 128.5\text{ g/mol} \approx 0.0778\text{ M}$.
    - $\text{pH} = 0.5 \times (9.4 - \lg(0.0778)) \approx 0.5 \times (9.4 - (-1.11)) = 0.5 \times 10.51 \approx 5.26$

##### Very Weak or Very Diluted Acids

When the acid is very weak ($\text{pK}_\text{a} \gg 9$) or very diluted ($\text{C}_0$ is low), the contribution of $\text{H}^+$ from the **autoprotolysis of water ($\text{K}_\text{w}$)** is no longer negligible.

- **Derivation:** All four initial equations ($\text{K}_\text{a}, \text{K}_\text{w}$, Material Balance, Charge Balance) must be solved simultaneously **without** major simplifications. Substituting the balances into the mass action laws yields the cubic equation for $c(\text{H}^+)$:
$$ [c(\text{H}^+)]^3 + \text{K}_\text{a}[c(\text{H}^+)]^2 - (\text{K}_\text{a}\text{C}_0 + \text{K}_\text{w})\, c(\text{H}^+) - \text{K}_\text{w}\text{K}_\text{a} = 0$$
    This equation is generally solved numerically.
---
#### $\text{pH}$ of Aqueous Solutions of Bases

The calculation of the $\text{pH}$ of a base ($\text{B}$) solution is analogous to acids, but the focus shifts to calculating the concentration of hydroxyl ions ($c(\text{OH}^-)$) first, followed by the $\text{pOH}$ and then the $\text{pH} = \text{pK}_\text{w} - \text{pOH}$.

In general: $\text{pOH} = - \lg c(\text{OH}^-)$



##### Very Strong Bases

- Complete Protonation: In the context of a base, "complete protonation" means the base ($\text{B}$) completely accepts a proton from water ($\text{H}_2\text{O}$), resulting in the complete release of $\text{OH}^-$ ions.
$$\text{B} + \text{H}_2\text{O} \longrightarrow \text{BH}^+ + \text{OH}^-$$
- **Calculation:** The concentration of $c(\text{OH}^-)$ is approximately equal to the initial base concentration $\text{C}_0(\text{B})$.$$ \text{pOH} = - \lg c(\text{OH}^-) \approx - \lg \text{C}_0(\text{B})$$
##### Strong Bases

The calculation uses the $\text{K}_\text{b}$ expression and is derived similarly to the strong acid case, yielding a quadratic equation for $c(\text{OH}^-)$. The simplified charge balance is $c(\text{OH}^-) \approx c(\text{BH}^+)$.

##### Weak and Medium Strong Bases

Assuming $c(\text{OH}^-) \ll \text{C}_0(\text{Base})$ and $c(\text{OH}^-) \approx c(\text{BH}^+)$.

- **Formula:** $c(\text{OH}^-) = \sqrt{\text{K}_\text{b}\text{C}_0(\text{Base})}$.
- **Logarithmic Form:**$$ \text{pOH} = \frac{1}{2} (\text{pK}_\text{b} - \lg \text{C}_0(\text{Base}))$$
---
#### $\text{pH}$ of Salt Containing Solutions

**Hydrolysis of Salts** is the reaction between a salt's ions and water, which changes the $\text{pH}$ of the solution.

- **Is the salt a weak acid or base?** The salt itself is neither. A salt is an ionic compound formed by the reaction of an acid and a base (neutralization). However, **one of the ions** of the salt may be the **conjugate base of a weak acid** or the **conjugate acid of a weak base**, and _that_ ion will react with water to produce $\text{OH}^-$ or $\text{H}^+$ and thus determine the solution's $\text{pH}$

**Ions that change $\text{pH}$ (React with Water/Hydrolyze):**

- The conjugate anion of a weak acid (e.g., $\text{CH}_3\text{COO}^-$, $\text{CO}_3^{2-}$): These ions react with water, increasing the $\text{OH}^-$ concentration ($\rightarrow$ **Basic Solution**).

- The conjugate cation of a weak base (e.g., $\text{NH}_4^+$): These ions react with water, increasing the $\text{H}^+$ concentration ($\rightarrow$ **Acidic Solution**).


**Ions that do NOT change $\text{pH}$ (Spectator Ions):**

- Anions of strong acids (very weak bases): $\text{Cl}^-$, $\text{NO}_3^-$.

- Cations of strong bases (very weak acids): $\text{Na}^+$, $\text{K}^+$.

- _This explains where the $\text{Na}$ and $\text{Cl}$ go:_ They remain as spectator ions ($\text{Na}^+$, $\text{Cl}^-$) and are included only in the charge balance equation, but do not participate in the $\text{pH}$-determining reaction (hydrolysis).

##### Basic Salt (Example: $\text{NaAc}$ - Sodium Acetate, salt of strong base $\text{NaOH}$ and weak acid $\text{HAc}$)

The acetate anion ($\text{Ac}^-$) reacts with water (hydrolysis):

$$\text{Ac}^- + \text{H}_2\text{O} \rightleftharpoons \text{HAc} + \text{OH}^-$$

This reaction releases $\text{OH}^-$, making the solution basic. The equilibrium is described by $\text{K}_\text{b}$, the dissociation constant of the conjugate base ($\text{Ac}^-$).

- **Derivation and Formula:** Assuming the salt completely dissociates ($c(\text{Ac}^-) \approx \text{C}_0(\text{Salt})$), and applying approximations similar to the weak base case ($\text{C}_0(\text{Ac}^-) \approx c(\text{Ac}^-)$ and $c(\text{HAc}) \approx c(\text{OH}^-)$):$$ \text{K}_\text{b} = \frac{c(\text{HAc})\, c(\text{OH}^-)}{c(\text{Ac}^-)} \approx \frac{c(\text{OH}^-)^2}{\text{C}_0(\text{Salt})}$$$$ \text{pOH} = \frac{1}{2} (\text{pK}_\text{b} - \lg \text{C}_0(\text{Salt}))$$

##### Acidic Salt (Example: $\text{NH}_4\text{Cl}$ - Ammonium Chloride, salt of weak base $\text{NH}_3$ and strong acid $\text{HCl}$)

The ammonium cation ($\text{NH}_4^+$) reacts with water (hydrolysis):

$$\text{NH}_4^+ + \text{H}_2\text{O} \rightleftharpoons \text{NH}_3 + \text{H}_3\text{O}^+$$

This reaction releases $\text{H}^+$, making the solution acidic. The equilibrium is described by $\text{K}_\text{a}$, the dissociation constant of the conjugate acid ($\text{NH}_4^+$).

- **Derivation and Formula:** Assuming $\text{C}_0(\text{NH}_4^+) \approx c(\text{NH}_4^+)$ and $c(\text{NH}_3) \approx c(\text{H}^+)$:
$$ \text{K}_\text{a} = \frac{c(\text{H}^+)\, c(\text{NH}_3)}{c(\text{NH}_4^+)} \approx \frac{c(\text{H}^+)^2}{\text{C}_0(\text{Salt})}$$
$$ \text{pH} = \frac{1}{2} (\text{pK}_\text{a} - \lg \text{C}_0(\text{Salt}))$$

##### Salts of Weak Acid and Weak Base

If both the anion and cation hydrolyze (e.g., $\text{HCOO}^-$ from $\text{HCOOH}$ and $\text{NH}_4^+$ from $\text{NH}_3$), the $\text{pH}$ depends on the relative strength of the two competing hydrolysis reactions ($\text{K}_\text{a}$ of the cation vs. $\text{K}_\text{b}$ of the anion).

- **Formula:** When $\text{K}_\text{a}$ and $\text{K}_\text{b}$ are only slightly different (within 1 order of magnitude), $c(\text{H}^+)$ can be calculated by:
$$ c(\text{H}^+) = \sqrt{\frac{\text{K}_\text{a}\text{K}_\text{w}}{\text{K}_\text{b}}}$$
    Where $\text{K}_\text{a}$ refers to the acid component of the salt and $\text{K}_\text{b}$ refers to the base component.


###### Exercise 5 (Weak Base Calculation)

Calculate the pH of a $0.1\text{ M}$ Aniline ($\text{C}_6\text{H}_5\text{NH}_2$) solution at $25\text{ }^\circ\text{C}$.

Given: The $\text{pK}_\text{a}$ of its conjugate acid ($\text{C}_6\text{H}_5\text{NH}_3^+$) is $4.58$.

###### Exercise 6

**Calculate the $\text{pH}$ of a $0.1\text{ M } \text{NH}_4\text{Cl}$ solution** ($\text{pK}_{\text{a}}(\text{NH}_4^+) = 9.3$)

- **Analysis:** $\text{NH}_4\text{Cl}$ is an **acidic salt** (weak base $\text{NH}_3$ + strong acid $\text{HCl}$). The $\text{pH}$ is determined by the hydrolysis of $\text{NH}_4^+$.

- **Formula:** $\text{pH} = \frac{1}{2} (\text{pK}_{\text{a}} - \lg \text{C}_0(\text{Salt}))$.

- **Calculation:**
$$ \text{pH} = \frac{1}{2} (9.3 - \lg(0.1)) = \frac{1}{2} (9.3 - (-1.0)) = \frac{1}{2} (10.3) \approx 5.15$$
###### Exercise 7
**Calculate the $\text{pH}$ of a $\text{HCOONH}_4$ solution** ($\text{pK}_{\text{a}}(\text{NH}_4^+) = 9.3$; $\text{pK}_{\text{a}}(\text{HCOOH}) = 3.77$)

- **Analysis:** This is a salt of a weak acid ($\text{HCOOH}$) and a weak base ($\text{NH}_3$). The $\text{pH}$ is determined by the balance of both ions' hydrolysis.    
    - $\text{K}_\text{a}$ (Acid component, $\text{HCOOH}$): $\text{pK}_{\text{a}} = 3.77$.
    - $\text{K}_\text{b}$ (Base component, $\text{NH}_3$): $\text{pK}_{\text{b}} = \text{pK}_{\text{w}} - \text{pK}_{\text{a}}(\text{NH}_4^+) = 14.0 - 9.3 = 4.7$.

- **Why we used $\text{pK}_{\text{a}}(\text{NH}_4^+)$ to find $\text{pK}_{\text{b}}$?** The reaction is $\text{NH}_3 + \text{H}_2\text{O} \rightleftharpoons \text{NH}_4^+ + \text{OH}^-$. The $\text{K}_\text{b}$ for this reaction is related to the conjugate acid $\text{NH}_4^+$'s $\text{K}_\text{a}$ via the $\text{pK}_\text{a} + \text{pK}_\text{b} = \text{pK}_\text{w}$ relationship. We **must** use the $\text{pK}_\text{a}$ of the conjugate acid/base pair that relates to the base component ($\text{NH}_3$ in this case).
- **Logarithmic Formula for $\text{pH}$:** The formula for $c(\text{H}^+) = \sqrt{\frac{\text{K}_\text{a}\text{K}_\text{w}}{\text{K}_\text{b}}}$ simplifies to:    $$ \text{pH} = \frac{1}{2} (\text{pK}_{\text{a}}(\text{Acid}) + \text{pK}_{\text{w}} - \text{pK}_{\text{b}})$$
       Since $\text{pK}_{\text{w}} - \text{pK}_{\text{b}} = \text{pK}_{\text{a}}(\text{Conj. Acid})$, the final formula is:
        $$ \text{pH} = \frac{1}{2} (\text{pK}_{\text{a}}(\text{Acid}) + \text{pK}_{\text{a}}(\text{Conj. Acid}))$$
    - **Calculation:**  $$ \text{pH} = \frac{1}{2} (3.77 + 9.3) = \frac{1}{2} (13.07) \approx 6.535$$
    Since $\text{pK}_{\text{a}}(\text{Acid}) < \text{pK}_{\text{a}}(\text{Conj. Acid})$, the acid component is stronger, resulting in an overall **acidic $\text{pH}$** ($6.535 < 7$).

---
#### Buffer Systems

A **buffer system** is an aqueous solution that resists changes in its $\text{pH}$ upon the limited addition of strong acids or bases. A buffer consists of comparable concentrations of a **conjugate acid/base pair** (e.g., a weak acid $\text{HA}$ and its salt $\text{A}^-$).

The $\text{pH}$ of a buffer is calculated using the **Henderson-Hasselbalch Equation**:

$$\text{pH} = \text{pK}_\text{a} + \lg \left(\frac{c(\text{A}^-)}{c(\text{HA})}\right) = \text{pK}_\text{a} + \lg \left(\frac{c(\text{Buffer Base})}{c(\text{Buffer Acid})}\right)$$

- **Maximum Buffer Capacity:** The $\text{pH}$ value is least affected by concentration changes when the concentration of the buffer acid ($\text{HA}$) equals the concentration of the buffer base ($\text{A}^-$) before any reaction. In this ideal scenario, $\lg(1) = 0$, so $\text{pH} = \text{pK}_\text{a}$.

##### $\text{pH}$ Value After Addition of Acid or Base

The $\text{pH}$ change is calculated by accounting for the **stoichiometric neutralization reaction** that occurs _before_ the new equilibrium is established.

- **Addition of Acid ($c(\text{H}^+)$):** The added acid is neutralized by the buffer base ($\text{A}^-$), consuming $\text{A}^-$ and creating more $\text{HA}$.
$$ \text{pH} = \text{pK}_\text{a} + \lg \left(\frac{c(\text{A}^-) - c(\text{H}^+)_{\text{added}}}{c(\text{HA}) + c(\text{H}^+)_{\text{added}}}\right)$$
    
- **Addition of Base ($c(\text{OH}^-)$):** The added base is neutralized by the buffer acid ($\text{HA}$), consuming $\text{HA}$ and creating more $\text{A}^-$.
$$ \text{pH} = \text{pK}_\text{a} + \lg \left(\frac{c(\text{A}^-) + c(\text{OH}^-)_{\text{added}}}{c(\text{HA}) - c(\text{OH}^-)_{\text{added}}}\right)$$
    
###### Exercise 8: 
Calculate the $\text{pH}$ of a $\text{HAc}/\text{Ac}^-$ buffer solution with $c(\text{HAc}) = 0.4\text{ M}$ and $c(\text{NaAc}) = 0.4\text{ M}$ ($\text{pK}_\text{a} = 4.75$)

$$\text{pH} = 4.75 + \lg \left(\frac{0.4}{0.4}\right) = 4.75 + \lg(1) = 4.75$$
###### Exercise 9
Does the $\text{pH}$ change if the buffer solution is diluted by a factor of 5?

No, the $\text{pH}$ does not change upon dilution, as long as the solution is not extremely dilute. Dilution affects both $c(\text{A}^-)$ and $c(\text{HA})$ equally, so the ratio $\frac{c(\text{A}^-)}{c(\text{HA})}$ remains the same. The $\text{pH}$ remains $4.75$.

###### Exercise 10

What is the pH value of the buffer solution, if 0.1 M HCl solution is  added?  
###### Exercise 11:

What is the $\text{pH}$ value of a $0.1\text{ M } \text{HCl}$ solution (without any buffer)?

$\text{HCl}$ is a strong, monoprotic acid:

$$\text{pH} = - \lg(0.1) = 1.0$$

###### Exercise 12 (Salt of Weak Acid and Weak Base)

Calculate the pH of a $0.05\text{ M}$ solution of Ammonium Acetate ($\text{CH}_3\text{COONH}_4$).

Given: $\text{pK}_\text{a}(\text{Acetic Acid}) = 4.75$ and $\text{pK}_\text{a}(\text{Ammonium Ion}) = 9.25$.

---
# 💡 Key Takeaways

- The $\text{pH}$ of any aqueous solution is determined by four coupled equations: **$\text{K}_\text{a}$**, **$\text{K}_\text{w}$**, **Material Balance**, and **Charge Balance**.
    
- **Simplifications** allow $\text{pH}$ calculation without solving high-order polynomial equations, depending on the acid/base strength and concentration.
    
- The **$\text{pH}$ of salt solutions** is determined by **hydrolysis**, where the ion that is the conjugate of a _weak_ species (e.g., $\text{Ac}^-$ from $\text{HAc}$) reacts with water to shift the $\text{pH}$. Spectator ions ($\text{Na}^+$, $\text{Cl}^-$) do not hydrolyze.
    
- **Buffer solutions** maintain a constant $\text{pH}$ due to the presence of a conjugate acid/base pair, and their $\text{pH}$ is calculated using the **Henderson-Hasselbalch Equation**.
    
- Maximum buffer effectiveness occurs when $\text{pH} = \text{pK}_\text{a}$.
---

# 💭 Questions

- **How to calculate the $\text{pH}$ of:**
    
    - **Very strong acids:** $\text{pH} = - \lg \text{C}_0$.
    - **Strong acids:** Quadratic formula (or simplified quadratic).
    - **Medium strong/weak acids:** $\text{pH} = 0.5 \times (\text{pK}_\text{a} - \lg \text{C}_0)$.
    - **Very strong bases:** $\text{pOH} = - \lg \text{C}_0$.
    - **Strong/weak bases:** Analogous formulas using $\text{K}_\text{b}$ and $\text{pOH}$.
    - **Salts (e.g., acidic salt $\text{NH}_4\text{Cl}$):** $\text{pH} = 0.5 \times (\text{pK}_\text{a} - \lg \text{C}_0(\text{Salt}))$.
    - **Buffer systems:** Henderson-Hasselbalch Equation.

- **What $\text{pH}$ value results if an acid, a base, or a salt is dissolved in water?**
    
    - **Strong Acid:** Acidic ($\text{pH} < 7$).
    - **Strong Base:** Basic ($\text{pH} > 7$).
    - **Neutral Salt (Strong Acid/Strong Base):** Neutral ($\text{pH} = 7$).
    - **Acidic Salt (Weak Base/Strong Acid):** Acidic ($\text{pH} < 7$).
    - **Basic Salt (Strong Base/Weak Acid):** Basic ($\text{pH} > 7$).
    - **Weak Acid/Weak Base Salt:** Depends on the relative strengths ($\text{pK}_{\text{a}}(\text{acid})$ vs. $\text{pK}_{\text{b}}(\text{base})$).
- **In what concentration ratio does a conjugate acid/base pair occur at a defined $\text{pH}$ value?**
    
    - This is found by rearranging the Henderson-Hasselbalch equation:
$$ \frac{c(\text{A}^-)}{c(\text{HA})} = 10^{(\text{pH} - \text{pK}_\text{a})}$$
        
- **Under what specific conditions is the simple weak acid formula ($\text{pH} = 0.5 (\text{pK}_\text{a} - \lg \text{C}_0)$) valid, and what chemical assumption does it rely upon?**
- **Explain the difference in chemical mechanism between the $\text{pH}$ change caused by dissolving $\text{HCl}$ (a strong acid) versus $\text{NH}_4\text{Cl}$ (an acidic salt).**
- **Why does the quadratic formula for strong acids simplify the charge balance by ignoring the concentration of $\text{OH}^-$?**

---
# 🐢 Definitions

- **Buffer Systems:** Aqueous solutions containing comparable concentrations of a conjugate acid/base pair that resist significant changes in $\text{pH}$ upon addition of limited amounts of strong acid or base.
- **Hydrolysis:** The chemical reaction between an ion derived from a salt (conjugate of a weak acid or base) and water, resulting in the formation of $\text{OH}^-$ or $\text{H}^+$, thereby changing the $\text{pH}$ of the solution.
- **Material Balance Equation:** A constraint stating that the total concentration of all forms of a component (e.g., $\text{HA}$ and $\text{A}^-$) must equal its initial analytical concentration ($\text{C}_0$).
- **Charge Balance Equation:** A constraint stating that in any neutral solution, the sum of the molar concentrations of all positive charges must equal the sum of the molar concentrations of all negative charges.

---
# 📅 Homework

- Review the criteria for applying each of the four simplified $\text{pH}$ formulas (very strong, strong, weak, very dilute).
    
- Calculate the $\text{pH}$ of a $0.05\text{ M}$ solution of sodium acetate ($\text{NaAc}$), given $\text{pK}_{\text{a}}(\text{HAc}) = 4.75$.
    
- Verify whether the simple weak acid formula is valid for the $0.1\text{ M } \text{H}_3\text{PO}_4$ example by checking the assumption $c(\text{H}^+) \ll \text{C}_0$.

