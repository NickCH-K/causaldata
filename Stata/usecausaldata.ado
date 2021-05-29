*! causaldata v.0.1.2 causaldata package information screen. 28may2021 by Nick CH-K
prog def usecausaldata
	version 14.0
	syntax anything, [clear download wd]
	
	local f = "`anything'"
	if word("`f'",2) != "" {
		di as error "Attempted to open more than one data set."
		exit 198
	}
	if strpos("`f'",".dta") == 0 {
		local f = "`f'.dta"
	}
	
	* First, attempt to open from adopath
	capture findfile "`f'"
	if _rc == 0 {
		local d = r(fn)
		use `d', `clear'
		exit
	}
	* Next, try to open from working directory
	capture findfile "`f'", path(".")
	if _rc == 0 {
		local d = r(fn)
		use `d', `clear'
		exit
	}
	
	* If we don't, we'll be downloading. Prompt!
	if "`download'" == "" {
		di as error "`f' not found. {cmd: causaldata} will now download the {cmd: causaldata} data sets."
		if "`wd'" == "" {
			di as error "They will then be moved to your adopath."
		}
		else {
			di as error "They will be stored in your working directory."
		}
		di as error "This will use approximately 13.5MB of disk space."
		di as error "Press Y or Yes to continue, or anything else to quit."
		display _request(start)
		
		local st = lower("$start")
		
		if !inlist("`st'","y","yes") {
			di as text "Exiting..."
			exit
		}
	}
	
	* Download and move!
	quietly findfile causaldata.ado
	local cfile = r(fn)
	local cfile = subinstr("`cfile'","c/causaldata.ado","",.)
	local wdir = "`c(pwd)'"
	quietly ssc describe causaldata
	net get causaldata, replace
	quietly cd "`wdir'"
	quietly unzipfile causaldata.zip, replace
	
	if "`wd'" == "" {
		foreach fl in "abortion.dta" "adult_services.dta" "avocado.dta" "black_politicians.dta" "castle.dta" "close_college.dta" "close_elections_lmb.dta" "cps_mixtape.dta" "credit_cards.dta" "gapminder.dta" "google_stock.dta" "gov_transfers.dta" "gov_transfers_density.dta" "greek_data.dta" "mortgages.dta" "Mroz.dta" "nhefs.dta" "nhefs_complete.dta" "nsw_mixtape.dta" "organ_donations.dta" "restaurant_inspections.dta" "ri.dta" "scorecard.dta" "snow.dta" "social_insure.dta" "texas.dta" "thornton_hiv.dta" "titanic.dta" "training_bias_reduction.dta" "training_example.dta" "yule.dta" {
			local firstchar = substr("`fl'",1,1)
			local dest = "`cfile'`firstchar'/`fl'"
			di "`dest'"
			capture mkdir "`cfile'`firstchar'"
			capture copy `fl' `dest', replace
			
			if _rc == 0 {
				capture erase `fl'
			} 
			else {
				display as error "Failed to move `fl' to ado folder. It has been left in the working directory."
			}
		}
	}

	local filelist: dir "__MACOSX" files "*"
	foreach fl in `filelist' {
		capture erase "__MACOSX/`fl'"
	}
	capture rmdir __MACOSX
	capture erase causaldata.zip
	capture erase dataprep.do
	
	* First, attempt to open from adopath
	capture findfile "`f'"
	if _rc == 0 {
		local d = r(fn)
		use `d', `clear'
		exit
	}		
	* Next, try to open from working directory
	capture findfile "`f'", path(".")
	if _rc == 0 {
		local d = r(fn)
		use `d', `clear'
		exit
	}
	
	di as error "Could not find file. Try downloading directly with {cmd: net get causaldata}"
end
