library(dplyr)
library(tidyr)
library(haven)
library(readxl)

nhefs <- read_sas("data-raw/nhefs.sas7bdat") %>%
  # add id and censored indicator
  # recode age > 50 and years of school to categories
  mutate(
    id = 1:n(),
    censored = ifelse(is.na(wt82), 1, 0),
    older = case_when(is.na(age) ~ NA_real_,
                      age > 50 ~ 1,
                      TRUE ~ 0),
    education = case_when(school <  9 ~ 1,
                       school <  12 ~ 2,
                       school == 12 ~ 3,
                       school < 16 ~ 4,
                       TRUE ~ 5)
  ) %>%
  # change categorical to factors
  mutate_at(vars(sex, race, education, exercise, active), factor)


# restrict to complete cases
nhefs_complete <- nhefs %>%
  drop_na(qsmk, sex, race, age, school, smokeintensity, smokeyrs, exercise,
         active, wt71, wt82, wt82_71, censored)

nhefs_codebook <- read_xls("data-raw/NHEFS_Codebook.xls")
names(nhefs_codebook) <- c("variable", "description")

usethis::use_data(nhefs, overwrite = TRUE)
usethis::use_data(nhefs_complete, overwrite = TRUE)
usethis::use_data(nhefs_codebook, overwrite = TRUE)
