---
tipo: definicion
fecha: 2025-11-24
---

# AHP method

## Summary
AHP enables transparent weighting through pairwise comparisons and consistency checking.
## 1. Concept
AHP decomposes a decision problem into a hierarchy:
- Goal  
- Criteria  
- Subcriteria  
- Alternatives  
And uses pairwise comparisons to derive weights.
## 2. Pairwise Comparison Matrix
For criteria $C_1, \dots, C_n$:
$$
A = (a_{ij}), \quad a_{ij} = \frac{w_i}{w_j}
$$
Scale:

| Value | Interpretation |
|-------|----------------|
| 1 | Equal importance |
| 3 | Moderate |
| 5 | Strong |
| 7 | Very strong |
| 9 | Extreme |
## 3. Weight Extraction
Weights $w$ are eigenvector of matrix $A$:

$$
A w = \lambda_{\max} w
$$

Normalized to sum to 1.
## 4. Consistency Ratio
$$
CR = \frac{CI}{RI}
$$
Where:

$$
CI = \frac{\lambda_{\max}-n}{n-1}
$$

Acceptable if $CR < 0.1$.
## 5. Aggregation
Overall score:

$$
S_j = \sum_{i=1}^{n} w_i\, v_{ij}
$$
Where $v_{ij}$ are standardized scores.

---

## 📚 Mencionado en

```dataview
table file.link as "Documento"
from ""
where contains(file.outlinks, this.file.link)
