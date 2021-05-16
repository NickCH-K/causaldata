zero <- function(n) rep(0, n)
one <- function(n) rep(1, n)
greek_data <- tibble::tibble(
  name = c(
    "Rheia", "Kronos", "Demeter", "Hades", "Hestia", "Poseidon",
    "Hera", "Zeus", "Artemis","Apollo", "Leto", "Ares", "Athena",
    "Hephaestus", "Aphrodite", "Cyclope", "Persephone", "Hermes",
    "Hebe", "Dionysus"
  ),
  l = c(zero(8), one(12)),
  a = c(zero(4), one(4), zero(3), one(9)),
  y = c(0, 1, zero(5), one(3), 0, one(6), zero(3))
)

usethis::use_data(greek_data, overwrite = TRUE)
