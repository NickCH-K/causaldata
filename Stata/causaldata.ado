*! causaldata v.0.1.0 causaldata package information screen. 27apr2021 by Nick CH-K

prog def causaldata
	version 12
	syntax, [d(string)]
	
	if "`d'" == "" {
		di as text "List of available data sets from this package:"
		di as text "Do {cmd: causaldata, d(name)} for more information, or {cmd: sysuse [name]} to load."
		di ""
		di as text "black_politicians.dta"
		di as text "gapminder.dta"
		di as text "google_stock.dta"
		di as text "gov_transfers.dta"
		di as text "gov_transfers_density.dta"
		di as text "mortgages.dta"
		di as text "Mroz.dta"
		di as text "organ_donations.dta"
		di as text "restaurant_inspections.dta"
		di as text "social_insure.dta"
	}
	else if inlist("`d'","black_politicians","black_politicians.dta") {
		di as error "black_politicians.dta"
		di as text "Source: Broockman, D.E., 2013. Black politicians are more intrinsically motivated to advance blacks' interests: A field experiment manipulating political incentives. American Journal of Political Science, 57(3), pp.521-536."
		di ""
		di "Used in the Matching chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The black_politicians data contains data from Broockman (2013) on a field experiment where the author sent fictional emails purportedly sent by Black people to legislators in the United States. The experiment sought to determine whether the effect of the email being from 'out-of-district' (someone who can't vote for you and so provides no extrinsic motivation to reply) would have a smaller effect on response rates for Black legislators than for non-Black ones, providing evidence of additional intrinsic motivation on the part of Black legislators to help Black people."
	}
	else if inlist("`d'","gapminder","gapminder.dta") {
		di as error "gapminder.dta"
		di as text "Source: http://www.gapminder.org/data/"
		di as text "Source: Jennifer Bryan (2017). gapminder: Data from Gapminder. R package version 0.3.0. https://CRAN.R-project.org/package=gapminder"
		di ""
		di "Used in the Fixed Effects chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The gapminder data contains data on life expectancy and GDP per capita by country and year. This data set is the same one found in the gapminder package in R as of 2020."
	}
	else if inlist("`d'","google_stock","google_stock.dta") {
		di as error "google_stock.dta"
		di as text "Source: Matt Dancho and Davis Vaughan (2021). tidyquant: Tidy Quantitative Financial Analysis. R package version 1.0.3. https://CRAN.R-project.org/package=tidyquant"
		di ""
		di "Used in the Event Studies chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The google_stock data, downloaded using the tidyquant R package, contains data on daily stock returns for Google and the S&P 500 for May through Augut 2015, centering around the August 10, 2015 announcement that Google would reorganize under parent company Alphabet."
	}
	else if inlist("`d'","gov_transfers","gov_transfers.dta") {
		di as error "gov_transfers.dta"
		di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
		di ""
		di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The gov_transfers data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. Data is pre-limited to households that were just around the income cutoff."
	}
	else if inlist("`d'","gov_transfers_density","gov_transfers_density.dta") {
		di as error "gov_transfers_density.dta"
		di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
		di ""
		di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The gov_transfers_density data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. As opposed to the gov_transfers data set, this data set only contains income information, but has a wider range of it, for use with density discontinuity tests."
	}
	else if inlist("`d'","mortgages","mortgages.dta") {
		di as error "mortgages.dta"
		di as text "Source: Fetter, D.K., 2013. How do mortgage subsidies affect home ownership? Evidence from the mid-century GI bills. American Economic Journal: Economic Policy, 5(2), pp.111-47."
		di ""
		di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The mortgages data contains data from Fetter (2015) on home ownership rates by men, focusing on whether they were born at the right time to be eligible for mortgage subsidies based on their military service."
	}
	else if inlist("`d'","Mroz","Mroz.dta") {
		di as error "Mroz.dta"
		di as text "Source: Mroz, T. A. (1987) The sensitivity of an empirical model of married women's hours of work to economic and statistical assumptions. *Econometrica* 55, 765–799."
		di as text "Source: John Fox, Sanford Weisberg and Brad Price (2020). carData: Companion to Applied Regression Data Sets. R package version 3.0-4. https://CRAN.R-project.org/package=carData"
		di ""
		di "Used in the Describing Relationships chapter in The Effect by Huntington-Klein"
		di ""
		di as text "Observations, from the Panel Study of Income Dynamics (PSID), are married women."
	}
	else if inlist("`d'","organ_donations","organ_donations.dta") {
		di as error "organ_donations.dta"
		di as text "Source: Kessler, J.B. and Roth, A.E., 2014. Don't take 'no' for an answer: An experiment with actual organ donor registrations. National Bureau of Economic Research working paper No. 20378. https://www.nber.org/papers/w20378"
		di ""
		di "Used in the Difference-in-differences chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The organ_donation data contains data from Kessler and Roth (2014) on organ donation rates by state and quarter. The state of California enacted an active-choice phrasing for their organ donation sign-up questoin in Q32011. The only states included in the data are California and those that can serve as valid controls; see Kessler and Roth (2014)."
	}
	else if inlist("`d'","restaurant_inspections","restaurant_inspections.dta") {
		di as error "restaurant_inspections.dta"
		di as text "Source: Camus, Louis-Ashley. 2020. https://www.kaggle.com/loulouashley/inspection-score-restaurant-inspection"
		di ""
		di "Used in the Regression chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The restaurant_inspections data contains data on restaurant health inspections performed in Anchorage, Alaska."
	}
	else if inlist("`d'","social_insure","social_insure.dta") {
		di as error "social_insure.dta"
		di as text "Source: Cai, J., De Janvry, A. and Sadoulet, E., 2015. Social networks and the decision to insure. American Economic Journal: Applied Economics, 7(2), pp.81-108."
		di ""
		di "Used in the Instrumental Variables chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The social_insure data contains data from Jai, De Janvry, and Saoudlet (2015) on a two-round social network-based experiment on getting farmers to get insurance. See the paper for more details."
	}
	else {
		di as error "Unrecognized data set entered for d."
		exit 198
	}
end
	
