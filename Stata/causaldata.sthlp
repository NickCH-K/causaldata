{smcl}
{* *! version 0.1.1  16may2021}{...}
{viewerjumpto "Syntax" "causaldata##syntax"}{...}
{viewerjumpto "Description" "causaldata##description"}{...}
{viewerjumpto "Author" "causaldata##author"}{...}
{viewerjumpto "References" "causaldata##references"}{...}
{viewerjumpto "Examples" "causaldata##examples"}{...}
{title:causaldata}

{phang}
{bf:causaldata} {hline 2} Provides information about data in the causaldata package and using files


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmd:causaldata} [dataset], [use clear download wd erase]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt dataset}} Provide information about which data sets? You can list multiple data sets, or * to list information about them all. Leave this blank to get a list of data set names and their chapter sources.{p_end}
{synopt:{opt use}} Load the listed data set. If {opt use} is specified, {opt dataset} must contain exactly one data set.{p_end}
{synopt:{opt clear}} If {opt use} is specified, clear the current data before opening the new one.{p_end}
{synopt:{opt download}} If {opt use} is specified, {cmd:causaldata} will attempt to find the data in the adopath, and then in the working directory. If it can't find it, it will try to download it, and will prompt the user to confirm. If {opt download} is specified, the prompt will be skipped and any necessary data will be auto-downloaded.{p_end}
{synopt:{opt wd}} Leave all the downloaded data sets in the working directory rather than moving them to the adopath.{p_end}
{synopt:{opt erase}} Erase all data sets associated with {cmd:causaldata} that are in the adopath. If {opt erase} is specified, all other parts of the {cmd: causaldata} command will be ignored.{p_end}
{synoptline}
{p2colreset}{...}

{marker description}{...}
{title:Description}

{pstd}
{cmd:causaldata} provides information about the data sets that can be downloaded and accessed with the {cmd:causaldata} package.
{p_end}

{pstd}
Currently, the list of data sets includes the data necessary to run example code in {it: The Effect} by Huntington-Klein, {it: Causal Inference: The Mixtape} by Scott Cunningham, and {it: Causal Inference: What If} by Hernán and Robins.
{p_end}

{pstd}
If you plan to uninstall the {cmd:causaldata} package, it is recommended that you first run {cmd: causaldata, erase} to remove any downloaded data sets from the adopath. 
{p_end}
 
{marker author}{...}
{title:Author}

Nick Huntington-Klein
nhuntington-klein@seattleu.edu


{marker references}{...}
{title:References}

{phang} Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. {browse "https://mixtape.scunning.com/index.html": Link}.{p_end}
{phang} Hernán and Robins. 2020. Causal Inference: What If. Chapman & Hall/CRC. {browse "https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/": Link}.{p_end}
{phang} Huntington-Klein. 2021. The Effect: An Introduction to Research Design and Causality. {browse "https://theeffectbook.net": Link}.{p_end}


{marker examples}{...}
{title:Examples}

{phang}{cmd:. * Get a list of all data sets}{p_end}
{phang}{cmd:. causaldata}{p_end}
{phang}{cmd:. * Get information about the mortgages data}{p_end}
{phang}{cmd:. causaldata mortgages}{p_end}
{phang}{cmd:. * Get information about all the data sets}{p_end}
{phang}{cmd:. causaldata *}{p_end}
{phang}{cmd:. * Download (if necessary) and open the mortgages data}{p_end}
{phang}{cmd:. causaldata mortgages, use clear}{p_end}
