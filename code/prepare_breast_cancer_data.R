# ---------------------------------------------
# Breast Cancer GWAS Summary Data Preparation
# ---------------------------------------------

# Load necessary packages
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("MungeSumstats")

# Optional: Install required genome annotation packages
# BiocManager::install("SNPlocs.Hsapiens.dbSNP155.GRCh37")
# BiocManager::install("BSgenome.Hsapiens.1000genomes.hs37d5")

library(MungeSumstats)

# Rename columns of raw breast cancer summary stats dataframe
colnames(BC) <- c(
  "CHR", "BP", "A2", "A1", "BETA", "SE", "FRQ", "P", 
  "SNP", "REF_ALLELE", "N", "HETPVAL"
)

# Format and liftover data from GRCh38 → GRCh37
BC <- format_sumstats(
  sumstats_dt = BC_data,
  ref_genome = "GRCh38",
  convert_ref_genome = "GRCh37",
  chain_source = "ensembl",
  convert_small_p = TRUE,
  convert_large_p = TRUE,
  convert_neg_p = TRUE,
  compute_z = FALSE,
  compute_n = 0L,
  convert_n_int = TRUE,
  es_is_beta = TRUE,
  INFO_filter = 0.9,
  FRQ_filter = 0,
  pos_se = TRUE,
  chr_style = "Ensembl",
  rmv_chr = c("X", "Y", "MT"),
  on_ref_genome = TRUE,
  infer_eff_direction = TRUE,
  strand_ambig_filter = FALSE,
  allele_flip_check = TRUE,
  allele_flip_drop = TRUE,
  allele_flip_z = TRUE,
  allele_flip_frq = TRUE,
  bi_allelic_filter = TRUE,
  snp_ids_are_rs_ids = TRUE,
  frq_is_maf = TRUE,
  indels = TRUE,
  drop_na_cols = c("SNP", "CHR", "BP", "A1", "A2", "FRQ", "BETA", "SE", "P", "N"),
  dbSNP = 155,
  check_dups = TRUE,
  sort_coordinates = TRUE,
  nThread = 1,
  save_path = "data/ER_neg_BC_cleaned.tsv.gz",  # Change this path as needed
  return_data = FALSE,
  return_format = "data.table",
  mapping_file = sumstatsColHeaders
)

# Done! Output saved to data/BC_cleaned.tsv.gz




