---
Class: "[[04 Hydrochemistry]]"
Date: 2025-11-25
Last Modified: Tuesday 25th November 2025 20:59
---
# Tuesday 25th November 2025

# 📒Class Summary

This lecture introduced the fundamental concepts of **Reaction Equilibria in Aquatic Systems**, focusing specifically on **Acid/Base Reactions**. The session defined $\text{pH}$ as the master variable for aquatic chemistry and detailed its scale and significance. Key theoretical frameworks covered include the **Brønsted-Lowry acid/base theory**, the concept of **conjugate acid/base pairs**, and the **autoprotolysis of water**, which leads to the definition of the **ion product of water** ($\text{K}_\text{w}$). The lecture concluded by introducing the **acid dissociation constant** ($\text{K}_\text{a}$) and the **base dissociation constant** ($\text{K}_\text{b}$) to quantify acid and base strength.

---
# 📝 Notes

## Reaction Equilibria in Aquatic Systems

### Acid/Base Reactions Part I

The $\text{pH}$ is the **potential of hydrogen**, a measure of the effective concentration (activity) of hydrogen ions ($\text{H}^+$ or $\text{H}_3\text{O}^+$) in an aqueous substance.

The $\text{pH}$ is defined logarithmically:

$$\text{pH} = - \lg \, a(\text{H}^+) \approx - \lg \, c(\text{H}^+)$$

_Here, $a(\text{H}^+)$ is the activity of $\text{H}^+$ ions, and $c(\text{H}^+)$ is their molar concentration. The approximation $a(\text{H}^+) \approx c(\text{H}^+)$ is commonly used for dilute solutions._
#### The Effect of $\text{H}^+$ Density on $\text{pH}$

The $\text{pH}$ scale is inverse logarithmic. A **high density** (high concentration, $c(\text{H}^+)$) of hydrogen ions corresponds to a **low $\text{pH}$ value** (acidic conditions). Conversely, a **low density** (low $c(\text{H}^+)$) corresponds to a **high $\text{pH}$ value** (alkaline or basic conditions).

For every one-unit change in $\text{pH}$, the concentration of $\text{H}^+$ ions changes by a factor of ten. For example, a solution with $\text{pH} = 3$ has ten times the concentration of $\text{H}^+$ ions compared to a solution with $\text{pH} = 4$.
#### #### $\text{pH}$ Scale in Aquatic Systems

The conventional $\text{pH}$ scale ranges from $0$ to $14$ (at $25\text{ }^\circ\text{C}$).
![[Pasted image 20251202170903.png]]

- **Acidic Solutions ($\text{pH} < 7$):** Characterized by a high concentration of $\text{H}^+$ ions. Examples: Battery acid ($\text{pH} \approx 0$), Lemon juice ($\text{pH} \approx 2$), Vinegar ($\text{pH} \approx 3$).
- **Neutral Solutions ($\text{pH} = 7$):** The concentration of $\text{H}^+$ ions equals the concentration of hydroxyl ions ($\text{OH}^-$). Pure water at $25\text{ }^\circ\text{C}$ is the standard example.
- **Alkaline (Basic) Solutions ($\text{pH} > 7$):** Characterized by a low concentration of $\text{H}^+$ ions and a high concentration of $\text{OH}^-$ ions. Examples: Baking soda solution ($\text{pH} \approx 9$), Ammonia solution ($\text{pH} \approx 11$), Drain cleaner ($\text{pH} \approx 13$).

---
#### Relevance of acid/base equilibria in aquatic systems

Acid/base equilibria are central to aquatic chemistry, influencing the physical, chemical, and biological character of any water body.

- **Natural Components:** Water itself and many dissolved water constituents (WC) are inherently acids or bases according to the Brønsted-Lowry theory.
- **Dissolved Gases:** Gases such as carbon dioxide ($\text{CO}_2$), sulfur dioxide ($\text{SO}_2$), nitrogen oxides ($\text{NO}_x$), and ammonia ($\text{NH}_3$) act as acids or bases when dissolved, significantly altering the water's $\text{pH}$.
- **Strong Acid Inputs:** External sources of strong acids, both anthropogenic (e.g., industrial effluent) and natural (e.g., volcanic $\text{SO}_2$, $\text{HCl}$ emissions from hot springs), can dramatically lower the $\text{pH}$.
- **Atmospheric Depositions (Acid Rain):** The dissolution of strong acid precursors in the atmosphere ($\text{H}_2\text{SO}_3$, $\text{HNO}_3$, $\text{HCl}$) leads to acid rain, which can severely disrupt the proton balance in aquatic and soil systems. This can lead to secondary effects, such as the release of **fish-toxic ions** (e.g., $\text{Al}^{3+}$) from minerals like alumosilicates in the surrounding environment.

