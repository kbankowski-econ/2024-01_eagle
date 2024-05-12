@#define countries = [ "EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL","EAM", "RW", "US" ]
@#define ctryNumber = 15
ctryNumberDouble = 15;
save("paramsToBeSaved", 'ctryNumberDouble')
@#define coGermany = countries[ctryNumber-2]
@#define coUSA = countries[ctryNumber]
@#define ea = "EA"
//
@#define asymmetric_trade_var = 0
// Is sigma equal to one for any country ?
@#define sigma_equals_one = [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
// Is omega equal to zero for any country ?
@#define omega_equals_zero = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

@#define countries2 =   [ countries[2],     countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14],  countries[15],  countries[1]]
@#define countries3 =   [ countries[3],     countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14],  countries[15],  countries[1],   countries[2]]
@#define countries4 =   [ countries[4],     countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3]]
@#define countries5 =   [ countries[5],     countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4]]
@#define countries6 =   [ countries[6],     countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],   countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5]]
@#define countries7 =   [ countries[7],     countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],   countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6]]
@#define countries8 =   [ countries[8],     countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14],   countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7]]
@#define countries9 =   [ countries[9],     countries[10],  countries[11],  countries[12],  countries[13],  countries[14],  countries[15],   countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8]]
@#define countries10 =  [ countries[10],    countries[11],  countries[12],  countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9]]
@#define countries11 =  [ countries[11],    countries[12],  countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10]]
@#define countries12 =  [ countries[12],    countries[13],  countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11]]
@#define countries13 =  [ countries[13],    countries[14],  countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12]]
@#define countries14 =  [ countries[14],    countries[15],  countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13]]
@#define countries15 =  [ countries[15],    countries[1],   countries[2],   countries[3],   countries[4],   countries[5],   countries[6],   countries[7],   countries[8],   countries[9],   countries[10],  countries[11],  countries[12],  countries[13],  countries[14]]
 


@#define demandItems = [ "c", "i", "cg", "ig"]