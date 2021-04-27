*! causaldata v.0.1.0 causaldata package information screen. 27apr2021 by Nick CH-K

prog def causaldata
	version 12
	syntax, [d(string)]
	
	if "`d'" == "" {
		di as text "List of available data sets from this package:"
		di as text "Do {cmd: causaldata, d(name)} for more information, or {sysuse [name]} to load."
		di ""
		di as text "black_politicians.dta"
	}
	else if inlist("`d'","black_politicians","black_politicians.dta") {
		di as error "black_politicians.dta"
		di as text "Source: Broockman, D.E., 2013. Black politicians are more intrinsically motivated to advance blacks' interests: A field experiment manipulating political incentives. American Journal of Political Science, 57(3), pp.521-536."
		di ""
		di "Used in the Matching chapter in The Effect by Huntington-Klein"
		di ""
		di as text "The black_politicians data contains data from Broockman (2013) on a field experiment where the author sent fictional emails purportedly sent by Black people to legislators in the United States. The experiment sought to determine whether the effect of the email being from 'out-of-district' (someone who can't vote for you and so provides no extrinsic motivation to reply) would have a smaller effect on response rates for Black legislators than for non-Black ones, providing evidence of additional intrinsic motivation on the part of Black legislators to help Black people."
	}
	else {
		di as error "Unrecognized data set entered for d."
		exit 198
	}
end
	