Due to its overarching influence on nearly all processes, the $\text{pH}$ value is referred to as a **master variable** in aquatic chemistry. It is a key variable affecting:

- **Complex Formation:** $\text{pH}$ determines the charge of ligands, affecting their ability to bind with metal ions.
- **Redox Reactions:** The potential of many redox pairs is $\text{pH}$-dependent (e.g., the oxygen reduction reaction).
- **Species Distribution:** $\text{pH}$ controls the equilibrium between different forms of a substance. For example, the toxic $\text{NH}_3$ gas and the relatively harmless ammonium ion $\text{NH}_4^+$ (an acid/base pair), and the various forms of dissolved $\text{CO}_2$ ($\text{CO}_2$, $\text{HCO}_3^-$, $\text{CO}_3^{2-}$).
- **Solubility:** The solubility of many solids and gases is often governed by $\text{pH}$ due to coupled acid/base reactions.
- **Biological Activity:** The growth, function, and survival of microorganisms and other aquatic life are acutely sensitive to $\text{pH}$ changes.
---
#### Brønsted-Lowry acid/base theory

The **Brønsted-Lowry theory** defines acids and bases by their function in a reaction:

$$\underbrace{\text{Acid}}_{\text{proton donor}} \rightleftharpoons \text{H}^+ + \underbrace{\text{Base}}_{\text{proton acceptor}} \quad \text{conjugate acid/base pair}$$

The ability to donate or accept protons ($\text{H}^+$) determines if a substance acts as an acid or base. Acids and bases are therefore defined by their function in a specific reaction, rather than as "fixed" substance classes
#### Conjugate Acid/Base Pairs

A **conjugate acid/base pair** consists of two species that differ by the presence of one proton ($\text{H}^+$). The acid in the pair is the substance that _can_ donate a proton, and the base is the substance remaining _after_ the acid has donated its proton, or the substance _capable_ of accepting a proton.

**Examples of Brønsted-Lowry Acids and their Conjugate Bases:**

- **Strong Acid:** $\text{H}_2\text{SO}_4 \rightleftharpoons \text{H}^+ + \text{HSO}_4^-$ (Conjugate base: Hydrogen sulfate ion)
- **Weak Acid (Ammonium):** $\text{NH}_4^+ \rightleftharpoons \text{H}^+ + \text{NH}_3$ (Conjugate base: Ammonia)
- **Ampholyte (Bicarbonate):** $\text{HCO}_3^- \rightleftharpoons \text{H}^+ + \text{CO}_3^{2-}$ (Conjugate base: Carbonate ion)
---
#### Protolysis

#### Protolysis of Acids and Bases

**Protolysis** is the chemical reaction involving the transfer of a proton ($\text{H}^+$) from one molecule (the acid) to another (the base).

- **Proton Release (Deprotonation):** An acid ($\text{HA}$) releases a proton: $\text{HA} \rightleftharpoons \text{A}^- + \text{H}^+$
- **Proton Acceptance (Protonation):** A base ($\text{B}$) accepts a proton: $\text{B} + \text{H}^+ \rightleftharpoons \text{BH}^+$

The complete protolysis reaction is the transfer between an acid ($\text{HA}$) and a base ($\text{B}$):

$$\text{HA} + \text{B} \rightleftharpoons \text{A}^- + \text{BH}^+$$

_This reaction always involves two conjugate acid/base pairs: $(\text{HA}/\text{A}^-)$ and $(\text{BH}^+/\text{B})$._

**Explanation:** Protolysis reactions are generally very fast and **reversible**, meaning the reaction proceeds in both the forward and reverse directions simultaneously until a dynamic **equilibrium** is quickly established. At equilibrium, the rates of the forward and reverse reactions are equal, resulting in constant concentrations of reactants and products.

