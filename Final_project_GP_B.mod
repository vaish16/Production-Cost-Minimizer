var X1B >= 0;
var X2B >= 0;
var X3B >= 0;
var X4B >= 0;
var X5B >= 0;
var X6B >= 0;
var X7B >= 0;
var X8B >= 0;
var s1_plus >= 0;
var s1_minus >= 0;
var s2_plus >= 0;
var s2_minus >= 0;
var s3_plus >= 0;
var s3_minus >= 0;


minimize z:  s1_minus;	 	

#constraints for demand of X inch parts

subject to G1: ( 0 *X1B + 0 *X2B + 0 *X3B + 0 *X4B + 0 *X5B + 1 *X6B + 1 *X7B + 1 *X8B ) - s1_plus + s1_minus = 2 * 5000;
subject to G2: ( 0 *X1B + 2 *X2B + 0 *X3B + 1 *X4B + 0 *X5B + 0 *X6B + 2 *X7B + 2 *X8B ) - s2_plus + s2_minus = 4 * 5000;
subject to G3: 0.02 * (18*X1B + 15*X2B + 0*X3B + 2*X4B + 15*X5B + 3*X6B + 4*X7B + 14*X8B) - s3_plus + s3_minus = 5692.9;

subject to C55: ( 0 *X1B + 0 *X2B + 3 *X3B + 3 *X4B + 0 *X5B + 2 *X6B + 2 *X7B + 1 *X8B ) >= 4 * 5000; 
subject to C50: ( 0 *X1B + 1 *X2B + 0 *X3B + 0 *X4B + 3 *X5B + 1 *X6B + 0 *X7B + 0 *X8B ) >= 2 * 5000; 
subject to C49: ( 4 *X1B + 1 *X2B + 1 *X3B + 0 *X4B + 1 *X5B + 0 *X6B + 0 *X7B + 0 *X8B ) >= 8 * 5000; 
subject to C22: ( 0 *X1B + 0 *X2B + 0 *X3B + 1 *X4B + 0 *X5B + 0 *X6B + 0 *X7B + 2 *X8B ) >= 2 * 5000;


/*CPLEX 20.1.0.0: optimal solution; objective 0
1 dual simplex iterations (0 in phase I)
display X1B,X2B,X3B,X4B,X5B,X6B,X7B,X8B,s1_plus,s1_minus,s2_plus,s2_minus,s3_plus,s3_minus;
#X1B = 0
#X2B = 17643
#X3B = 22357
#X4B = 10000
#X5B = 0
#X6B = 0
#X7B = 0
#X8B = 0
#s1_plus = 0
#s1_minus = 0
#s2_plus = 0
#s2_minus = 10000
#s3_plus = 25286
#s3_minus = 0 */
