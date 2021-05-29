*! causaldata v.0.1.2 causaldata package information screen. 28may2021 by Nick CH-K
prog def causaldata
	version 14.0
	syntax [anything], [use clear download wd erase]
	
	* Erase files from adopath
	if "`erase'" == "erase" {
		foreach f in "abortion.dta" "adult_services.dta" "avocado.dta" "black_politicians.dta" "castle.dta" "close_college.dta" "close_elections_lmb.dta" "cps_mixtape.dta" "credit_cards.dta" "gapminder.dta" "google_stock.dta" "gov_transfers.dta" "gov_transfers_density.dta" "greek_data.dta" "mortgages.dta" "Mroz.dta" "nhefs.dta" "nhefs_complete.dta" "nsw_mixtape.dta" "organ_donations.dta" "restaurant_inspections.dta" "ri.dta" "scorecard.dta" "snow.dta" "social_insure.dta" "texas.dta" "thornton_hiv.dta" "titanic.dta" "training_bias_reduction.dta" "training_example.dta" "yule.dta" {
			capture findfile `f'
			if _rc == 0 {
				local fname = r(fn)
				capture erase `fname'
			}
		}
		exit
	}
	
	* Search everything
	if "`anything'" == "*" {
		local anything = "abortion.dta adult_services.dta avocado.dta black_politicians.dta castle.dta close_college.dta close_elections_lmb.dta close_college.dta cps_mixtape.dta credit_cards.dta gapminder.dta google_stock.dta gov_transfers.dta gov_transfers_density.dta greek_data.dta mortgages.dta Mroz.dta nhefs.dta nhefs_complete.dta nsw_mixtape.dta organ_donations.dta restaurant_inspections.dta ri.dta scorecard.dta snow.dta social_insure.dta texas.dta thornton_hiv.dta titanic.dta training_bias_reduction.dta training_example.dta yule.dta"
	}
	
	* Option combinations
	if word("`anything'",2) != "" | "`anything'" == "" {
		if "`use'" == "use" {
			di as error "Option {opt use} only applicable if a single data set is listed."
			exit 198
		}
	}
	if "`use'" == "" & ("`clear'" == "clear" | "`download'" == "download") {
		di as error "Options {opt clear} and {opt download} are ignored if option {opt use} is not specified."
	}

	
	if "`anything'" == "" {
		di as text "List of available data sets from this package:"
		di as text "Click each name to do {cmd: causaldata [name]} for more information on one dataset, 
		di as text "{stata causaldata *} for more information on all of them,"
		di as text "or do {cmd: causaldata [name], use clear} to load."
		di ""
		di as text "{stata causaldata abortion.dta}: The Mixtape, Difference-in-Differences"
		di as text "{stata causaldata adult_services.dta}: The Mixtape, Panel Data"
		di as text "{stata causaldata avocado.dta}: The Effect, Identification"
		di as text "{stata causaldata black_politicians.dta}: The Effect, Matching"
		di as text "{stata causaldata castle.dta}: The Mixtape, Difference-in-Differences"
		di as text "{stata causaldata close_college.dta}: The Mixtape, Instrumental Variables"
		di as text "{stata causaldata close_elections_lmb.dta}: The Mixtape, Regression Discontinuity"
		di as text "{stata causaldata cps_mixtape.dta}: The Mixtape, Matching and Subclassification"
		di as text "{stata causaldata credit_cards.dta}: The Effect, Matching"
		di as text "{stata causaldata gapminder.dta}: The Effect, Fixed Effects"
		di as text "{stata causaldata google_stock.dta}: The Effect, Event Studies"
		di as text "{stata causaldata gov_transfers.dta}: The Effect, Regression Discontinuity"
		di as text "{stata causaldata gov_transfers_density.dta}: The Effect, Regression Discontinuity"
		di as text "{stata causaldata greek_data.dta}: What If, Chapter 2"
		di as text "{stata causaldata mortgages.dta}: The Effect, Regression Discontinuity"
		di as text "{stata causaldata Mroz.dta}: The Effect, Describing Relationships"
		di as text "{stata causaldata nhefs.dta}: What If"
		di as text "{stata causaldata nhefs_complete.dta}: What If"
		di as text "{stata causaldata nsw_mixtape.dta}: The Mixtape, Matching and Subclassification"
		di as text "{stata causaldata organ_donations.dta}: The Effect, Difference-in-Differences"
		di as text "{stata causaldata restaurant_inspections.dta}: The Effect, Regression"
		di as text "{stata causaldata ri.dta}: The Mixtape, Potential Outcomes Causal Model"
		di as text "{stata causaldata scorecard.dta}: The Effect, Describing Variables"
		di as text "{stata causaldata snow.dta}: The Effect, Difference-in-Differences"
		di as text "{stata causaldata social_insure.dta}: The Effect, Instrumental Variables"
		di as text "{stata causaldata texas.dta}: The Mixtape, Synthetic Control"
		di as text "{stata causaldata thornton_hiv.dta}: The Mixtape, Potential Outcomes Causal Model"
		di as text "{stata causaldata titanic.dta}: The Mixtape, Matching and Subclassification"
		di as text "{stata causaldata training_bias_reduction.dta}: The Mixtape, Matching and Subclassification"
		di as text "{stata causaldata training_example.dta}: The Mixtape, Matching and Subclassification"
		di as text "{stata causaldata yule.dta}: The Mixtape, Potential Outcomes Causal Model"
		exit
	}
	
	* If we're using, use!
	if "`use'" == "use" {
		usecausaldata `anything', `clear' `download' `wd' 
		exit
	}
	
	foreach d in `anything' {
		if inlist("`d'","abortion","abortion.dta") {
			di as error "{stata causaldata abortion.dta, use clear}"
			di as text "Source: Cunningham, Scott, and Christopher Cornwell. 2013. “The Long-Run Effect of Abortion on Sexually Transmitted Infections.” American Law and Economics Review 15 (1): 381–407."
			di ""
			di "Used in the Difference-in-Differences chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data looks at the effect of abortion legalization on the incidence of gonnorhea among 15-19 year olds, as a measure of risky behavior. Treatment is whether abortion is legalized at the time that the eventual 15-19 year olds are born."
		}
		else if inlist("`d'","adult_services","adult_services.dta") {
			di as error "{stata causaldata adult_services.dta, use clear}"
			di as text "Source: Cunningham, Scott, and Todd D. Kendall. 2011. “Prostitution 2.0: The Changing Face of Sex Work.” Journal of Urban Economics 69: 273–87."
			di as text "Source: Cunningham, Scott, and Todd D. Kendall. 2014. “Examining the Role of Client Reviews and Reputation Within Online Prostitution.” In, edited by Scott Cunningham and Manisha Shah. Vol. Handbook on the Economics of Prostitution. Oxford University Press."
			di as text "Source: Cunningham, Scott, and Todd D. Kendall. 2016. “Prostitution Labor Supply and Education.” Review of Economics of the Household. Forthcoming."
			di ""
			di "Used in the Panel Data chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data comes from a survey of 700 internet-mediated sex workers in 2008 and 2009, asking the same sex workers standard labor market information over several time periods."
		}
		else if inlist("`d'","avocado","avocado.dta") {
			di as error "{stata causaldata avocado.dta, use clear}"
			di as text "Source: Kiggins, Justin. 2018. https://www.kaggle.com/neuromusic/avocado-prices/"
			di ""
			di "Used in the Identification chapter in The Effect by Huntington-Klein"
			di ""
			di as text "This data set includes information on the average price and total amount of avocados sold across 169 weeks from 2015 to 2018. This data covers only sales of 'conventional' avocados that take place in California."
		}
		else if inlist("`d'","black_politicians","black_politicians.dta") {
			di as error "{stata causaldata black_politicians.dta, use clear}"
			di as text "Source: Broockman, D.E., 2013. Black politicians are more intrinsically motivated to advance blacks' interests: A field experiment manipulating political incentives. American Journal of Political Science, 57(3), pp.521-536."
			di ""
			di "Used in the Matching chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The black_politicians data contains data from Broockman (2013) on a field experiment where the author sent fictional emails purportedly sent by Black people to legislators in the United States. The experiment sought to determine whether the effect of the email being from 'out-of-district' (someone who can't vote for you and so provides no extrinsic motivation to reply) would have a smaller effect on response rates for Black legislators than for non-Black ones, providing evidence of additional intrinsic motivation on the part of Black legislators to help Black people."
		}
		else if inlist("`d'","castle","castle.dta") {
			di as error "{stata causaldata castle.dta, use clear}"
			di as text "Source: Cheng, Cheng, and Mark Hoekstra. 2013. “Does Strengthening Self-Defense Law Deter Crime or Escalate Violence? Evidence from Expansions to Castle Doctrine.” Journal of Human Resources 48 (3): 821–54."
			di ""
			di "Used in the Difference-in-Differences chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data looks at the impact of castle-doctrine statutes on violent crime. Data from the FBI Uniform Crime Reports Summary files are combined with information on castle-doctrine/stand-your-ground law impementation in different states."
		}
		else if inlist("`d'","close_elections_lmb","close_elections_lmb.dta") {
			di as error "{stata causaldata close_elections_lmb.dta, use clear}"
			di as text "Source: Lee, David S., Enrico Moretti, and Matthew J. Butler. 2004. “Do Voters Affect or Elect Policies: Evidence from the U.S. House.” Quarterly Journal of Economics 119 (3): 807–59."
			di ""
			di "Used in the Regression Discontinuity chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data comes from a close-elections regression discontinuity study from Lee, Moretti, and Butler (2004). The design is intended to test convergence and divergence in policy. Major effects of electing someone from a particular party on policy outcomes *in a close race* indicates that the victor does what they want. Small or null effects indicate that the electee moderates their position towards their nearly-split electorate."
		}
		else if inlist("`d'","close_college","close_college.dta") {
			di as error "{stata causaldata close_college.dta, use clear}"
			di as text "Source: Card, David. 1995. “Aspects of Labour Economics: Essays in Honour of John Vanderkamp.” In. University of Toronto Press."
			di ""
			di "Used in the Instrumental Variables chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "Data from the National Longitudinal Survey Young Men Cohort. This data is used to estimate the effect of college education on earnings, using the presence of a nearby (in-county) college as an instrument for college attendance."
		}
		else if inlist("`d'","cps_mixtape","cps_mixtape.dta") {
			di as error "{stata causaldata cps_mixtape.dta, use clear}"
			di as text "Source: Dehejia, Rajeev H., and Sadek Wahba. 1999. “Causal Effects in Nonexperimental Studies: Reevaluating the Evaluation of Training Programs.” Journal of the American Statistical Association 94 (448): 1053–62."
			di ""
			di "Used in the Matching and Subclassification chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "Data from the Current Population Survey on participation in the National Supported Work Demonstration (NSW) job-training program experiment. This is used as an observational comparison to the NSW experimental data from the nsw_mixtape data."
		}
		else if inlist("`d'","credit_cards","credit_cards.dta") {
			di as error "{stata causaldata credit_cards.dta, use clear}"
			di as text "Source: Lichman, Moshe. 2013. UCI Machine Learning Repository."
			di ""
			di "Used in the Matching chapter in The Effect by Huntington-Klein"
			di ""
			di as text "Data from the UCI Machine Learning Repository on Taiwanese credit card holders, the amount of their credit card bill, and whether their payment was late."
		}
		else if inlist("`d'","gapminder","gapminder.dta") {
			di as error "{stata causaldata gapminder.dta, use clear}"
			di as text "Source: http://www.gapminder.org/data/"
			di as text "Source: Jennifer Bryan (2017). gapminder: Data from Gapminder. R package version 0.3.0. https://CRAN.R-project.org/package=gapminder"
			di ""
			di "Used in the Fixed Effects chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The gapminder data contains data on life expectancy and GDP per capita by country and year. This data set is the same one found in the gapminder package in R as of 2020."
		}
		else if inlist("`d'","google_stock","google_stock.dta") {
			di as error "{stata causaldata google_stock.dta, use clear}"
			di as text "Source: Matt Dancho and Davis Vaughan (2021). tidyquant: Tidy Quantitative Financial Analysis. R package version 1.0.3. https://CRAN.R-project.org/package=tidyquant"
			di ""
			di "Used in the Event Studies chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The google_stock data, downloaded using the tidyquant R package, contains data on daily stock returns for Google and the S&P 500 for May through Augut 2015, centering around the August 10, 2015 announcement that Google would reorganize under parent company Alphabet."
		}
		else if inlist("`d'","gov_transfers","gov_transfers.dta") {
			di as error "{stata causaldata gov_transfers.dta, use clear}"
			di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
			di ""
			di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The gov_transfers data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. Data is pre-limited to households that were just around the income cutoff."
		}
		else if inlist("`d'","gov_transfers_density","gov_transfers_density.dta") {
			di as error "{stata causaldata gov_transfers_density.dta, use clear}"
			di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
			di ""
			di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The gov_transfers_density data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. As opposed to the gov_transfers data set, this data set only contains income information, but has a wider range of it, for use with density discontinuity tests."
		}
		else if inlist("`d'","greek_data","greek_data.dta") {
			di as error "{stata causaldata greek_data.dta, use clear}"
			di as text "Source: Hernán and Robins. Causal Inference. https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/"
			di ""
			di "Used in the Chapter 2 of Causal Inference by Hernán and Robins"
			di ""
			di as text "greek_data is a fictional data set from Table 2.2 in Chapter 2 of Causal Inference. From the book: 'Table 2.2 shows the data from our heart transplant randomized study. Besides data on treatment A (1 if the individual received a transplant, 0 otherwise) and outcome Y (1 if the individual died, 0 otherwise), Table 2.2 also contains data on the prognostic factor L (1 if the individual was in critical condition, 0 otherwise), which we measured before treatment was assigned.'"
		}
		else if inlist("`d'","mortgages","mortgages.dta") {
			di as error "{stata causaldata mortgages.dta, use clear}"
			di as text "Source: Fetter, D.K., 2013. How do mortgage subsidies affect home ownership? Evidence from the mid-century GI bills. American Economic Journal: Economic Policy, 5(2), pp.111-47."
			di ""
			di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The mortgages data contains data from Fetter (2015) on home ownership rates by men, focusing on whether they were born at the right time to be eligible for mortgage subsidies based on their military service."
		}
		else if inlist("`d'","Mroz","Mroz.dta") {
			di as error "{stata causaldata Mroz.dta, use clear}"
			di as text "Source: Mroz, T. A. (1987) The sensitivity of an empirical model of married women's hours of work to economic and statistical assumptions. *Econometrica* 55, 765–799."
			di as text "Source: John Fox, Sanford Weisberg and Brad Price (2020). carData: Companion to Applied Regression Data Sets. R package version 3.0-4. https://CRAN.R-project.org/package=carData"
			di ""
			di "Used in the Describing Relationships chapter in The Effect by Huntington-Klein"
			di ""
			di as text "Observations, from the Panel Study of Income Dynamics (PSID), are married women."
		}
		else if inlist("`d'","nhefs","nhefs.dta") {
			di as error "{stata causaldata nhefs.dta, use clear}"
			di as text "Source: wwwn.cdc.gov/nchs/nhanes/nhefs/"
			di ""
			di "Used in Causal Inference by Hernán and Robins"
			di ""
			di as text "nhefs is a cleaned data set of the data used in Causal Inference by Hernán and Robins. nhefs is dataset containing data from the National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study (NHEFS). The NHEFS was jointly initiated by the National Center for Health Statistics and the National Institute on Aging in collaboration with other agencies of the United States Public Health Service. A detailed description of the NHEFS, together with publicly available data sets and documentation, can be found at wwwn.cdc.gov/nchs/nhanes/nhefs/."
		}
		else if inlist("`d'","nhefs_complete","nhefs_complete.dta") {
			di as error "{stata causaldata nhefs_complete.dta, use clear}"
			di as text "Source: wwwn.cdc.gov/nchs/nhanes/nhefs/"
			di ""
			di "Used in Causal Inference by Hernán and Robins"
			di ""
			di as text "nhefs_complete is the same as nhefs, but only participants with complete data are included. The variables that need to be complete to be included are: qsmp, sex, race, age, school, smokeintensity, smokeyrs, exercise, active, wt71, wt82, wt82_71."
		}
		else if inlist("`d'","nsw_mixtape","nsw_mixtape.dta") {
			di as error "{stata causaldata nsw_mixtape.dta, use clear}"
			di as text "Source: Lalonde, Robert. 1986. “Evaluating the Econometric Evaluations of Training Programs with Experimental Data.” American Economic Review 76 (4): 604–20."
			di as text "Source: Dehejia, Rajeev H., and Sadek Wahba. 1999. “Causal Effects in Nonexperimental Studies: Reevaluating the Evaluation of Training Programs.” Journal of the American Statistical Association 94 (448): 1053–62."
			di ""
			di "Used in the Matching and Subclassification chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "Data from the National Supported Work Demonstration (NSW) job-training program experiment, where those treated were guaranteed a job for 9-18 months."
		}
		else if inlist("`d'","organ_donations","organ_donations.dta") {
			di as error "{stata causaldata organ_donations.dta, use clear}"
			di as text "Source: Kessler, J.B. and Roth, A.E., 2014. Don't take 'no' for an answer: An experiment with actual organ donor registrations. National Bureau of Economic Research working paper No. 20378. https://www.nber.org/papers/w20378"
			di ""
			di "Used in the Difference-in-differences chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The organ_donation data contains data from Kessler and Roth (2014) on organ donation rates by state and quarter. The state of California enacted an active-choice phrasing for their organ donation sign-up questoin in Q32011. The only states included in the data are California and those that can serve as valid controls; see Kessler and Roth (2014)."
		}
		else if inlist("`d'","restaurant_inspections","restaurant_inspections.dta") {
			di as error "{stata causaldata restaurant_inspections.dta, use clear}"
			di as text "Source: Camus, Louis-Ashley. 2020. https://www.kaggle.com/loulouashley/inspection-score-restaurant-inspection"
			di ""
			di "Used in the Regression chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The restaurant_inspections data contains data on restaurant health inspections performed in Anchorage, Alaska."
		}
		else if inlist("`d'","ri","ri.dta") {
			di as error "{stata causaldata ri.dta, use clear}"
			di as text "Source: Cunningham, Scott. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html."
			di ""
			di "Used in the Potential Outcomes Causal Model chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "A small simulated data set for the purpose of performing randomization inference to get a p-value."
		}
		else if inlist("`d'","scorecard","scorecard.dta") {
			di as error "{stata causaldata scorecard.dta, use clear}"
			di as text "Source: Education Data Portal (Version 0.4.0 - Beta), Urban Institute, Center on Education Data and Policy, accessed June 28, 2019. https://educationdata.urban.org/documentation/, Scorecard."
			di ""
			di "Used in the Describing Variables chapter in The Effect by Huntington-Klein"
			di ""
			di as text "From the College Scorecard, this data set contains by-college-by-year data on how students who attended those colleges are doing. This data is not just limited to four-year colleges and includes a very wide variety of institutions. Note that the labor market (earnings, working) and repayment rate data do not refer to the same cohort of students, but rather are matched on the year in which outcomes are recorded. Labor market data refers to cohorts beginning college as undergraduates ten years prior, repayment rate data refers to cohorts entering repayment seven years prior. Institution names have been dropped from this file to save space, but are available in the version of this data in the R package."
		}
		else if inlist("`d'","snow","snow.dta") {
			di as error "{stata causaldata snow.dta, use clear}"
			di as text "Source: Snow, John. 1855. 'On the Mode of Communication of Cholera'. John Churchill."
			di as text "Source: Coleman, Thomas. 2019. 'Causality in the time of cholera: John Snow as a prototype for causal inference.' SSRN 3262234."
			di ""
			di "Used in the Difference-in-Differences chapter in The Effect by Huntington-Klein"
			di ""
			di as text "A subset of the aggregated death rate data from Snow's legendary study of the source of the London Cholera outbreak."
		}
		else if inlist("`d'","social_insure","social_insure.dta") {
			di as error "{stata causaldata social_insure.dta, use clear}"
			di as text "Source: Cai, J., De Janvry, A. and Sadoulet, E., 2015. Social networks and the decision to insure. American Economic Journal: Applied Economics, 7(2), pp.81-108."
			di ""
			di "Used in the Instrumental Variables chapter in The Effect by Huntington-Klein"
			di ""
			di as text "The social_insure data contains data from Jai, De Janvry, and Saoudlet (2015) on a two-round social network-based experiment on getting farmers to get insurance. See the paper for more details."
		}
		else if inlist("`d'","thornton_hiv","thornton_hiv.dta") {
			di as error "{stata causaldata thornton_hiv.dta, use clear}"
			di as text "Source: Thornton, Rebecca L. 2008. “The Demand for, and Impact of, Learning Hiv Status.” American Economic Review 98 (5): 1829–63."
			di ""
			di "Used in the Potential Outcomes Causal Model chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data comes from an experiment in Malawi looking at whether cash incentives could encourage people to learn the results of their HIV tests."
		}
		else if inlist("`d'","texas","texas.dta") {
			di as error "{stata causaldata texas.dta, use clear}"
			di as text "Source: Cunningham and Kang. 2019. “Studying the Effect of Incarceration Shocks to Drug Markets.” Unpublished manuscript. http://www.scunning.com/files/mass_incarceration_and_drug_abuse.pdf"
			di ""
			di "Used in the Synthetic Control chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data looks at the massive expansion in prison capacity in Texas that occurred in 1993 under Governor Ann Richards, and the effect of that expansion on the number of Black men in prison."
		}
		else if inlist("`d'","titanic","titanic.dta") {
			di as error "{stata causaldata titanic.dta, use clear}"
			di as text "Source: British Board of Trade (1990), Report on the Loss of the ‘Titanic’ (S.S.). British Board of Trade Inquiry Report (reprint). Gloucester, UK: Allan Sutton Publishing."
			di ""
			di "Used in the Matching and Subclassification chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This data comes from the sinking of the Titanic, and can be used to look at survival by different demographic characteristics."
		}
		else if inlist("`d'","training_bias_reduction","training_bias_reduction.dta") {
			di as error "{stata causaldata training_bias_reduction.dta, use clear}"
			di as text "Source: Cunningham, Scott. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html."
			di ""
			di "Used in the Matching and Subclassification chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This simulated data is used to demonstrate the bias-reduction method in matching as per Abadie and Imbens (2011)."
		}
		else if inlist("`d'","training_example","training_example.dta") {
			di as error "{stata causaldata training_example.dta, use clear}"
			di as text "Source: Cunningham, Scott. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html."
			di ""
			di "Used in the Matching and Subclassification chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "This is a results table from a simulated matching exercise on the effect of a fictional job training program."
		}
		else if inlist("`d'","yule","yule.dta") {
			di as error "{stata causaldata yule.dta, use clear}"
			di as text "Source: Yule, G. Udny. 1899. 'An Investigation into the Causes of Changes in Pauperism in England, Chiefly During the Last Two Interensal Decades.' Journal of Royal Statistical Society 62: 249–95."
			di ""
			di "Used in the Potential Outcomes Causal Model chapter in Causal Inference: the Mixtape by Cunningham."
			di ""
			di as text "Data on poverty rates and poverty relief in England in the 19th century."
		}
		else {
			di as error "`d' is not a recognized data set in causaldata."
		}
		if word("`anything'", 2) != "" {
			di ""
			di "{hline}"
		}
	}
end
	
