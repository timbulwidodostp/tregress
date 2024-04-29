{smcl}
{cmd:help tregress postestimation} {...}
{right:also see:  {help tregress}}
{hline}

{title:Title}

{p2colset 5 32 38 2}{...}
{p2col :{hi:tregress postestimation} {hline 2}}Postestimation tools for
tregress{p_end}
{p2colreset}{...}


{title:Description}

{pstd}
The following postestimation commands are available for {opt tregress}:

{synoptset 11}{...}
{p2coldent :command}description{p_end}
{synoptline}
{synopt :{helpb tregress postestimation##predict:predict}}predictions and
residuals{p_end}
INCLUDE help post_test
{synoptline}
{p2colreset}{...}


{marker predict}{...}
{title:Syntax for predict}

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 15 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt xb}}linear prediction; the default{p_end}
{synopt :{opt r:esiduals}}residuals{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
These statistics are only available for the estimation sample.

INCLUDE help menu_predict


{title:Options for predict}

{dlgtab:Main}

{phang}
{opt xb}, the default, calculates the linear prediction.

{phang}
{opt residuals} calculates the residuals. 

{title:Authors}

{pstd}Alexander Stead{p_end}
{pstd}Institute for Transport Studies, University of Leeds{p_end}
{pstd}Leeds, UK{p_end}
{pstd}a.d.stead@leeds.ac.uk{p_end}


{title:Also see}

{psee}
{space 2}Help:  {help tregress}
{p_end}
