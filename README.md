# mr-hypertension-breast-cancer
# Mendelian Randomization: Hypertension and Breast Cancer Risk in African Women

This repository contains the code, summary data sources, and documentation for a Mendelian Randomization (MR) study investigating the potential causal relationship between **hypertension** and **breast cancer (BC)** risk, including BC subtypes, in women of African ancestry.

## Study Objective

To assess whether genetically predicted hypertension is causally associated with breast cancer risk (overall and subtypes: ER+, ER−, and TNBC) using a **two-sample MR** approach.

## Data Sources

- **Exposure GWAS (Hypertension):** AWI-Gen (Africa Wits-INDEPTH partnership for Genomic Research)  
- **Outcome GWAS (Breast Cancer):** African Ancestry Breast Cancer GWAS Consortium (AABCG)

Data sources are publicly available. See manuscript Methods section 2.2–2.3 for access links.

## Methods

This study used a **bidirectional two-sample Mendelian Randomization (MR)** design, adhering to standard MR assumptions. Analyses were conducted in both directions to test for causality from hypertension to BC and vice versa.

### Instrument Selection  
- Hypertension SNPs were selected using a significance threshold of **P < 5 × 10⁻⁶** due to limited genome-wide significant hits.
- LD pruning was applied (R² < 0.01, 10,000 kb window) using PLINK and African reference data.
- Weak instruments (F-statistic < 10) were excluded.
- Effect alleles were harmonized and ambiguous SNPs were removed.

### Primary MR Method  
- **Inverse Variance Weighted (IVW)**

### Additional MR Methods  
- MR-Egger  
- Weighted Median  
- Weighted Mode  
- Robust Adjusted Profile Score (RAPS)  
- MR-PRESSO used to detect and correct for outliers  
- **Bonferroni correction** applied (P < 0.003)

### Sensitivity Analyses  
- Cochran’s Q and I² for heterogeneity  
- MR-Egger intercept for pleiotropy  
- Steiger test for directionality  
- Leave-one-out analysis for robustness

All analyses were conducted in **R (v4.1.2)** using:
- [`TwoSampleMR`](https://mrcieu.github.io/TwoSampleMR/)
- [`MRPRESSO`](https://github.com/rondolab/MR-PRESSO)

## Files in this Repository

- `README.md` — Overview of the study  
- `code/` — R scripts for data preparation, MR analysis, and plotting (to be added)  
- `figures/` — MR scatter plots, forest plots, funnel plots (optional upload)  
- `data/` — (Optional) Sample harmonized SNP datasets, if allowed  

## Key Results

- Significant causal association found between hypertension and **ER− breast cancer** (OR: 1.90, 95% CI: 1.06–3.41, P = 0.03). Note: This result did not remain significant after Bonferroni correction (P < 0.003)
- No significant associations with overall BC, ER+ BC, or TNBC
- Results robust to sensitivity analyses; no evidence of pleiotropy or reverse causation

## Citation

If using or referencing this work, please cite the manuscript:

> Kyei F, Ansah EO, Agyenim EB, et al. *Exploring the Causal Link Between Hypertension and Breast Cancer Risk: A Mendelian Randomization Study in African Women* (2025). [Manuscript in preparation].

## Contact

For questions or collaboration inquiries, contact:

**Emmanuel Owusu Ansah**  
emmanuel.ansah1@stu.ucc.edu.gh

*This is the first MR study on this topic using African GWAS data. We encourage contributions, suggestions, and feedback!*
