#!perl -T

#################################################################################################################################################################
#
#	RANDOM TESTS for PARAMS::CLEAN
#
#################################################################################################################################################################

	use strict; use warnings;
	use lib "t"; use try;
	use Params::Clean;

#—————————————————————————————————————————————————————————————————————————————————————————————
{
	no warnings; no strict;
	
	sub flub 
	{   
		#		my ( $a, $b, $c,     $d, $e, $f,       $g,     $h,         $i,    $j,       $k,  $l,         $m,   $n  ) =
		return args(  1,  5,-13, POSN 2,  0,  3,  FLAG tigers, lions, NAME brown, how, FLAG boo, bears, NAME less, more);
	}
	#NOTE: $n=less is already used (as a key for $m... should it get grabbed or not??)
	
	is_deeply
		    # 0  1  2  3  4      5  6  7  8    9    10      11     12     13   14  15    16    17    18    19
		[flub(A, B, C, D, lions, E, F, G, how=>now, tigers, bears, brown=>cow, oh=>my => MORE=>less, More=>lions)],
	        #-20 19 18 17 16     15 14 13 12   11   10      9      8      7    6   5     4     3     2     1     
		[B,E,G, C,A,D,  1, 2,  cow, now,  undef, 1,  More, less];
}

	#—————————————————————————————————————————————————————————————————————————————————————



#—————————————————————————————————————————————————————————————————————————————————————————————

# try "",
# 	(call ),
# 	(get ),
# 	(expect qw//);

#—————————————————————————————————————————————————————————————————————————————————————————————
