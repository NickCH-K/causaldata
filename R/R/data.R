#' U.S. Women's Labor-Force Participation
#'
#' The \code{Mroz} data frame has 753 rows and 8 columns. The observations, from the Panel Study of Income Dynamics (PSID), are married women.
#'
#' This data set is a lightly edited version of the one found in the \emph{carData} package in R. It is used in the Describing Relationships chapter of \emph{The Effect}.
#'
#' @format A data frame with 753 rows and 8 variables
#' \describe{
#'   \item{lfp}{Labor-force participation}
#'   \item{k5}{Number of children 5 years old or younger}
#'   \item{k618}{Number of children 6 to 17 years old}
#'   \item{age}{Age in years}
#'   \item{wc}{Wife attended college}
#'   \item{hc}{Husband attended college}
#'   \item{lwg}{Log expected wage rate. For women in the labor force, the actual wage rate; for women not in the labor force, an imputed value based on the regression of lwg on the other variables.}
#'   \item{inc}{Family income exclusive of wife's income}
#' }
#' @encoding UTF-8
#' @source Mroz, T. A. (1987) The sensitivity of an empirical model of married women's hours of work to economic and statistical assumptions. *Econometrica* 55, 765–799.
#' @source John Fox, Sanford Weisberg and Brad Price (2020). carData: Companion to Applied Regression Data Sets. R package version 3.0-4. \url{https://CRAN.R-project.org/package=carData}
#' @references Fox, J. (2016) *Applied Regression Analysis and Generalized Linear Models,* Third Edition. Sage.
#' @references Fox, J. (2000) *Multiple and Generalized Nonparametric Regression.* Sage.
#' @references Fox, J. and Weisberg, S. (2019) *An R Companion to Applied Regression.* Third Edition, Sage.
#' @references Long. J. S. (1997) *Regression Models for Categorical and Limited Dependent Variables.* Sage.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"Mroz"

#' Data on Restaurant Inspections
#'
#' The \code{restaurant_inspections} data contains data on restaurant health inspections performed in Anchorage, Alaska.
#'
#' This data set is used in the \emph{Regression} chapter of \emph{The Effect}.
#'
#' @format A data frame with 27178 rows and 5 variables
#' \describe{
#'   \item{business_name}{Name of restaurant/chain}
#'   \item{inspection_score}{Health Inspection Score}
#'   \item{Year}{Year of inspection}
#'   \item{NumberofLocations}{Number of locations in restaurant chain}
#'   \item{Weekend}{Was the inspection performed on a weekend?}
#' }
#' @encoding UTF-8
#' @source Camus, Louis-Ashley. 2020. \url{https://www.kaggle.com/loulouashley/inspection-score-restaurant-inspection}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"restaurant_inspections"


#' Gapminder data
#'
#' The \code{gapminder} data contains data on life expectancy and GDP per capita by country and year.
#'
#' This data set is the same one found in the \emph{gapminder} package in R as of 2020. This data set is used in the \emph{Fixed Effects} chapter of \emph{The Effect}.
#'
#' @format A data frame with 1704 rows and 6 variables
#' \describe{
#'   \item{country}{The country}
#'   \item{continent}{The continent the country is in}
#'   \item{year}{The year data was collected. Ranges from 1952 to 2007 in increments of 5 years}
#'   \item{lifeExp}{Life expectancy at birth, in years}
#'   \item{pop}{Population}
#'   \item{gdpPercap}{GDP per capita (US$, inflation-adjusted)}
#' }
#' @encoding UTF-8
#' @source \url{http://www.gapminder.org/data/}
#' @source Jennifer Bryan (2017). gapminder: Data from Gapminder. R package version 0.3.0. \url{https://CRAN.R-project.org/package=gapminder}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"gapminder"

