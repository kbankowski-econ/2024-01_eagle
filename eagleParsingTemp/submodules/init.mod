@#define countries = [ "EAA", "EAB", "RW", "US" ]
@#define ctryNumber = 4
ctryNumberDouble = 4;
save("paramsToBeSaved", 'ctryNumberDouble')
@#define coGermany = countries[ctryNumber-2]
@#define coUSA = countries[ctryNumber]
@#define ea = "EA"

@#define countries2 = [ countries[2], countries[3], countries[4], countries[1] ]
@#define countries3 = [ countries[3], countries[4], countries[1], countries[2] ]
@#define countries4 = [ countries[4], countries[1], countries[2], countries[3] ]

@#define demandItems = [ "c", "i", "cg", "ig"]