---
##### Autoprotolysis of water
Water is an **ampholyte**; it can act both as a Brønsted acid (proton donor) and as a Brønsted base (proton acceptor). When two water molecules react with each other, it is called **autoprotolysis** (a proton transfer between two identical molecules).

- **Proton Release (Acid role):** $\text{H}_2\text{O} \rightleftharpoons \text{H}^+ + \text{OH}^-$
- **Proton Acceptance (Base role):** $\text{H}_2\text{O} + \text{H}^+ \rightleftharpoons \text{H}_3\text{O}^+$

The **Autoprotolysis Reaction** is the net proton transfer:

$$2\text{H}_2\text{O} \rightleftharpoons \text{H}_3\text{O}^+ + \text{OH}^-$$

Here, one water molecule acts as the acid, donating a proton to the second water molecule, which acts as the base.

**Hydration of the Proton:** Free hydrogen ions ($\text{H}^+$) do not exist isolated in aqueous systems. As soon as they are formed, they are instantly hydrated by water molecules. The initial product is the **hydronium ion** ($\text{H}_3\text{O}^+$). This ion is further hydrated:

- **Primary Hydration Sphere:** The $\text{H}_3\text{O}^+$ core is bound by hydrogen bridges to three water molecules, forming $\text{H}_9\text{O}_4^+$.

- **Outer Hydration Sphere:** Further water molecules can associate, though the exact hydration number is variable and unknown.
For simplicity and convenience, the hydrated proton is usually represented by the **shorthand notation: $\text{H}^+$**.

The equilibrium constant ($\text{K}^*$) for the autoprotolysis reaction is:

$$\text{K}^* = \frac{a(\text{H}_3\text{O}^+)\, a(\text{OH}^-)}{a^2(\text{H}_2\text{O})} = \frac{c(\text{H}_3\text{O}^+)\, c(\text{OH}^-)}{c^2(\text{H}_2\text{O})}$$

_The activity ($a$) is approximated by the concentration ($c$) for dilute solutions, assuming the activity coefficient ($\gamma$) is close to 1._

Since water is the **solvent** and exists in vast excess ($\text{c}(\text{H}_2\text{O}) = 1000 \text{ g/L} / 18 \text{ g/mol} \approx 55.56 \text{ mol/L}$) compared to the dissolved components, its concentration is considered constant. This constant concentration of water is incorporated into the equilibrium constant.

---
##### Ion product of water

By combining the constant water concentration term ($c^2(\text{H}_2\text{O})$) with the equilibrium constant ($\text{K}^*$), we define the **ion product of water**, $\text{K}_\text{w}$:

$$
K_w = c(H_3O^+)\, c(OH^-) \quad \text{or} \quad K_w = c(H^+)\, c(OH^-)
$$
The $\text{K}_\text{w}$ is the **dissociation constant of water**. At the standard temperature of $25\text{ }^\circ\text{C}$:

$$\text{K}_\text{w} = 1.0 \times 10^{-14} \text{ mol}^2/\text{L}^2$$
#### The 'p' Notation

The 'p' in $\text{pH}$, $\text{pOH}$, and $\text{pK}_\text{w}$ stands for the **negative logarithm (base 10)** of the quantity that follows it (e.g., concentration or equilibrium constant).

$$\begin{gather} \text{pK}_\text{w} = - \lg \text{K}_\text{w} \\ \text{pH} = - \lg a(\text{H}^+) \approx - \lg c(\text{H}^+) \\ \text{pOH} = - \lg a(\text{OH}^-) \approx - \lg c(\text{OH}^-) \end{gather}$$

Applying the negative logarithm to the $\text{K}_\text{w}$ equation gives the fundamental relationship:
$$\text{pK}_\text{w} = - \lg [c(\text{H}^+)\, c(\text{OH}^-)] = (- \lg c(\text{H}^+)) + (- \lg c(\text{OH}^-)) = \text{pH} + \text{pOH}$$

At $25\text{ }^\circ\text{C}$, $\text{K}_\text{w} = 10^{-14}$, so $\text{pK}_\text{w} = 14$.

$$\text{pH} + \text{pOH} = 14 \quad \text{ at } 25\text{ }^\circ\text{C}$$

