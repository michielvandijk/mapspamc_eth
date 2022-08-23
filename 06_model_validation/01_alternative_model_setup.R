#'========================================================================================
#' Project:  mapspamc
#' Subject:  Setup model
#' Author:   Michiel van Dijk
#' Contact:  michiel.vandijk@wur.nl
#'========================================================================================

# SOURCE PARAMETERS ----------------------------------------------------------------------
source(here::here("01_model_setup/01_model_setup.r"))

# NOTE -----------------------------------------------------------------------------------
# The scripts in the post-processing step are specific for the model resolution (i.e. 5min or
# 30sec). To run the alternative model with the same resolution, no new input data files have
# to be generated. In other words, all scripts that are part of step 2: pre-processing do
# not have to be run anymore!


# SETUP ALTERNATIVE MODEL ----------------------------------------------------------------
# Set mapspamc parameters for an alternative min entropy 5min model that only uses adm1_level statistics
# and constraints - min_entropy_5min_adm_level_1_solve_level_1 model)
alt_param <- mapspamc_par(
  model_path = model_path,
  #db_path = db_path,
  gams_path = gams_path,
  iso3c = "ETH",
  year = 2015,
  res = "5min",
  adm_level = 1,
  solve_level = 1,
  model = "min_entropy")

# Set mapspamc parameters for an alternative max score 30sec model that only uses adm1_level statistics
# and constraints - max_score_30sec_adm_level_1_solve_level_1)
# alt_param <- mapspamc_par(
#   model_path = model_path,
#   db_path = db_path,
#   gams_path = gams_path,
#   iso3c = "ETH",
#   year = 2015,
#   res = "30sec",
#   adm_level = 1,
#   solve_level = 1,
#   model = "max_score")

# Show parameters
print(alt_param)

