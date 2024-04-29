program tregress_ll
		version 13.1
		args todo b lnf g
		tempvar mu lnsigma lndf fj
		mleval `mu'			= 	`b',		eq(1)
		mleval `lnsigma' 	= 	`b',		eq(2)		scalar
		mleval `lndf' 		= 	`b',		eq(3)		scalar
		quietly {
				gen double `fj'	=	1/exp(`lnsigma')*tden(exp(`lndf'),($ML_y1-`mu')/exp(`lnsigma'))
				mlsum `lnf' =	ln(`fj')
				}
if(`todo'==0 | `lnf'>=.) exit
		tempname d1 d2 d3
		mlvecsum `lnf' `d1' =	(exp(`lndf')+1)/(exp(`lndf'))*($ML_y1-`mu')/((exp(`lnsigma'))^2*(1+1/(exp(`lndf'))*(($ML_y1-`mu')/exp(`lnsigma'))^2)),	eq(1)
		mlvecsum `lnf' `d2' =	(exp(`lndf')+1)/(exp(`lndf'))*($ML_y1-`mu')^2/((exp(`lnsigma'))^3*(1+1/(exp(`lndf'))*(($ML_y1-`mu')/exp(`lnsigma'))^2))*exp(`lnsigma')-1, eq(2)
		mlvecsum `lnf' `d3' =	1/2*(digamma((exp(`lndf')+1)/2)-digamma((exp(`lndf'))/2)-1/(exp(`lndf'))-ln(1+1/(exp(`lndf'))*(( $ML_y1-`mu')/ exp(`lnsigma'))^2)+(exp(`lndf')+1)/(exp(`lndf'))^2*(( $ML_y1-`mu')/ exp(`lnsigma'))^2/(1+1/(exp(`lndf'))*(( $ML_y1-`mu')/ exp(`lnsigma'))^2))*exp(`lndf'), eq(3)
		matrix `g' = (`d1',`d2',`d3')
end