#' Google Stock Data
#'
#' The \code{google_stock} data contains data on daily stock returns for Google and the S&P 500 for May through Augut 2015, centering around the August 10, 2015 announcement that Google would reorganize under parent company Alphabet.
#'
#' This data was downloaded using the \emph{tidyquant} package, and is used in the \emph{Event Studies} chapter of \emph{The Effect}.
#'
#' @format A data frame with 84 rows and 3 variables
#' \describe{
#'   \item{Date}{The date}
#'   \item{Google_Return}{Daily GOOG Stock Return (1 = 100 percent daily return)}
#'   \item{SP500_Return}{Daily S&P 500 Index Return (1 = 100 percent daily return)}
#' }
#' @encoding UTF-8
#' @source Matt Dancho and Davis Vaughan (2021). tidyquant: Tidy Quantitative Financial Analysis. R package version 1.0.3. \url{https://CRAN.R-project.org/package=tidyquant}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"google_stock"


#' Organ Donation Data
#'
#' The \code{organ_donation} data contains data from Kessler and Roth (2014) on organ donation rates by state and quarter. The state of California enacted an active-choice phrasing for their organ donation sign-up questoin in Q32011. The only states included in the data are California and those that can serve as valid controls; see Kessler and Roth (2014).
#'
#' This data is used in the \emph{Difference-in-Differences} chapter of \emph{The Effect}.
#'
#' @format A data frame with 162 rows and 3 variables
#' \describe{
#'   \item{State}{The state, where California is the Treated group}
#'   \item{Quarter}{Quarter of observation, in "Q"QYYYY format}
#'   \item{Rate}{Organ donation rate}
#'   \item{Quarter_Num}{Quarter of observation in numerical format. 1 = Quarter 4, 2010}
#' }
#' @encoding UTF-8
#' @source Kessler, J.B. and Roth, A.E., 2014. Don't take 'no' for an answer: An experiment with actual organ donor registrations. National Bureau of Economic Research working paper No. 20378. \url{https://www.nber.org/papers/w20378}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"organ_donations"


#' Data from "Social Networks and the Decision to Insure"
#'
#' The \code{social_insure} data contains data from Jai, De Janvry, and Saoudlet (2015) on a two-round social network-based experiment on getting farmers to get insurance. See the paper for more details.
#'
#' This data is used in the \emph{Instrumental Variables} chapter of \emph{The Effect}.
#'
#' @format A data frame with 1410 rows and 13 variables
#' \describe{
#'   \item{address}{Natural village}
#'   \item{village}{Administrative village}
#'   \item{takeup_survey}{Whether farmer ended up purchasing insurance. (1 = yes)}
#'   \item{age}{Household Characteristics - Age}
#'   \item{agpop}{Household Characteristics - Household Size}
#'   \item{ricearea_2010}{Area of Rice Production}
#'   \item{disaster_prob}{Perceived Probability of Disasters Next Year}
#'   \item{male}{Household Caracteristics: Gender of Household Head (1 = male)}
#'   \item{default}{"Default option" in experimental format assigned to. (1 = default is to buy, 0 = default is to not buy)}
#'   \item{intensive}{Whether or not was assigned to "intensive" experimental session (1 = yes)}
#'   \item{risk_averse}{Risk aversion measurement}
#'   \item{literacy}{1 = literate, 0 = illiterate}
#'   \item{pre_takeup_rate}{Takeup rate prior to experiment}
#' }
#' @encoding UTF-8
#' @source Cai, J., De Janvry, A. and Sadoulet, E., 2015. Social networks and the decision to insure. \emph{American Economic Journal: Applied Economics}, 7(2), pp.81-108.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"social_insure"




#' Data from "Government Transfers and Political Support"
#'
#' The \code{gov_transfers} data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. Data is pre-limited to households that were just around the income cutoff.
#'
#' This data is used in the \emph{Regression Discontinuity} chapter of \emph{The Effect}.
#'
#' @format A data frame with 1948 rows and 5 variables
#' \describe{
#'   \item{Income_Centered}{Income measure, centered around program cutoff (negative value = eligible)}
#'   \item{Education}{Household average years of education among those 16+}
#'   \item{Age}{Household average age}
#'   \item{Participation}{Participation in transfers}
#'   \item{Support}{Measure of support for the government}
#' }
#' @encoding UTF-8
#' @source Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. \emph{American Economic Journal: Applied Economics}, 3(3), pp.1-28.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"gov_transfers"

