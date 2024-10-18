function ParseModel(mod_name,NewModName, endo, AddRoutine)
    global M_
    
    cherrypick(mod_name,sprintf('%s/inc_file/%s', pwd,NewModName), endo, false);

    % Modifying exogenous .inc file. Issues pop up when there are extremely
    % small coefficients in the model and max operator.
    content = fopen(sprintf('%s/inc_file/%s/exogenous.inc', pwd,NewModName),'rt') ;
    S = textscan(content,'%s','delimiter','\n'); fclose(content);
    S = S{1};
    S(contains(S,'.')) = [];
    content = fopen(sprintf('%s/inc_file/%s/exogenous.inc', pwd,NewModName),'wt') ;
    fprintf(content,'%s\n',S{:});
    fclose(content);
    % Aggregating all .inc files so that we have one parsed mod file
    utils.aggregate(sprintf('%s/%s.mod', pwd, NewModName), {'stochastic','json=compute'},[], sprintf('%s/inc_file/%s/', pwd,NewModName));
    
    if AddRoutine
        % Adding the routine which creates submodule_names and exo path to the
        % parsed file.
        content = fopen(sprintf('%s/%s.mod', pwd,mod_name),'rt') ;
        S = textscan(content,'%s','delimiter','\n'); fclose(content);
        S = S{1};
        routine = S([11:48,end-10:end-3]);
        parsedMod = fopen(sprintf('%s/%s.mod', pwd,NewModName),'rt');
        S = textscan(parsedMod,'%s','delimiter','\n'); fclose(parsedMod);
        S = S{1};
        finalMod = [S; routine];
        content = fopen(sprintf('%s/%s.mod', pwd,NewModName),'wt') ;
        fprintf(content,'%s\n',finalMod{:});
        fclose(content);
    end
end