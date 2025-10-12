function irfStructure = calculateIRFsForCountries(monetarySimOutput, monetarySimStruct)
% CALCULATEIRFSFORCOUNTRIES Calculate impulse response functions for all countries
%
% Syntax:
%   irfStructure = calculateIRFsForCountries(monetarySimOutput, monetarySimStruct)
%
% Inputs:
%   monetarySimOutput - Dynare model output structure containing model metadata
%   monetarySimStruct - Structure containing endogenous values and steady-state values
%                      from monetary simulation
%
% Outputs:
%   irfStructure - Structure containing transformed IRF data for all countries
%                 and variables, organized by transformation type
%
% Description:
%   This function processes IRF data for all countries by applying various
%   transformations defined in the variable dictionary. It filters variables
%   by country prefixes and applies transformations like log differences,
%   percentage deviations, etc.

    % Load environment settings and metadata
    envi = environment.setup();

    % Create regex pattern to match country codes (including EA for Euro Area)
    % Pattern matches variables starting with any country code from ctryList
    prefixPattern = strcat("^(", strjoin([envi.Meta.ctryList, "EA"], '|'), ")");

    % Retrieve list of endogenous variables from Dynare model
    modelVarLists = dynareFunc.retrieveModelVarList(monetarySimOutput.M_);

    % Get unique transformation types from variable dictionary
    transfList = reshape(unique(envi.varDict.diffTransf), 1, []);

    % Initialize output structure
    irfStructure = struct();

    % Process each transformation type
    for aTransf = transfList
        aVarSubList = {};
        
        % Filter variable dictionary for current transformation type
        tempVarTable = envi.varDict(strcmp(envi.varDict{:, "diffTransf"}, aTransf), :);
        
        % Build list of model variables that need this transformation
        for aVarIndex = 1:length(tempVarTable.Properties.RowNames)
            aVar = tempVarTable.Properties.RowNames{aVarIndex};
            
            % Find all country-specific versions of this variable in the model
            % Uses regex to match: COUNTRY_VARIABLE pattern
            matchingVars = modelVarLists.endo(~cellfun('isempty', ...
                regexp(modelVarLists.endo, prefixPattern + '_' + aVar + '$')));
            aVarSubList = [aVarSubList; matchingVars];
        end
        
        % Create function handle for current transformation
        transfFunc = str2func(['@(x,y) ' char(aTransf)]);
        
        % Apply transformation to selected variables
        % dbfun applies function to endogenous values relative to steady state
        tempDatabank = dbfun( ...
            transfFunc, ...
            monetarySimStruct.endoValues, ...
            monetarySimStruct.ssValues, ...
            'NameList', aVarSubList ...
        );
        
        % Extract only the transformed variables (dbfun keeps all variables)
        tempDatabank = databank.retrieve(tempDatabank, aVarSubList);
        
        % Merge transformed data into main output structure
        irfStructure = dbmerge(irfStructure, tempDatabank);
    end

end