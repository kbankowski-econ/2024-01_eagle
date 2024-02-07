// EQ with FIT to the DATA
// TOTAL

[estimate = 'fit', type = 'longrun', name = 'U2_MST', fit_name = 'U2_MTR', long_run_name = 'U2_MTR', sample = '1999Q1:2019Q4', blockname='trade']
U2_MST= exp(mst_c + log(U2_WER) + mst_param_1 *((log(U2_MTD)-0.094573*(log(U2_MED)-log(U2_EXR)))/(1-0.094573)-log(U2_YED)));

[estimate = '1', type = 'shortrun', name = 'U2_MTR', sample = '2000Q1:2019Q4', blockname='trade']   
 log(U2_MTR) =  log(U2_MTR(-1))  + U2_H_Q_YER / 100 + 0.001220*dummy_long_run
                    - 0.084203 *(log(U2_MTR(-1))-log(U2_MST(-1)))
                    + 1.693878 *(diff(log(U2_WER)) - U2_H_Q_YER / 100)
                    - 0.118700 * diff(log(U2_EENX))
                    + res_U2_MTR;

// INTRA

[estimate = 'fit', type = 'longrun', long_run_name = 'U2_MND', name = 'U2_PMNST',  fit_name = 'U2_MND', sample = '1996Q1:2019Q4', blockname='trade']
U2_PMNST = exp(pmnst_c*dummy_long_run + log(U2_MXD) + pmnst_param1*(log(U2_YED)-log(U2_MXD)));

[estimate = '1', type = 'shortrun', name = 'U2_MND', sample = '1996Q2:2019Q4', blockname='trade']
  diff(log(U2_MND)) = lmnd_c*dummy_long_run
                   + lmnd_ecm*(log(U2_MND(-1))-log(U2_PMNST(-1)))
                   + lmnd_lag1*(diff(log(U2_MND(-1))) - diff(log(U2_YED))*(1-dummy_long_run))
                   + lmnd_lcmd*(diff(log(U2_CMDEX))   - diff(log(U2_YED))*(1-dummy_long_run))
                   + lmnd_lmed*(diff(log(U2_MED(-1))) - diff(log(U2_YED))*(1-dummy_long_run))
                   + diff(log(U2_YED))*(1-dummy_long_run)
                   + res_U2_MND;

[type = 'longrun', name = 'U2_XNR', blockname='trade']
 log(U2_XNR) = xnr_c*dummy_long_run + log(U2_XNR(-1)) + (log(U2_MNR)-log(U2_MNR(-1)))
              + (1-dummy_long_run)*0.2*(log(U2_MNR(-1))-log(U2_XNR(-1)))
              + res_U2_XNR;

[type = 'longrun', name = 'U2_XNN', blockname='trade']
log(U2_XNN) = xnn_c*dummy_long_run + log(U2_XNN(-1)) + (log(U2_MNN)-log(U2_MNN(-1)))
              + (1-dummy_long_run)*0.2*(log(U2_MNN(-1))-log(U2_XNN(-1)))
              + res_U2_XNN;

// EXTRA
[estimate = 'fit', type = 'longrun', long_run_name = 'U2_XXR', name = 'U2_XXST', fit_name = 'U2_XXR', sample = '2000Q1:2019Q4', blockname='trade']
U2_XXST = exp(xxst_c + log(U2_WDREX)
                + xxst_param_1*(log(U2_XXD)-log(U2_CXDEX))
                + xxst_trend*TTREND);

[estimate = '1', type = 'shortrun', name = 'U2_XXR', sample = '2000Q1:2019Q4', blockname='trade']
 log(U2_XXR) = log(U2_XXR(-1)) + U2_H_Q_YER/100  + 0.000500*dummy_long_run
                   - 0.072033 *(log(U2_XXR(-1))-log(U2_XXST(-1)))
                   + 0.892159 * (diff(log(U2_WDREX))-  U2_H_Q_YER/100)
                   + 0.197255 *diff(log(U2_EENX))
                   + res_U2_XXR;

[estimate = 'fit', type = 'longrun', long_run_name =  'U2_XXD', name = 'U2_PXXST', fit_name = 'U2_XXD', sample = '1995Q1:2019Q4', blockname='trade'] 
U2_PXXST = exp(pxxst_c*dummy_long_run + log(U2_CXDEX)
                   + pxxst_param_1*(0.3107*log(U2_MXD)+(1-0.3107)*log(U2_YED)-log(U2_CXDEX)));

[estimate = '1', type = 'shortrun', name = 'U2_XXD', sample = '2000Q1:2019Q4', blockname='trade']     
  log(U2_XXD) =  log(U2_XXD(-1)) + xxd_c*dummy_long_run
                   + xxd_ecm*(log(U2_XXD(-1))-log(U2_PXXST(-1)))
                   + xxd_lcxd*(diff(log(U2_CXDEX)) - diff(log(U2_YED))*(1-dummy_long_run))
                   + xxd_lyed*diff(log(U2_YED))*dummy_long_run
                   + diff(log(U2_YED))*(1-dummy_long_run)
                   + xxd_lmxd*(diff(log(U2_MXD)) - diff(log(U2_YED))*(1-dummy_long_run))
                   + res_U2_XXD;

