clear all; close all; clc;
utils.call.paths;
cd(fullfile(project_path, 'Fiscal_ext','modFiles'));

% calculating the steady state
if false
    dynare steady1_EAGLE_Fiscal.mod
    dynare steady2_EAGLE_Fiscal.mod
end

% shock simulation: gc
dynare EAB_EAGLE_Fiscal_epsgc.mod

% shock simulation: gi
dynare EAB_EAGLE_Fiscal_epsgi.mod

%%
dynare('shock_ea_monpol_exp.mod', sprintf('-I%s/%s/submodules', project_path, 'Fiscal_ext'), 'savemacro', 'json=compute');