The dissociation reaction of water and its constant ($\text{K}_\text{w} = 10^{-14}$) provides the basis for the conventional $\text{pH}$ scale (0 to 14) and establishes the **neutral point** at $\text{pH} = 7$.

---
### pH scale

The $\text{pH}$ scale is defined by the relative concentrations of $\text{H}^+$ and $\text{OH}^-$ ions:
$$
\underbrace{c(H^+) > c(OH^-)}_{\text{acidic}} \quad \underbrace{c(H^+) = c(OH^-)}_{\text{neutral}} \quad \underbrace{c(H^+) < c(OH^-)}_{\text{basic}}
$$
- Neutral Point: For pure water at $25\text{ }^\circ\text{C}$, $c(\text{H}^+) = c(\text{OH}^-)$. Since $\text{K}_\text{w} = c(\text{H}^+)^2 = 10^{-14}$, this means:    $$c(\text{H}^+) = c(\text{OH}^-) = \sqrt{10^{-14}} = 10^{-7} \text{ mol/L} \quad \rightarrow \quad \text{pH} = \text{pOH} = 7$$
- **Most Acidic ($\text{pH} = 0$):** $c(\text{H}^+) = 10^0 = 1 \text{ mol/L}$.
    - Since $\text{K}_\text{w} = c(\text{H}^+)\, c(\text{OH}^-) = 10^{-14}$, the concentration of $\text{OH}^-$ is $c(\text{OH}^-) = 10^{-14} / 1 = 10^{-14} \text{ mol/L}$.
- **Most Basic ($\text{pH} = 14$):** $c(\text{OH}^-) = 10^0 = 1 \text{ mol/L}$ (i.e., $\text{pOH} = 0$).
    - $c(\text{H}^+) = 10^{-14} / 1 = 10^{-14} \text{ mol/L}$.

**Why they end up at $10^{-14}$?** The concentrations of $\text{H}^+$ and $\text{OH}^-$ are inversely linked by the $\text{K}_\text{w}$ constant at a given temperature. Because the product of their concentrations **must always equal** $\text{K}_\text{w}$ ($10^{-14}$ at $25\text{ }^\circ\text{C}$), if one concentration increases to $1 \text{ mol/L}$ (the maximum on the scale), the other must decrease to $10^{-14} \text{ mol/L}$ to maintain the required product: $(1 \text{ mol/L}) \times (10^{-14} \text{ mol/L}) = 10^{-14} \text{ mol}^2/\text{L}^2$.

worthy that in pure water ($\text{pH} = 7$), only one out of approximately $555$ million water molecules ($55.56 \text{ mol/L} / 10^{-7} \text{ mol/L}$) is dissociated into $\text{H}^+$ and $\text{OH}^-$.

**Exercise: Calculate the $\text{pH}$ of neutral water at $30\text{ }^\circ\text{C}$!**

- Given: $\text{pK}_\text{w}$ of water at $30\text{ }^\circ\text{C}$ is $13.83$.
- In neutral water, $\text{pH} = \text{pOH}$.
- Therefore, $\text{pK}_\text{w} = \text{pH} + \text{pOH} = 2 \cdot \text{pH}$.
- $\text{pH} = \text{pK}_\text{w} / 2 = 13.83 / 2 = 6.915$. (The neutral point shifts slightly below 7 as temperature increases).

---
### Strength of acids und bases –  acidity and basicity constants 

Besides the **dissociation constant of water** ($\text{K}_\text{w}$), the strength of individual acids and bases is quantified by their respective equilibrium constants: the **acid dissociation constant** ($\text{K}_\text{a}$) and the **base dissociation constant** ($\text{K}_\text{b}$).**

These constants are often expressed in their logarithmic form: $\text{pK}_\text{a} = - \lg \text{K}_\text{a}$ and $\text{pK}_\text{b} = - \lg \text{K}_\text{b}$.

**The Equations:** These equations represent the equilibrium state of the dissociation (ionization) of an acid ($\text{HA}$) and a base ($\text{A}^-$) in water, respectively.

