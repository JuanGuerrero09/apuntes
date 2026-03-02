---
tipo: definicion
fecha: 2025-11-24
---

# MCDA in flood risk
## Summary
MCDA combines multiple criteria, weights, and spatial information to support transparent flood-risk decisions.
## 1. Purpose
MCDA supports decisions involving multiple conflicting criteria and heterogeneous data.  
Applications include:
- Site selection  
- Priority ranking  
- Strategy evaluation  
- Spatial planning using GIS  
## 2. MCDA Workflow
### Step 1 — Problem Structuring
Define:
- Alternatives  
- Objectives  
- Constraints  
- Decision makers  
### Step 2 — Criteria Formulation
Criteria must be:
- Complete  
- Non-redundant  
- Preferably hierarchical  
### Step 3 — Standardization
Convert different units into comparable scales:
- Linear scaling  
- Benefit/cost functions  
- Thresholding  
- Fuzzy membership  
### Step 4 — Weighting Methods
- **AHP**  
- Entropy  
- Direct rating  
- SMART/SWING  
- Pairwise comparisons  
- Data-driven methods  
### Step 5 — Aggregation Rules
- **Weighted Linear Combination (WLC)**  
- Ordered Weighted Averaging (OWA)  
- Multiplicative models  
- Outranking (ELECTRE, PROMETHEE)  
- TOPSIS  
### Step 6 — Sensitivity Analysis
Explore robustness of ranking with respect to changes in weights or methods.
## 3. GIS-Based MCDA
GIS enables spatial MCDA:
- Raster-based overlay  
- Weight maps  
- Cost–benefit surfaces  
- Hotspot detection  
$$
S(x) = \sum_{i=1}^{n} w_i\, c_i(x)
$$

Where:
- $c_i(x)$ = criterion map  
- $w_i$ = weights  
- $S(x)$ = suitability score  
---

## 📚 Mencionado en

```dataview
table file.link as "Documento"
from ""
where contains(file.outlinks, this.file.link)
