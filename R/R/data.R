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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @source \url{https://www.gapminder.org/data/}
#' @source Jennifer Bryan (2017). gapminder: Data from Gapminder. R package version 0.3.0. \url{https://CRAN.R-project.org/package=gapminder}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
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
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
"black_politicians"


#' Automobile data from Stata
#'
#' This data, which comes standard in Stata, originally came from the April 1979 issue of Consumer Reports and from the United States Government EPA statistics on fuel consumption; they were compiled and published by Chambers et al. (1983).
#'
#' This data is used in the \emph{Probability and Regression Review} chapter of \emph{Causal Inference: The Mixtape}.
#'
#' @format A data frame with 74 rows and 12 variables
#' \describe{
#'   \item{make}{Make and Model}
#'   \item{price}{Price}
#'   \item{mpg}{Mileage (mpg)}
#'   \item{rep78}{Repair Record 1978}
#'   \item{headroom}{Headroom (in.)}
#'   \item{trunk}{Trunk space (cu. ft.)}
#'   \item{weight}{Weight (lbs.)}
#'   \item{length}{Length (in.)}
#'   \item{turn}{Turn Circle (ft.)}
#'   \item{displacement}{Displacement (cu. in.)}
#'   \item{gear_ratio}{Gear Ratio}
#'   \item{foreign}{Car type; 0 = Domestic, 1 = Foreign}
#' }
#' @encoding UTF-8
#' @source Chambers, J. M., W. S. Cleveland, B. Kleiner, and P. A. Tukey. 1983. Graphical Methods for Data Analysis. Belmont, CA: Wadsworth.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"auto"

#' A simple simulated data set for calculating p-values
#'
#' This simulated data allows for a quick and easy calculation of a p-value using randomization inference.
#'
#' This data is used in the \emph{Potential Outcomes Causal Model} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 8 rows and 5 variables
#' \describe{
#'   \item{name}{Fictional Name}
#'   \item{d}{Treatment}
#'   \item{y}{Outcome}
#'   \item{y0}{Outcome if untreated}
#'   \item{y1}{Outcome if treated}
#' }
#' @encoding UTF-8
#' @source Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"ri"

#' Data on 19th century English Poverty from Yule (1899)
#'
#' \code{yule} allows for a look at the correlation between poverty relief and poverty rates in England in the 19th century.
#'
#' This data is used in the Potential Outcomes Causal Model chapter of Causal Inference: The Mixtape by Cunningham.
#'
#' @format A data frame with 32 rows and 5 variables
#' \describe{
#'   \item{location}{Location in England}
#'   \item{paup}{Pauperism Growth}
#'   \item{outrelief}{Poverty Relief Growth}
#'   \item{old}{Annual growth in aged population}
#'   \item{pop}{Annual growth in population}
#' }
#' @encoding UTF-8
#' @source Yule, G. Udny. 1899. 'An Investigation into the Causes of Changes in Pauperism in England, Chiefly During the Last Two Interensal Decades.' Journal of Royal Statistical Society 62: 249–95.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"yule"

#' Data from HIV information experiment in Thornton (2008)
#'
#' \code{thornton_hiv} comes from an experiment in Malawi looking at whether cash incentives could encourage people to learn the results of their HIV tests.
#'
#' This data is used in the Potential Outcomes Causal Model chapter of Causal Inference: The Mixtape by Cunningham.
#'
#' @format A data frame with 4820 rows and 7 variables
#' \describe{
#' \item{villnum}{Village ID}
#' \item{got}{Got HIV results}
#' \item{distvct}{Distance in kilometers}
#' \item{tinc}{Total incentive}
#' \item{any}{Received any incentive}
#' \item{age}{Age}
#' \item{hiv2004}{HIV results}
#' }
#' @encoding UTF-8
#' @source Thornton, Rebecca L. 2008. 'The Demand for, and Impact of, Learning Hiv Status.' American Economic Review 98 (5): 1829–63.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"thornton_hiv"

#' Data from the sinking of the Titanic
#'
#' \code{titanic} comes from the sinking of the Titanic, and can be used to look at survival by different demographic characteristics.
#'
#' This data is used in the Matching and Subclassification chapter of Causal Inference: The Mixtape by Cunningham.
#'
#' @format A data frame with 4820 rows and 7 variables
#' \describe{
#' \item{class}{class (ticket)}
#' \item{age}{Age (Child vs. Adult)}
#' \item{sex}{Gender}
#' \item{survived}{Survived}
#' }
#' @encoding UTF-8
#' @source British Board of Trade (1990), Report on the Loss of the ‘Titanic’ (S.S.). British Board of Trade Inquiry Report (reprint). Gloucester, UK: Allan Sutton Publishing.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"titanic"

#' Simulated data from a job training program
#'
#' This simulated data, which is presented in the form of a full results, table, is used to demonstrate a matching procedure.
#'
#' This data is used in the \emph{Matching and Subclassification} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 25 rows and 9 variables
#' \describe{
#' \item{unit_treat}{Unit ID for treated observations}
#' \item{age_treat}{age for treated observations}
#' \item{earnings_treat}{earnings for treated observations}
#' \item{unit_control}{Unit ID for control observations}
#' \item{age_control}{age for control observations}
#' \item{earnings_control}{earnings for control observations}
#' \item{unit_matched}{Unit ID for matched controls}
#' \item{age_matched}{age for matched controls}
#' \item{earnings_matched}{earnings for matched controls}
#' }
#' @encoding UTF-8
#' @source Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"training_example"

#' Simulated data from a job training program for a bias reduction method
#'
#' This simulated data is used to demonstrate the bias-reduction method in matching as per Abadie and Imbens (2011).
#'
#' This data is used in the \emph{Matching and Subclassification} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 8 rows and 4 variables
#' \describe{
#' \item{Unit}{Unit ID}
#' \item{Y}{Outcome}
#' \item{D}{Treatment}
#' \item{X}{Matching variable}
#' }
#' @encoding UTF-8
#' @source Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"training_bias_reduction"

#' Data from the National Supported Work Demonstration (NSW) job-training program
#'
#' Data from the National Supported Work Demonstration (NSW) job-training program experiment, where those treated were guaranteed a job for 9-18 months.
#'
#' This data is used in the \emph{Matching and Subclassification} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 445 rows and 11 variables
#' \describe{
#' \item{data_id}{Individual ID}
#' \item{treat}{In the National Supported Work Demonstration Job Training Program}
#' \item{age}{Age in years}
#' \item{educ}{Years of education}
#' \item{black}{Race: Black}
#' \item{hisp}{Ethnicity: Hispanic}
#' \item{marr}{Married}
#' \item{nodegree}{Has no degree}
#' \item{re74}{Real earnings 1974}
#' \item{re75}{Real earnings 1975}
#' \item{re78}{Real earnings 1978}
#' }
#' @encoding UTF-8
#' @source Lalonde, Robert. 1986. “Evaluating the Econometric Evaluations of Training Programs with Experimental Data.” American Economic Review 76 (4): 604–20.
#' @source Dehejia, Rajeev H., and Sadek Wahba. 1999. “Causal Effects in Nonexperimental Studies: Reevaluating the Evaluation of Training Programs.” Journal of the American Statistical Association 94 (448): 1053–62.".
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"nsw_mixtape"

#' Observational counterpart to nsw_mixtape data
#'
#' Data from the Current Population Survey on participation in the National Supported Work Demonstration (NSW) job-training program experiment. This is used as an observational comparison to the NSW experimental data from the nsw_mixtape data.
#'
#' This data is used in the \emph{Matching and Subclassification} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 15992 rows and 11 variables
#' \describe{
#' \item{data_id}{Individual ID}
#' \item{treat}{In the National Supported Work Demonstration Job Training Program}
#' \item{age}{Age in years}
#' \item{educ}{Years of education}
#' \item{black}{Race: Black}
#' \item{hisp}{Ethnicity: Hispanic}
#' \item{marr}{Married}
#' \item{nodegree}{Has no degree}
#' \item{re74}{Real earnings 1974}
#' \item{re75}{Real earnings 1975}
#' \item{re78}{Real earnings 1978}
#' }
#' @encoding UTF-8
#' @source Dehejia, Rajeev H., and Sadek Wahba. 1999. “Causal Effects in Nonexperimental Studies: Reevaluating the Evaluation of Training Programs.” Journal of the American Statistical Association 94 (448): 1053–62.".
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"cps_mixtape"

#' A close-elections regression discontinuity study from Lee, Moretti, and Butler (2004)
#'
#' This data comes from a close-elections regression discontinuity study from Lee, Moretti, and Butler (2004). The design is intended to test convergence and divergence in policy. Major effects of electing someone from a particular party on policy outcomes *in a close race* indicates that the victor does what they want. Small or null effects indicate that the electee moderates their position towards their nearly-split electorate.
#'
#' This data is used in the \emph{Regression Discontinuity} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 13588 rows and 9 variables
#' \describe{
#' \item{state}{ICPSR state code}
#' \item{district}{district code}
#' \item{id}{Election ID}
#' \item{score}{ADA voting score (higher = more liberal)}
#' \item{year}{Year of election}
#' \item{demvoteshare}{Democratic share of the vote}
#' \item{democrat}{Democratic victory}
#' \item{lagdemocrat}{Lagged Democratic victory}
#' \item{lagdemvoteshare}{Lagged democratic share of the vote}
#' }
#' @encoding UTF-8
#' @source Lee, David S., Enrico Moretti, and Matthew J. Butler. 2004. “Do Voters Affect or Elect Policies: Evidence from the U.S. House.” Quarterly Journal of Economics 119 (3): 807–59.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"close_elections_lmb"

#' Data from Card (1995) to estimate the effect of college education on earnings
#'
#' Data from the National Longitudinal Survey Young Men Cohort. This data is used to estimate the effect of college education on earnings, using the presence of a nearby (in-county) college as an instrument for college attendance.
#'
#' This data is used in the \emph{Instrumental Variables} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 3010 rows and 8 variables
#' \describe{
#' \item{lwage}{Log wages}
#' \item{educ}{Years of education}
#' \item{exper}{Years of work experience}
#' \item{black}{Race: Black}
#' \item{south}{In the southern United States}
#' \item{married}{Is married}
#' \item{smsa}{In a Standard Metropolitan Statistical Area (urban)}
#' \item{nearc4}{There is a four-year college in the county}
#' }
#' @encoding UTF-8
#' @source Card, David. 1995. “Aspects of Labour Economics: Essays in Honour of John Vanderkamp.” In. University of Toronto Press.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"close_college"

#' Earnings and Loan Repayment in US Four-Year Colleges
#'
#' From the College Scorecard, this data set contains by-college-by-year data on how students who attended those colleges are doing.
#'
#' This data is not just limited to four-year colleges and includes a very wide variety of institutions.
#'
#' Note that the labor market (earnings, working) and repayment rate data do not refer to the same cohort of students, but rather are matched on the year in which outcomes are recorded. Labor market data refers to cohorts beginning college as undergraduates ten years prior, repayment rate data refers to cohorts entering repayment seven years prior.
#'
#' Data was downloaded using the Urban Institute's \code{educationdata} package.
#'
#' This data was used in the \emph{Describing Variables} chapter of The Effect by Huntington-Klein
#'
#' @format A data frame with 48,445 rows and 8 variables:
#' \describe{
#'   \item{unitid}{College identifiers}
#'   \item{inst_name}{Name of the college or university}
#'   \item{state_abbr}{Two-letter abbreviation for the state the college is in}
#'   \item{pred_degree_awarded_ipeds}{Predominant degree awarded. 1 = less-than-two-year, 2 = two-year, 3 = four-year+}
#'   \item{year}{Year in which outcomes are measured}
#'   \item{earnings_med}{Median earnings among students (a) who received federal financial aid, (b) who began as undergraduates at the institution ten years prior, (c) with positive yearly earnings}
#'   \item{count_not_working}{Number of students who are (a) not working (not necessarily unemployed), (b) received federal financial aid, and (c) who began as undergraduates at the institution ten years prior}
#'   \item{count_working}{Number of students who are (a) working, (b) who received federal financial aid, and (c) who began as undergraduates at the institution ten years prior}
#' }
#' @encoding UTF-8
#' @source Education Data Portal (Version 0.4.0 - Beta), Urban Institute, Center on Education Data and Policy, accessed June 28, 2019. \url{https://educationdata.urban.org/documentation/}, Scorecard.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
"scorecard"

#' Data on avocado sales
#'
#' This data set includes information on the average price and total amount of avocados sold across 169 weeks from 2015 to 2018. This data covers only sales of 'conventional' avocados that take place in California.
#'
#' This data was used in the \emph{Identification} chapter of The Effect by Huntington-Klein
#'
#' @format A data frame with 169 rows and 3 variables:
#' \describe{
#'   \item{Date}{Date of observation}
#'   \item{AveragePrice}{Average avocado price}
#'   \item{TotalVolume}{Total volume of avocados sold}
#' }
#' @encoding UTF-8
#' @source Kiggins, Justin. 2018. \url{https://www.kaggle.com/neuromusic/avocado-prices/}
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
"avocado"

#' Data from a survey of internet-mediated sex workers
#'
#' This data comes from a survey of 700 internet-mediated sex workers in 2008 and 2009, asking the same sex workers standard labor market information over several time periods.
#'
#' This data is used in the \emph{Panel Data} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 1787 rows and 31 variables
#' \describe{
#' \item{id}{Provider identifier}
#' \item{session}{Client session identifier}
#' \item{age}{Age of provider}
#' \item{age_cl}{Age of Client}
#' \item{appearance_cl}{Client Attractiveness (Scale of 1 to 10)}
#' \item{bmi}{Body Mass Index}
#' \item{schooling}{Imputed Years of Schooling}
#' \item{asq_cl}{Age of Client Squared}
#' \item{provider_second}{Second Provider Involved}
#' \item{asian_cl}{Asian Client}
#' \item{black_cl}{Black Client}
#' \item{hispanic_cl}{Hispanic Client}
#' \item{othrace_cl}{Other Ethnicity Client}
#' \item{reg}{Client was a Regular}
#' \item{hot}{Met Client in Hotel}
#' \item{massage_cl}{Gave Client a Massage}
#' \item{lnw}{Log of Hourly Wage}
#' \item{llength}{Ln(Length)}
#' \item{unsafe}{Unprotected sex with client of any kind}
#' \item{asian}{race==1. Asian}
#' \item{black}{race==2. Black}
#' \item{hispanic}{race==3. Hispanic}
#' \item{other}{race==4. Other}
#' \item{white}{race==5. White}
#' \item{asq}{Age of provider squared}
#' \item{cohab}{ms==Cohabitating (living with a partner) but unmarried}
#' \item{married}{ms==Currently married and living with your spouse}
#' \item{divorced}{ms==Divorced and not remarried}
#' \item{separated}{ms==Married but not currently living with your spouse}
#' \item{nevermarried}{ms==Single and never married}
#' \item{widowed}{ms==Widowed and not remarried}
#' }
#' @encoding UTF-8
#' @source Cunningham, Scott, and Todd D. Kendall. 2011. “Prostitution 2.0: The Changing Face of Sex Work.” Journal of Urban Economics 69: 273–87.
#' @source Cunningham, Scott, and Todd D. Kendall. 2014. “Examining the Role of Client Reviews and Reputation Within Online Prostitution.” In, edited by Scott Cunningham and Manisha Shah. Vol. Handbook on the Economics of Prostitution. Oxford University Press.
#' @source Cunningham, Scott, and Todd D. Kendall. 2016. “Prostitution Labor Supply and Education.” Review of Economics of the Household. Forthcoming.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"adult_services"

#' Data on abortion legalization and sexually transmitted infections
#'
#' This data looks at the effect of abortion legalization on the incidence of gonnorhea among 15-19 year olds, as a measure of risky behavior. Treatment is whether abortion is legalized at the time that the eventual 15-19 year olds are born.
#'
#' This data is used in the \emph{Difference-in-Differences} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 19584 rows and 22 variables
#' \describe{
#' \item{fip}{State FIPS code}
#' \item{age}{Age in years}
#' \item{race}{Race - 1 = white, 2 = black}
#' \item{year}{Year}
#' \item{t}{Year but counted on a different scale}
#' \item{sex}{Sex: 1 = male, 2 = female}
#' \item{totpop}{Total population}
#' \item{ir}{Incarcerated Males per 100,000}
#' \item{crack}{Crack index}
#' \item{alcohol}{Alcohol consumption per capita}
#' \item{income}{Real income per capita}
#' \item{ur}{State unemployment rate}
#' \item{poverty}{Poverty rate}
#' \item{repeal}{In a state with an early repeal of abortion prohibition}
#' \item{acc}{AIDS mortality per 100,000 cumulative in t, t-1, t-2, t-3}
#' \item{wht}{White Indicator}
#' \item{male}{Male Indicator}
#' \item{lnr}{Logged gonnorhea cases per 100,000 in 15-19 year olds}
#' \item{younger}{From the younger group}
#' \item{fa}{State-younger interaction}
#' \item{pi}{Parental involvement law in effect}
#' \item{bf15}{Is a black female in the 15-19 age group}
#' }
#' @encoding UTF-8
#' @source Cunningham, Scott, and Christopher Cornwell. 2013. “The Long-Run Effect of Abortion on Sexually Transmitted Infections.” American Law and Economics Review 15 (1): 381–407.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"abortion"


#' Data on castle-doctrine statutes and violent crime
#'
#' This data looks at the impact of castle-doctrine statutes on violent crime. Data from the FBI Uniform Crime Reports Summary files are combined with information on castle-doctrine/stand-your-ground law impementation in different states.
#'
#' This data is used in the \emph{Difference-in-Differences} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 19584 rows and 22 variables
#' \describe{
#' \item{year}{Year}
#' \item{post}{After-treatment}
#' \item{sid}{state id}
#' \item{robbery_gun_r}{Region-quarter fixed effects}
#' \item{jhcitizen_c}{justifiable homicide by private citizen count}
#' \item{jhpolice_c}{justifiable homicide by police count}
#' \item{homicide}{homicide count per 100,000 state population}
#' \item{robbery}{Region-quarter fixed effects}
#' \item{assault}{aggravated assault count per 100,000 state population}
#' \item{burglary}{burglary count per 100,000 state population}
#' \item{larceny}{larceny count per 100,000 state population}
#' \item{motor}{motor vehicle theft count per 100,000 state population}
#' \item{murder}{murder count per 100,000 state population}
#' \item{unemployrt}{unemployment rate}
#' \item{blackm_15_24}{\% of black male aged 15-24}
#' \item{whitem_15_24}{\% of white male aged 15-24}
#' \item{blackm_25_44}{\% of black male aged 25-44}
#' \item{whitem_25_44}{\% of white male aged 25-44}
#' \item{poverty}{poverty rate}
#' \item{l_homicide}{Logged crime rate}
#' \item{l_larceny}{Logged crime rate}
#' \item{l_motor}{Logged crime rate}
#' \item{l_police}{Logged police presence}
#' \item{l_income}{Logged income}
#' \item{l_prisoner}{Logged number of prisoners}
#' \item{l_lagprisoner}{Lagged log prisoners}
#' \item{l_exp_subsidy}{Logged subsidy spending}
#' \item{l_exp_pubwelfare}{Logged public welfare spending}
#' \item{lead1,lead2,lead3,lead4,lead5,lead6,lead7,lead8,lead9,lag0,lag1,lag2,lag3,lag4,lag5}{Indicators of how many time periods until/since treatment}
#' \item{popwt}{Population weight}
#' \item{r20001,r20002,r20003,r20004,r20011,r20012,r20013,r20014,r20021,r20022,r20023,r20024,r20031,r20032,r20033,r20034,r20041,r20042,r20043,r20044,r20051,r20052,r20053,r20054,r20061,r20062,r20063,r20064,r20071,r20072,r20073,r20074,r20081,r20082,r20083,r20084,r20091,r20092,r20093,r20094,r20101,r20102,r20103,r20104}{Region-quarter fixed effects}
#' \item{trend_1,trend_10,trend_11,trend_12,trend_13,trend_14,trend_15,trend_16,trend_17,trend_18,trend_19,trend_2,trend_20,trend_21,trend_22,trend_23,trend_24,trend_25,trend_26,trend_27,trend_28,trend_29,trend_3,trend_30,trend_31,trend_32,trend_33,trend_34,trend_35,trend_36,trend_37,trend_38,trend_39,trend_4,trend_40,trend_41,trend_42,trend_43,trend_44,trend_45,trend_46,trend_47,trend_48,trend_49,trend_5,trend_50,trend_51,trend_6,trend_7,trend_8,trend_9}{State linear time trends}
#' }
#' @encoding UTF-8
#' @source Cheng, Cheng, and Mark Hoekstra. 2013. “Does Strengthening Self-Defense Law Deter Crime or Escalate Violence? Evidence from Expansions to Castle Doctrine.” Journal of Human Resources 48 (3): 821–54.
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"castle"

#' Data on prison capacity expansion in Texas
#'
#' This data looks at the massive expansion in prison capacity in Texas that occurred in 1993 under Governor Ann Richards, and the effect of that expansion on the number of Black men in prison.
#'
#' This data is used in the \emph{Synthetic Control} chapter of \emph{Causal Inference: The Mixtape} by Cunningham.
#'
#' @format A data frame with 816 rows and 12 variables
#' \describe{
#' \item{statefip}{State FIPS code}
#' \item{year}{Year}
#' \item{bmprison}{Number of Black men in prison}
#' \item{wmprison}{Number of White men in prison}
#' \item{alcohol}{Alcohol consumption per capita}
#' \item{income}{Median income}
#' \item{ur}{Unemployment rate}
#' \item{poverty}{Poverty rate}
#' \item{black}{Percentage of the population that is Black}
#' \item{perc1519}{Percentage of the population that is age 15-19}
#' \item{aidscapita}{AIDS mortality per 100,000 in t}
#' \item{state}{State name}
#' }
#' @encoding UTF-8
#' @source Cunningham and Kang. 2019. “Studying the Effect of Incarceration Shocks to Drug Markets.” Unpublished manuscript. \url{http://www.scunning.com/files/mass_incarceration_and_drug_abuse.pdf}
#' @references Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. \url{https://mixtape.scunning.com/index.html}.
"texas"

#' Data from John Snow's 1855 study of the cause of cholera
#'
#' A subset of the aggregated death rate data from Snow's legendary study of the source of the London Cholera outbreak.
#'
#' This data is used in the \emph{Difference-in-Differences} chapter of \emph{The Effect} by Huntington-Klein.
#'
#' @format A data frame with 4 rows and 4 variables
#' \describe{
#' \item{year}{Year}
#' \item{supplier}{Water pump supplier}
#' \item{treatment}{Status of water pump}
#' \item{deathrate}{Deaths per 10k 1851 population}
#' }
#' @encoding UTF-8
#' @source Snow, John. 1855. 'On the Mode of Communication of Cholera'. John Churchill."
#' @source Coleman, Thomas. 2019. 'Causality in the time of cholera: John Snow as a prototype for causal inference.' SSRN 3262234."
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
"snow"

#' Data on Taiwanese Credit Card Holders
#'
#' Data from the UCI Machine Learning Repository on Taiwanese credit card holders, the amount of their credit card bill, and whether their payment was late.
#'
#' This data is used in the \emph{Matching} chapter of \emph{The Effect} by Huntington-Klein.
#'
#' @format A data frame with 30000 rows and 4 variables
#' \describe{
#' \item{LateSept}{Credit card payment is late in Sept 2005}
#' \item{LateApril}{Credit card payment is late in April 2005}
#' \item{BillApril}{Total bill in April 2005 in thousands of New Taiwan Dollars}
#' \item{AGE}{Age of card-holder}
#' }
#' @encoding UTF-8
#' @source Lichman, Moshe. 2013. UCI Machine Learning Repository.
#' @references Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. \url{https://theeffectbook.net}.
"credit_cards"

#' Data from a fictional randomized heart transplant study
#'
#' \code{greek_data} is a fictional data set from Table 2.2 in Chapter 2 of Causal Inference. From the book: "Table 2.2 shows the data from our heart transplant randomized study. Besides data on treatment A (1 if the individual received a transplant, 0 otherwise) and outcome Y (1 if the individual died, 0 otherwise), Table 2.2 also contains data on the prognostic factor L (1 if the individual was in critical condition, 0 otherwise), which we measured before treatment was assigned."
#'
#' @format A data frame with 20 rows and 4 variables:
#' \describe{
#' \item{name}{The name of a Greek god}
#' \item{l}{A prognostic factor}
#' \item{a}{The treatment, a heart transplant}
#' \item{y}{The outcome, death}
#' }
#' @encoding UTF-8
#' @source Hernán and Robins. Causal Inference. \url{https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/}
"greek_data"

#' National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study
#'
#' \code{nhefs} is a cleaned data set of the data used in Causal Inference by Hernán and Robins. \code{nhefs} is dataset containing data from the National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study (NHEFS). The NHEFS was jointly initiated by the National Center for Health Statistics and the National Institute on Aging in collaboration with other agencies of the United States Public Health Service. A detailed description of the NHEFS, together with publicly available data sets and documentation, can be found at \url{https://wwwn.cdc.gov/nchs/nhanes/nhefs/}.
#'
#' @format A data frame with 1629 rows and 67 variables. The codebook is available as \code{nhefs_codebook}.
#' @source \url{https://wwwn.cdc.gov/nchs/nhanes/nhefs/}
#' @references Hernán and Robins. Causal Inference. \url{https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/}
"nhefs"

#' Complete-Data National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study
#'
#' \code{nhefs_complete} is the same as \code{nhefs}, but only participants with complete data are included. The variables that need to be complete to be included are: \code{qsmk}, \code{sex}, \code{race}, \code{age}, \code{school}, \code{smokeintensity}, \code{smokeyrs}, \code{exercise}, \code{active}, \code{wt71}, \code{wt82}, and \code{wt82_71}.
#'
#' @format A data frame with 1556 rows and 67 variables. The codebook is available as \code{nhefs_codebook}.
#' @source \url{https://wwwn.cdc.gov/nchs/nhanes/nhefs/}
#' @references Hernán and Robins. Causal Inference. \url{https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/}
"nhefs_complete"

#' NHEFS Codebook
#'
#' \code{nhefs_codebook} is the codebook for \code{nhefs} and \code{nhefs_complete}.
#'
#' @format A data frame with 64 rows and 2 variables.
#' \describe{
#' \item{variable}{The variable being described}
#' \item{description}{The variable description}
#' }
#' @encoding UTF-8
#' @source \url{https://wwwn.cdc.gov/nchs/nhanes/nhefs/}
#' @references Hernán and Robins. Causal Inference. \url{https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/}
"nhefs_codebook"

