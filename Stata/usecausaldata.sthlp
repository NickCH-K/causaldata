{smcl}
{* *! version 0.1.1  16may2021}{...}
{viewerjumpto "Syntax" "usecausaldata##syntax"}{...}
{viewerjumpto "Description" "usecausaldata##description"}{...}
{viewerjumpto "Author" "usecausaldata##author"}{...}
{viewerjumpto "References" "usecausaldata##references"}{...}
{title:causaldata}

{phang}
{bf:usecausaldata} {hline 2} Locates and opens data sets from the causaldata package


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmd:usecausaldata} dataset, [clear download wd]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt dataset}} Open which data set? See {cmd: causaldata} for a list of data sets and information about them.{p_end}
{synopt:{opt clear}} Clear the current data before opening the new one.{p_end}
{synopt:{opt download}} {cmd:usecausaldata} will attempt to find {opt dataset} in the adopath, and then in the working directory. If it can't find it, it will try to download it, and will prompt the user to confirm. If {opt download} is specified, the prompt will be skipped and any necessary data will be auto-downloaded.{p_end}
{synopt:{opt wd}} Leave all the downloaded data sets in the working directory rather than moving them to the adopath.{p_end}
{synoptline}
{p2colreset}{...}

{marker description}{...}
{title:Description}

{pstd}
{cmd:usecausaldata} locates data sets that can be downloaded and accessed with the {cmd:causaldata} package, and if it can't find them, downloads them for you and attempts to place them in the adopath.
{p_end}

{pstd}
Most of the time you won't be using {cmd:usecausaldata} directly, and will instead just use {cmd:causaldata} with the {opt use} option.
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


