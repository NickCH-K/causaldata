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
	else if inlist("`d'","gov_transfers","gov_transfers.dta") {
		di as error "gov_transfers.dta"
		di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
		di ""
		di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The gov_transfers data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. Data is pre-limited to households that were just around the income cutoff."
	else if inlist("`d'","gov_transfers_density","gov_transfers_density.dta") {
		di as error "gov_transfers_density.dta"
		di as text "Source: Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28."
		di ""
		di "Used in the Regression Discontinuity chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The gov_transfers_density data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. As opposed to the gov_transfers data set, this data set only contains income information, but has a wider range of it, for use with density discontinuity tests."
	else {
		di as error "Unrecognized data set entered for d."
		exit 198
	}
end
	