- **Acid Dissociation Constant ($\text{K}_\text{a}$):**
$$ \text{K}_\text{a} = \frac{c(\text{H}^+)\, c(\text{A}^-)}{c(\text{HA})}$$
    This equation describes the equilibrium of the acid's protolysis ($\text{HA} \rightleftharpoons \text{H}^+ + \text{A}^-$). A **higher $\text{K}_\text{a}$** (lower $\text{pK}_\text{a}$) means the acid dissociates more completely, making it a **stronger acid**.
    
- **Base Dissociation Constant ($\text{K}_\text{b}$):**$$ \text{K}_\text{b} = \frac{c(\text{HA})\, c(\text{OH}^-)}{c(\text{A}^-)}$$
    This equation describes the equilibrium of the conjugate base's reaction with water ($\text{A}^- + \text{H}_2\text{O} \rightleftharpoons \text{HA} + \text{OH}^-$). A **higher $\text{K}_\text{b}$** (lower $\text{pK}_\text{b}$) means the base accepts protons more effectively, making it a **stronger base**.

Relationship between $\text{K}_\text{a}$ and $\text{K}_\text{b}$ for a Conjugate Pair:

Multiplying the $\text{K}_\text{a}$ of an acid ($\text{HA}$) by the $\text{K}_\text{b}$ of its conjugate base ($\text{A}^-$) yields the ion product of water ($\text{K}_\text{w}$):

$$\text{K}_\text{a} \cdot \text{K}_\text{b} = \frac{c(\text{H}^+)\, c(\text{A}^-)}{c(\text{HA})} \cdot \frac{c(\text{HA})\, c(\text{OH}^-)}{c(\text{A}^-)} = c(\text{H}^+)\, c(\text{OH}^-) = \text{K}_\text{w}$$

In logarithmic notation, this relationship is:

$$\text{pK}_\text{a} + \text{pK}_\text{b} = \text{pK}_\text{w} \quad ( = 14 \text{ at } 25\text{ }^\circ\text{C})$$

This relationship shows that the **strength of an acid is inversely proportional to the strength of its conjugate base**. A very strong acid (high $\text{K}_\text{a}$) will have a very weak conjugate base (low $\text{K}_\text{b}$).

---
# 💡 Key Takeaways

- The $\text{pH}$ value is the negative logarithm of the hydrogen ion activity and is considered the **master variable** in aquatic chemistry, governing almost all chemical and biological processes.
- The **Brønsted-Lowry theory** defines acids as proton donors ($\text{H}^+$) and bases as proton acceptors, forming **conjugate acid/base pairs**.
- **Protolysis** is the reaction involving proton transfer and quickly reaches a dynamic equilibrium.
- **Autoprotolysis of water** ($2\text{H}_2\text{O} \rightleftharpoons \text{H}_3\text{O}^+ + \text{OH}^-$) defines the **ion product of water** ($\text{K}_\text{w}$), which is constant at a given temperature ($10^{-14}$ at $25\text{ }^\circ\text{C}$).
- The $\text{K}_\text{w}$ constant establishes the conventional $\text{pH}$ scale (0-14) and the neutral point ($\text{pH}=7$).
- The strength of an acid is quantified by its **$\text{K}_\text{a}$** ($\text{pK}_\text{a}$), and the strength of a base by its **$\text{K}_\text{b}$** ($\text{pK}_\text{b}$).
- For any conjugate pair, $\text{pK}_\text{a} + \text{pK}_\text{b} = \text{pK}_\text{w}$.
---
# 💭 Questions

- **What is the role of acid/base equilibria in aquatic systems and you can give 3 examples in natural waters.**
    - **Role:** Acid/base equilibria determine the speciation, charge, solubility, and toxicity of virtually all components in aquatic systems. They control the proton balance, which is vital for biogeochemical cycles.
    - **Examples:** 1. **Carbonate System:** Controls $\text{pH}$ and buffering capacity (e.g., $\text{CO}_2 / \text{HCO}_3^- / \text{CO}_3^{2-}$). 2. **Ammonia Toxicity:** Determines the ratio of toxic ammonia ($\text{NH}_3$) to non-toxic ammonium ($\text{NH}_4^+$). 3. **Metal Solubility:** Influences whether heavy metals are soluble and mobile (toxic) or precipitate as insoluble solids.
- **Why is the $\text{pH}$ referred to as master variable.**
    - It's called the master variable because it fundamentally affects the state of nearly every chemical, physical, and biological reaction in water, including complex formation, redox potentials, solubility, and the survival/growth of aquatic organisms.