#' Data from "Government Transfers and Political Support" for Density Tests
#'
#' The \code{gov_transfers_density} data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. As opposed to the \code{gov_transfers} data set, this data set only contains income information, but has a wider range of it, for use with density discontinuity tests.
#'
#' This data is used in the \emph{Regression Discontinuity} chapter of \emph{The Effect}.
#'
#' @format A data frame with 52549 rows and 1 variable:
#' \describe{
#'   \item{Income_Centered}{Income measure, centered around program cutoff (negative value = eligible)}
#' }
#' @encoding UTF-8
#' @source Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. \emph{American Economic Journal: Applied Economics}, 3(3), pp.1-28.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"gov_transfers_density"

#' Data from "How do Mortgage Subsidies Affect Home Ownership? Evidence from the Mid-Century GI Bills"
#'
#' The \code{mortgages} data contains data from Fetter (2015) on home ownership rates by men, focusing on whether they were born at the right time to be eligible for mortgage subsidies based on their military service.
#'
#' This data is used in the \emph{Regression Discontinuity} chapter of \emph{The Effect}.
#'
#' @format A data frame with 214144 rows and 6 variables
#' \describe{
#'   \item{bpl}{Birth State}
#'   \item{qob}{Quarter of birth}
#'   \item{nonwhite}{White/nonwhite race indicator. 1 = Nonwhite}
#'   \item{vet_wwko}{Veteran of either the Korean war or World War II}
#'   \item{home_ownership}{Owns a home}
#'   \item{qob_minus_kw}{Quarter of birth centered on eligibility for mortgage subsidy (0+ = eligible)}
#' }
#' @encoding UTF-8
#' @source Fetter, D.K., 2013. How do mortgage subsidies affect home ownership? Evidence from the mid-century GI bills. \emph{American Economic Journal: Economic Policy}, 5(2), pp.111-47.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"mortgages"

#' Data from "Black Politicians are More Intrinsically Motivated to Advance Blacks' Interests"
#'
#' The \code{black_politicians} data contains data from Broockman (2013) on a field experiment where the author sent fictional emails purportedly sent by Black people to legislators in the United States. The experiment sought to determine whether the effect of the email being from "out-of-district" (someone who can't vote for you and so provides no extrinsic motivation to reply) would have a smaller effect on response rates for Black legislators than for non-Black ones, providing evidence of additional intrinsic motivation on the part of Black legislators to help Black people.
#'
#' This data is used in the \emph{Matching} chapter of \emph{The Effect}.
#'
#' @format A data frame with 5593 rows and 14 variables
#' \describe{
#'   \item{leg_black}{Legislator receiving email is Black}
#'   \item{treat_out}{Email is from out-of-district}
#'   \item{responded}{Legislator responded to email}
#'   \item{totalpop}{District population}
#'   \item{medianhhincom}{District median household income}
#'   \item{black_medianhh}{District median household income among Black people}
#'   \item{white_medianhh}{District median household income among White people}
#'   \item{blackpercent}{Percentage of district that is Black}
#'   \item{statessquireindex}{State's Squire index}
#'   \item{nonblacknonwhite}{Legislator receiving email is neither Black nor White}
#'   \item{urbanpercent}{Percentage of district that is urban}
#'   \item{leg_senator}{Legislator receiving email is a senator}
#'   \item{leg_democrat}{Legislator receiving email is in the Democratic party}
#'   \item{south}{Legislator receiving email is in the Southern United States}
#' }
#' @encoding UTF-8
#' @source Broockman, D.E., 2013. Black politicians are more intrinsically motivated to advance blacks’ interests: A field experiment manipulating political incentives. \emph{American Journal of Political Science}, 57(3), pp.521-536.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{http://nickchk.com/causalitybook.html}.
"black_politicians"