[estimate = 'fit', type = 'longrun', long_run_name = 'U2_MXR', name = 'U2_MXST', fit_name = 'U2_MXR', sample = '2000Q1:2019Q4', blockname='trade']    
U2_MXST = exp(mxst_c + log(U2_WER) + mxst_param_1*((log(U2_MXD)-0.1165*(log(U2_MED)+log(1/U2_EXR)))/(1-0.1165)-log(U2_YED)));

[estimate = '1', type = 'shortrun', name = 'U2_MXR', sample = '2000Q1:2019Q4', blockname='trade']  
 log(U2_MXR) =  log(U2_MXR(-1)) + U2_H_Q_YER / 100 + 0.003431*dummy_long_run
                    -0.070171*(log(U2_MXR(-1))-log(U2_MXST(-1)))
                    + 1.552084 *(diff(log(U2_WER)) - U2_H_Q_YER / 100) // or mxr_itr*2 ?
                    -0.103905 * diff(log(U2_EENX))
                    + res_U2_MXR;			   
  
[estimate = 'fit', type = 'longrun', long_run_name = 'U2_MXD', name = 'U2_PMXST', fit_name = 'U2_MXD', sample = '1996Q1:2019Q4', blockname='trade']
U2_PMXST = exp(pmxst_c*dummy_long_run + log(U2_CMDEX) + 0.1165*(log(U2_MED)+log(1/U2_EXR)-log(U2_CMDEX)) + 0.30*(log(U2_YED)-log(U2_CMDEX)));

[estimate = '1', type = 'shortrun', name = 'U2_MXD', sample = '2000Q1:2019Q4', blockname='trade']
log(U2_MXD) = log(U2_MXD(-1)) + U2_EHIC/400 + 0.09612*(diff(log(U2_MED))-diff(log(U2_EXR))-U2_EHIC/400)
                   - 0.04357*(log(U2_MXD(-1))-log(U2_PMXST(-1)))
                   + 0.31723*(diff(log(U2_CMDEX))-U2_EHIC/400)
                   + 0.03797*(diff(log(U2_MED(-1)))-diff(log(U2_EXR(-1)))-U2_EHIC(-1)/400)
                   + res_U2_MXD;

// OTHERS
[type = 'longrun', name = 'U2_WER', blockname='trade']
U2_WER = KAPPA_C*U2_HH_COR+KAPPA_PUR*U2_GO_PUR+KAPPA_CER*U2_GO_CER+KAPPA_GO_ITR*U2_GO_ITR+KAPPA_BUHH_ITR*U2_BUHH_ITR+KAPPA_X*U2_XTR;

[type = 'longrun', name = 'U2_WEREX', blockname='trade']
U2_WEREX = KAPPA_C*U2_HH_COR+KAPPA_PUR*U2_GO_PUR+KAPPA_CER*U2_GO_CER+KAPPA_GO_ITR*U2_GO_ITR+KAPPA_BUHH_ITR*U2_BUHH_ITR+KAPPA_X*U2_XXR;

[type = 'longrun', name = 'U2_CXDEX', blockname='trade']
log(U2_CXDEX)   = log(U2_CXEDEX) + log(U2_EENX);  

[type = 'longrun', name = 'U2_CMDEX', blockname='trade']   
U2_CMDEX   = exp(log(U2_CXEDEX) + log(U2_EENX));  

[type = 'longrun', name = 'U2_MED', blockname='trade']
U2_MED =  exp(0.8*(log(U2_POU)) + 0.2*(log(U2_PCU)));  

//IDENTITIES
[type = 'longrun', name = 'U2_MEED', blockname='trade']
U2_MEED = exp((log(U2_MTD) - 0.094573*(log(U2_MED)-log(U2_EXR)))/(1-0.094573));

[type = 'longrun', name = 'U2_XTR', blockname='trade']
U2_XTR = U2_XXR + U2_XNR;

[type = 'longrun', name = 'U2_MNR', blockname='trade']
U2_MNR = U2_MTR - U2_MXR;

[type = 'longrun', name = 'U2_XTN', blockname='trade']    // This equation is just reporting but makes it difficult to find reasonable steady-state
U2_XTN = U2_XXN + U2_XNN; 

[type = 'longrun', name = 'U2_MTN', blockname='trade']    // This equation is just reporting but makes it difficult to find reasonable steady-state
U2_MTN = U2_MNN + U2_MXN;

[type = 'longrun', name = 'U2_XXN', blockname='trade']
U2_XXN = U2_XXR*U2_XXD;

[type = 'longrun', name = 'U2_MXN', blockname='trade']
U2_MXN = U2_MXR*U2_MXD; 

[type = 'longrun', name = 'U2_MNN', blockname='trade']
U2_MNN = U2_MNR*U2_MND;

[type = 'longrun', name = 'U2_XTD', blockname='trade']
U2_XTD = (U2_XXR*U2_XXD+U2_XNR*U2_XND)/(U2_XXR+U2_XNR);

[type = 'longrun', name = 'U2_MTD', blockname='trade']
U2_MTD = (U2_MXR*U2_MXD+U2_MNR*U2_MND)/(U2_MXR+U2_MNR);

[type = 'longrun', name = 'U2_XND', blockname='trade']
U2_XND = U2_XNN/U2_XNR;
