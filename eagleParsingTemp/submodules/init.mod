@#define countries = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
@#define ctryNumber = 7
ctryNumberDouble = 7;
save("paramsToBeSaved", 'ctryNumberDouble')
@#define coGermany = countries[ctryNumber-2]
@#define coUSA = countries[ctryNumber]
@#define ea = "EA"
//
@#define asymmetric_trade_var = 0
// Is sigma equal to one for any country ?
@#define sigma_equals_one = [ 1, 1, 1, 1, 1, 1, 1]
// Is omega equal to zero for any country ?
@#define omega_equals_zero = [ 0, 0, 0, 0, 0, 0, 0]

@#define countries2 = [ countries[2], countries[3], countries[4], countries[5], countries[6] , countries[7] , countries[1] ]
@#define countries3 = [ countries[3], countries[4], countries[5], countries[6], countries[7] , countries[1] , countries[2] ]
@#define countries4 = [ countries[4], countries[5], countries[6], countries[7], countries[1] , countries[2] , countries[3] ]
@#define countries5 = [ countries[5], countries[6], countries[7], countries[1], countries[2] , countries[3] , countries[4] ]
@#define countries6 = [ countries[6], countries[7], countries[1], countries[2], countries[3] , countries[4] , countries[5] ]
@#define countries7 = [ countries[7], countries[1], countries[2], countries[3], countries[4] , countries[5] , countries[6] ]

@#define demandItems = [ "c", "i", "cg", "ig"]