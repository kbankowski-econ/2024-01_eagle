function irfStructure = calculateIRFsForCountries(monetarySimOutput, monetarySimStruct)

    % reding in global variables/ settings
    envi = environment.setup();

    % defining country pattern for filtering the variables
    prefixPattern = strcat("^(", strjoin([envi.Meta.ctryList, "EA"], '|'), ")");

    % bringing model variable list
    modelVarLists = dynareFunc.retrieveModelVarList(monetarySimOutput.M_);

    % creating a list of transformations to be conducted
    transfList = reshape(unique(envi.varDict.diffTransf), 1, []);

    % restarting the databank
    irfStructure = struct();

    % looping through transformations
    for aTransf = transfList
        aVarSubList = {};
        % selecting a table with the relevant variables to be transformed
        tempVarTable = envi.varDict(strcmp(envi.varDict{:, "diffTransf"}, aTransf) ,:);
        for aVarIndex = 1:length(tempVarTable.Properties.RowNames)
            % looping through variables of the selected tables and selecting
            % any of them that shows up in the model for any country
            aVar = tempVarTable.Properties.RowNames{aVarIndex};
            aVarSubList = [aVarSubList; modelVarLists.endo( ~cellfun('isempty', regexp(modelVarLists.endo, prefixPattern + '_' + aVar + '$')))];
        end
        % performing the transformation
        transfFunc = str2func(['@(x,y) ' char(aTransf)]);
        tempDatabank = dbfun( ...
            transfFunc ...
            , monetarySimStruct.endoValues ...
            , monetarySimStruct.ssValues ...
            , 'NameList', aVarSubList ...
        );
        % since dbFunc keeps all series in the databank, even these not
        % transformed we have to purge the rest
        tempDatabank = databank.retrieve(tempDatabank, aVarSubList);
        % merging databanks with all types of transformations into one
        % structure
        irfStructure = dbmerge(irfStructure, tempDatabank);
    end

end