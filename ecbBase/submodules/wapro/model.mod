/*
Beware of exo_path_list characteristics for all newly created variables
*/

// Tags to be checked

[name = 'U2_A4_YED', blockname='wapro']
U2_A4_YED = 100*(U2_YED/U2_YED(-4)-1);

[name='U2_G_A_YED', blockname='wapro'] // Annual inflation
U2_G_A_YED = U2_A_YED - U2_A_YED_TAR;

[name='U2_A_YED_TAR', blockname='wapro']
U2_A_YED_TAR    =  0.9596*U2_A_YED_TAR(-1) + (1-0.9596)*U2_A_YED_TAR_SS;

[name = 'U2_A_YED', blockname='wapro']
U2_A_YED = 0.311362 * U2_A_YED(-1)  
           + 0.506136 * (U2_E_A_YED_1)
           + 0.182502 * U2_EHIC
           + 0.09757 * U2_G_C_CER 
           + 0.041816 * U2_G_YER 
           + 0.6 * diff(U2_GO_R_TIN_NET) * 400
           + 0.6 * (-0.311362) * diff(U2_GO_R_TIN_NET(-1)) * 400
           + res_U2_A_YED;

// Tax rate change has to enter mutiplied by 4 because the deflator is annualised
// The persistence coming next period is neutralised so that mechanically the entire effect
// on prices takes place during one period (no persistance; 
// see explanation here: docu/WPfiscal/investigations/taxConsumption_ARadjustment.xlsx)
// The pass through is 0.6 as explained in the paper

[name='U2_E_G_A_YED', blockname='wapro']
U2_E_G_A_YED = U2_E_A_YED_1 - U2_A_YED_TAR;

[name='U2_E_A_YED_1', blockname='wapro']
U2_E_A_YED_1 = 0.1564938673812253*U2_A_YED 
              +0.1334458854623972*U2_G_YER 
              -0.0117218285745433*U2_STN_R 
              +0.3461724099496407*U2_ESTN 
              +0.5277900324573784*U2_EHIC 
              +0.3157161001613962*U2_A_YED(-1) 
              +0.02095769577295687*U2_G_YER(-1) 
              -0.3344505813750971*U2_STN_R(-1);

[name='U2_YED', blockname='wapro']
log(U2_YED) = log(U2_YED(-1)) + log((1+U2_A_YED/100)^(1/4)); 
// Moreover here A_YED is defined as an exact growth rate, which is not consistent with the rest of the model 
// -> Actually it is okay, it enables no numerical adjustment in the price curve

[type = 'longrun', name = 'U2_EHIC', blockname='wapro']
U2_EHIC= 0.75*U2_EHIC(-1)+0.1*(U2_A_YED(-1))+0.15*(U2_A_YED_TAR(-1))+ res_U2_EHIC;
