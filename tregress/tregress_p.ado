program tregress_p
		version 13.1
		syntax newvarname [in] [if], [XB Residuals]
		local nopts : word count `residuals' `xb'
		marksample touse, novarlist
				if `nopts'				>	1{
		display "{err}only one statistic may be specified"
		exit 498
		}
		tempname b xb_
		matrix `b'		=	e(b)
		matrix score `xb_'	=	`b'
		if `nopts'				==	0{
		gen `typlist' `varlist'	=	`xb_'							if `touse'
		}
		if "`residuals'"		!=	""{
		gen `typlist' `varlist'	=	$ML_y1-`xb_'						if `touse'
		}
		if "`xb'"		!=	""{
		gen `typlist' `varlist' =	`xb_'							if `touse'
		}
end
