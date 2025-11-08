%% Setup and Configuration
% Initialize project paths and environment settings
utils.call.paths;
envi = environment.setup();

%% Running all simulations in a loop
for aSimul = string(envi.shockDict.Properties.RowNames(1))'
    functions.runEAGLEsimul(aSimul, "skipSimulation", true);
end