@#define countries = [ "EAA", "EAB", "RW", "US" ]
@#define ea = "EA"
//
@#define asymmetric_trade_var = 0
// Is sigma equal to one for any country ?
//@#define sigma_equals_one = [ 0,0,0,0 ]
@#define sigma_equals_one = [ 1,1,1,1 ]

// Is omega equal to zero for any country ?
@#define omega_equals_zero = [ 0, 0, 0, 0 ]

//Is monetary policy regime im EAB peg to euro (1) or Taylor rule (0)? Attention peg is peg, not monetary union!
//@#define peg = 0

@#define countries2 = [ countries[2], countries[3], countries[4], countries[1] ]
@#define countries3 = [ countries[3], countries[4], countries[1], countries[2] ]
@#define countries4 = [ countries[4], countries[1], countries[2], countries[3] ]
