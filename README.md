# mr-hypertension-breast-cancer
# Mendelian Randomization: Hypertension and Breast Cancer Risk in African Women

This repository contains the code, summary data sources, and documentation for a Mendelian Randomization (MR) study investigating the potential causal relationship between **hypertension** and **breast cancer (BC)** risk, including BC subtypes, in women of African ancestry.

##  Study Objective

To assess whether genetically predicted hypertension is causally associated with breast cancer risk (overall and subtypes: ER+, ER−, and TNBC) using a **two-sample MR** approach.

##  Data Sources

- **Exposure GWAS (Hypertension):** AWI-Gen (Africa Wits-INDEPTH partnership for Genomic Research)  
- **Outcome GWAS (Breast Cancer):** African Ancestry Breast Cancer GWAS Consortium (AABCG)

Data sources are publicly available. See manuscript Methods section 2.2–2.3 for access links.

##  Methods

- **Primary MR method:** Inverse Variance Weighted (IVW)
- **Additional methods:** MR-Egger, Weighted Median, Weighted Mode, MR-RAPS, Simple Mode
- **Pleiotropy and sensitivity checks:** MR-PRESSO, leave-one-out analysis, Cochran’s Q, Steiger test

All analyses were conducted in **R (v4.1.2)** using:
- [`TwoSampleMR`](https://mrcieu.github.io/TwoSampleMR/)
- [`MRPRESSO`](https://github.com/rondolab/MR-PRESSO)

## Files in this Repository

- `README.md` — Overview of the study  
- `code/` — R scripts for data preparation, MR analysis, and plotting (to be added)  
- `figures/` — MR scatter plots, forest plots, funnel plots (optional upload)  
- `data/` — (Optional) Sample harmonized SNP datasets, if allowed  

##  Key Results

- Significant causal association found between hypertension and **ER− breast cancer** (OR: 1.90, 95% CI: 1.06–3.41, P = 0.03)
- No significant associations with overall BC, ER+ BC, or TNBC
- Results robust to sensitivity analyses; no evidence of pleiotropy or reverse causation

##  Citation

If using or referencing this work, please cite the manuscript:

> Kyei F, Ansah EO, Agyenim EB, et al. *Exploring the Causal Link Between Hypertension and Breast Cancer Risk: A Mendelian Randomization Study in African Women* (2025). [Manuscript in preparation].

## Contact

For questions or collaboration inquiries, contact:

**Emmanuel Owusu Ansah**  
 emmanuel.ansah1@stu.ucc.edu.gh


*This is the first MR study on this topic using African GWAS data. We encourage contributions, suggestions, and feedback!*
