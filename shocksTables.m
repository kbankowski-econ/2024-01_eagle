function shocksTables(resultFolder, outputFolder, countryList, shockType, variableName)

    periods = [4, 8, 20, 40];
    yearLabels = {'Y1', 'Y2', 'Y5', 'Y10'};

    latexTable = sprintf('\\begin{tabular}{lcccc}\n\\toprule\nCountry & %s & %s & %s & %s \\\\\n\\midrule\n', ...
                         yearLabels{:});

    for i = 1:numel(countryList)
        country = lower(countryList{i});  % file names are lowercase
        filename = fullfile(resultFolder, ...
            sprintf('shock_%s_%s', country, shockType), ...
            'Output', ...
            sprintf('shock_%s_%s_results.mat', country, shockType));
        
        try
            data = load(filename);
        catch
            warning('Could not load file: %s', filename);
            values = NaN(1, 4);
            latexTable = sprintf('%s%s & %.2f & %.2f & %.2f & %.2f \\\\\n', ...
                latexTable, upper(country), values);
            continue;
        end

        % Extract simulation and steady state
        varIndex = find(strcmp(data.M_.endo_names, variableName));
        if isempty(varIndex)
            warning('Variable %s not found in %s', variableName, filename);
            values = NaN(1, 4);
        else
            sim = data.oo_.endo_simul(varIndex, :);  % simulated values
            ss = data.oo_.steady_state(varIndex);    % steady state

            if strcmp(variableName, 'EA_y')  % % deviation from SS
                values = ((sim(periods) / ss) - 1) * 100;
            elseif strcmp(variableName, 'EA_pic4')  % absolute diff * 100
                values = (sim(periods) - ss) * 100;
            else
                warning('Unknown variable transformation for %s', variableName);
                values = NaN(1, 4);
            end
        end

        latexTable = sprintf('%s%s & %.2f & %.2f & %.2f & %.2f \\\\\n', ...
                             latexTable, upper(country), values(1), values(2), values(3), values(4));
    end

    latexTable = sprintf('%s\\bottomrule\n\\end{tabular}\n', latexTable);

    fprintf('\n%% LaTeX Table for %s shock on %s\n', shockType, variableName);
    
    % Save to .tex file
    outputFile = fullfile(outputFolder, ...
        sprintf('sensitivityShocks_%s_%s.tex', shockType, variableName));
    
    fid = fopen(outputFile, 'w');
    if fid == -1
        warning('Cannot open file %s for writing.', outputFile);
    else
        fprintf(fid, '%s', latexTable);
        fclose(fid);
        fprintf('Saved LaTeX table to: %s\n', outputFile);
    end



end
