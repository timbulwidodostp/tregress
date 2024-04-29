{smcl}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "tregress##syntax"}{...}
{viewerjumpto "Description" "tregress##description"}{...}
{viewerjumpto "Options" "tregress##options"}{...}
{viewerjumpto "Remarks" "tregress##remarks"}{...}
{viewerjumpto "Examples" "tregress##examples"}{...}
{title:Title}

{phang}
{bf:tregress} {hline 2} Student's t regression model

{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:tregress}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Model}
{synopt:{opt nocons:tant}}suppress constant term{p_end}

{syntab:Reporting}
{synopt :{opt l:evel(#)}}set confidence level; default is
{cmd:level(95)}{p_end}

{title:Description}

{pstd}
{cmd:tregress} estimates a regression model in which the
errors follow a non-standard Student's t distribution 
with a scaling parameter.

{title:Options}

{dlgtab:Model}

{phang}
{opt noconstant}; see
{helpb estimation options##noconstant:[R] estimation options}.

{dlgtab:Reporting}

{phang}
{opt level(#)}; see
{helpb estimation options##level():[R] estimation options}.

{title:Saved results}

{pstd}
{cmd:tregress} saves the following in {cmd:e()}:

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: Scalars}{p_end}
{synopt:{cmd:e(N)}}number of observations{p_end}
{synopt:{cmd:e(df_m)}}model degrees of freedom{p_end}
{synopt:{cmd:e(ll)}}log-likelihood{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: Matrices}{p_end}
{synopt:{cmd:e(b)}}coefficient vector{p_end}
{synopt:{cmd:e(V)}}variance-covariance matrix of the estimators{p_end}


{title:Authors}

{pstd}Alexander Stead{p_end}
{pstd}Institute for Transport Studies, University of Leeds{p_end}
{pstd}Leeds, UK{p_end}
{pstd}a.d.stead@leeds.ac.uk{p_end}

{title:Also see}

{psee}
{space 2}Help:  {help tregress_postestimation}
{p_end}
