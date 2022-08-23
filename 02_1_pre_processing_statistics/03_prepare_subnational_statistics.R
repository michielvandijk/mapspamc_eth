#'========================================================================================
#' Project:  mapspamc
#' Subject:  Script to process raw subnational statistics
#' Author:   Michiel van Dijk
#' Contact:  michiel.vandijk@wur.nl
#'========================================================================================

# SOURCE PARAMETERS ----------------------------------------------------------------------
source(here::here("01_model_setup/01_model_setup.r"))

# In this script the raw subnational statistics are processed. In order to prevent errors
# when running the model, it is essential to put the statistics in the right
# format and make sure they are consistent (e.g. total area at national level is equal to
# that of subnational area).

# The user can prepare the data in Excel or use R. mapspamc offers a function to create a
# template for the data. It also providers several support functions to check for consistency
# and modify where needed. See the package documentation for more information.




# NOTE -----------------------------------------------------------------------------------
# The crop statistics for Ethiopia were already put in the right format so this script is empty.