- **Explain the protolysis reaction.**
    - Protolysis is a fast, reversible proton transfer reaction between an acid (proton donor) and a base (proton acceptor), resulting in the formation of two new species that constitute two conjugate acid/base pairs.

- **Explain the autoprotolysis of water (chemical reaction). According to this, you can describe the ion product of water.**
    - **Reaction:** $2\text{H}_2\text{O} \rightleftharpoons \text{H}_3\text{O}^+ + \text{OH}^-$. One water molecule acts as an acid (donating $\text{H}^+$) and the other acts as a base (accepting $\text{H}^+$).
    - **Ion Product:** Since $c(\text{H}_2\text{O})$ is constant, the equilibrium is simplified to $\text{K}_\text{w} = c(\text{H}^+)\, c(\text{OH}^-)$, which equals $10^{-14} \text{ mol}^2/\text{L}^2$ at $25\text{ }^\circ\text{C}$.
- **Which the 2 parameters which define the strength of an acid or a base, divide them into 4 categories according to their strength. Explain the difference between a weak and a dilute acid or base.**
    
    - **Parameters:** **$\text{K}_\text{a}$** (or $\text{pK}_\text{a}$) defines acid strength; **$\text{K}_\text{b}$** (or $\text{pK}_\text{b}$) defines base strength.
        
    - **Categories of Strength:** 1. **Strong Acids** ($\text{pK}_\text{a} < 0$), 2. **Weak Acids** ($0 < \text{pK}_\text{a} < 14$), 3. **Strong Bases** ($\text{pK}_\text{b} < 0$ or $\text{pK}_\text{a} > 14$), 4. **Weak Bases** ($0 < \text{pK}_\text{b} < 14$).
        
    - **Difference:** **Strength** (Strong/Weak) is an **intrinsic chemical property** defined by $\text{K}_\text{a}$ or $\text{K}_\text{b}$ (i.e., how readily the substance dissociates). A strong acid dissociates completely; a weak acid only partially. **Dilution** (Concentrated/Dilute) is a **non-intrinsic property** defined by the overall molar concentration ($c$). A concentrated weak acid will have a higher concentration than a dilute strong acid.
        
- **What is the relationship between $\text{K}_\text{a}$, $\text{K}_\text{b}$ and $\text{K}_\text{w}$ and we can calculate these parameters.**
    
    - **Relationship:** $\text{K}_\text{a} \cdot \text{K}_\text{b} = \text{K}_\text{w}$ (for a conjugate acid/base pair). Logarithmically: $\text{pK}_\text{a} + \text{pK}_\text{b} = \text{pK}_\text{w}$.
        
    - **Calculation:** If any two of these constants are known, the third can be calculated using this relationship. For instance, if $\text{K}_\text{a}$ is known and $\text{K}_\text{w}$ is assumed to be $10^{-14}$, then $\text{K}_\text{b} = \text{K}_\text{w} / \text{K}_\text{a}$. 
---
# 🐢 Definitions
- **Reversible Reaction:** A chemical reaction where the products can react to form the original reactants; represented by the double arrow ($\rightleftharpoons$).
- **Ampholyte:** A substance (like water, $\text{H}_2\text{O}$) that can act as both a Brønsted acid (proton donor) and a Brønsted base (proton acceptor).
- **Proton Donor:** A substance that gives away a hydrogen ion ($\text{H}^+$); a Brønsted acid.
- **Proton Acceptor:** A substance that receives a hydrogen ion ($\text{H}^+$); a Brønsted base.
- **Hydronium Ion ($\text{H}_3\text{O}^+$):** The primary form of the hydrogen ion in aqueous solution, formed by the hydration of $\text{H}^+$ by a water molecule.

---
# 📅 Homework

- Review the concept of buffering capacity and its relation to acid/base equilibria.
- Find the $\text{pK}_\text{a}$ values for three common weak acids found in natural waters (e.g., acetic acid, carbonic acid, silicic acid).
- Calculate the equilibrium concentration of $\text{OH}^-$ ions in a strong acid solution with $\text{pH} = 2.5$ at $25\text{ }^\circ\text{C}$.

