//Student's t regression model
//Coded by Alex Stead, m2i Research Fellow in Efficiency Analysis
//Institute for Transport Studies, University of Leeds
//Email: a.d.stead@leeds.ac.uk
//Version: 15/09/2017

//This programme enables the estimation of a regression model in which the errors
//follow a non-standard Student's t distribution with a scaling parameter.

program tregress, eclass
version 13.1
if !replay() {
syntax varlist(numeric fv ts) [if] [in] [, Level(cilevel) noCONstant *]
marksample touse
mlopts mlopts, `options'
gettoken yvar xvars : varlist
ml model d1 tregress_ll (mu:`yvar'=`xvars', `constant') /lnsigma /lndf if `touse', `mlopts' ///
title(Student's t regression model) diparm(lnsigma, exp label(sigma) prob) diparm(lndf, exp label(df) prob)
tempname b V ll N df_m
quietly regress `yvar' `xvars', `constant'
matrix b0 = e(b)
scalar `df_m'				=	e(df_m)+2
ml init b0
ml maximize
}
matrix `b'				=	e(b)
matrix `V'				=	e(V)
scalar `ll'				=	e(ll)
scalar `N'				=	e(N)
ereturn post `b' `V', esample(`touse')
ereturn scalar ll			=	`ll'
ereturn scalar N			=	`N'
ereturn scalar df_m			=	`df_m'
ereturn local predict 	"tregress_p"
ereturn local cmd		"tregress"
global ML_y1 `yvar'
end
