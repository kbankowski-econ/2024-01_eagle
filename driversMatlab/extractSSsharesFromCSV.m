function extractSSsharesFromCSV()
    %% Paths
    utils.call.paths; % defines project_path
    envi = environment.setup;
    inCSV  = fullfile(project_path,'data','_calibDataCalculated.csv');
    outDir = fullfile(project_path,'eagleParsingTemp','modFiles');
    if ~exist(outDir,'dir'), mkdir(outDir); end

    %% Countries (for ordering)
    countries = envi.Meta.ctryList;

    %% Variable → model mappings
    shareNames = ["public_consumption","private_investment","public_investment"];
    shareMods  = ["cgybar","iy","igybar"];

    taxNames   = ["tax_consumption","tax_income","tax_SSC_firms","tax_SSC_households","tax_capital"];
    taxMods    = ["taucbar","taunbar","tauwfbar","tauwhbar","taukbar"];

    debtNames  = "debt";   debtMods  = "bytarget";
    trsfNames  = "trybar"; trsfMods  = "trybar";

    tradeTotals = ["imcy","imcgy","imiy","imigy"];
    bilatRegex  = '^[A-Z]{4,}_im(cy|cgy|iy|igy)$'; % e.g. USAT_imcy

    %% Robust import: keep YEAR as string so "average" isn't NaN
    opts = detectImportOptions(inCSV,'TextType','string');
    vn   = string(opts.VariableNames); lk = lower(vn);
    % Force specific types
    if any(lk=="year"),     opts = setvartype(opts, cellstr(vn(lk=="year")),"string"); end
    if any(lk=="country"),  opts = setvartype(opts, cellstr(vn(lk=="country")),"string"); end
    if any(lk=="variable"), opts = setvartype(opts, cellstr(vn(lk=="variable")),"string"); end
    if any(lk=="value"),    opts = setvartype(opts, cellstr(vn(lk=="value")),"double"); end
    % Don't mark any tokens in 'year' as missing
    if any(lk=="year"), opts = setvaropts(opts, cellstr(vn(lk=="year")),'TreatAsMissing',{}); end

    T = readtable(inCSV, opts);
    % Normalize headers + values
    T.Properties.VariableNames = lower(strtrim(erase(string(T.Properties.VariableNames), char(160))));
    T.country  = string(T.country);
    T.variable = string(T.variable);
    T.year     = string(T.year);
    T.value    = double(T.value);

    % Keep only 'average' rows (trim/normalize)
    yr = lower(strtrim(replace(T.year, char(160), " ")));
    T  = T(yr=="average", :);
    assert(~isempty(T), 'No rows with year=="average" found after import.');

    %% ---- Per-country .mod files ----
    write_group(outDir,"shares",    shareNames, shareMods, countries, T);
    write_group(outDir,"tax_rates", taxNames,   taxMods,   countries, T);
    write_group(outDir,"debt",      debtNames,  debtMods,  countries, T);
    write_group(outDir,"transfers", trsfNames,  trsfMods,  countries, T);

    %% ---- Trade matrix file ----
    tradeFile = fullfile(outDir,'trade_matrix_values_calibrated_new.mod');
    fid = fopen(tradeFile,'w'); assert(fid~=-1,'Cannot open %s', tradeFile);

    % (a) Bilateral
    % Note: set shiftAmount to the same value used in old code (12)
    shiftAmount = 12;
    
    % Ensure countries is a row string array
    if iscell(countries), countries = string(countries); end
    countries = string(countries(:))';    % 1 x N
    
    % build circular doubled array for indexing
    countriesAux = [countries, countries];
    
    % build mapping origin -> residual destination
    n = numel(countries);
    residMap = containers.Map; % key: origin string -> value: residual dest string
    for idx = 1:n
        origin = countries(idx);
        resid = countriesAux(idx + shiftAmount);
        residMap(char(origin)) = char(resid);
    end
    
    % Prepare bilateral table Tb (as before)
    isBilat = ~cellfun(@isempty, regexp(cellstr(T.variable), bilatRegex, 'once'));
    Tb = T(isBilat,:);
    
    % Helper: function-like inline to parse origin/dest from variable name robustly
    % We attempt to match any origin+dest combination from the countries list.
    parseOriginDest = @(v) deal("", ""); % default
    parseOriginDest = @(v) localParseOriginDest(v, countries);
    
    % Now iterate Tb and skip diagonal + residual pair for each origin
    for k = 1:height(Tb)
        varname = string(Tb.variable(k));
        val = Tb.value(k);
    
        [origin, dest] = parseOriginDest(varname);
        if origin=="" || dest=="" 
            % couldn't parse — print and continue to avoid silent data loss
            warning('Could not parse origin/destination from variable "%s". Writing it anyway.', varname);
            fprintf(fid, '%s, %.6f;\n', varname, val);
            continue;
        end
    
        % skip diagonal
        if origin == dest
            continue;
        end
    
        % skip origin -> its residual destination
        % residMap keys are char, so convert
        if isKey(residMap, char(origin))
            if dest == string(residMap(char(origin)))
                % omit this pair (same omission as old wide code)
                continue;
            end
        end
    
        % otherwise write the bilateral value
        fprintf(fid, '%s, %.6f;\n', varname, val);
    end


    % (b) Totals per country
    for c = countries
        for v = tradeTotals
            r = T(T.country==c & T.variable==v, :);
            if ~isempty(r), fprintf(fid, '%s_%s, %.6f;\n', c, v, r.value(1)); end
        end
    end

    % (c) size + tby 
    for c = countries
        r = T(T.country==c & T.variable=="size", :);
        if ~isempty(r), fprintf(fid, '%s_size, %.6f;\n', c, r.value(1)); end
    end
    for c = countries
        if c ~= "US"
            r = T(T.country==c & T.variable=="tby", :);
            if ~isempty(r), fprintf(fid, '%s_tby, %.6f;\n', c, r.value(1)); end
        end
    end

    % (d) _nuc constants
    fprintf(fid, 'RA_nuc, 0.90;\nAT_nuc, 0.65;\nBE_nuc, 0.65;\nES_nuc, 0.65;\nFI_nuc, 0.65;\n');
    fprintf(fid, 'GR_nuc, 0.65;\nIT_nuc, 0.65;\nNL_nuc, 0.65;\nPT_nuc, 0.65;\nDE_nuc, 0.65;\n');
    fprintf(fid, 'RU_nuc, 0.65;\nUS_nuc, 0.45;\n');

    fclose(fid);
    fprintf('Wrote %s\n', tradeFile);
end

%% ===== helpers =====
function write_group(outDir, groupName, csvVars, modelVars, countries, T)
    if isstring(csvVars), csvVars = cellstr(csvVars); end
    if isstring(modelVars), modelVars = cellstr(modelVars); end
    for k = 1:numel(csvVars)
        vName = string(csvVars{k}); mName = string(modelVars{k});
        sub = T(T.variable==vName & ismember(T.country, countries), :);
        f = fullfile(outDir, sprintf('%s_%s.mod', groupName, mName));
        fid = fopen(f,'w'); assert(fid~=-1,'Cannot open %s', f);
        for c = countries
            r = sub(sub.country==c, :);
            if ~isempty(r), fprintf(fid, '%s_%s, %.4f;\n', c, mName, r.value(1)); end
        end
        fclose(fid);
        fprintf('Wrote %s\n', f);
    end
end


function [origin, dest] = localParseOriginDest(varname, countryList)
    % varname: string or char, e.g. "USAT_imcy" or "ATUS_imiy"
    % countryList: 1xN string array of country codes e.g. ["RA","AT",...]
    origin = "";
    dest = "";
    s = char(varname);
    % remove trailing item suffix (e.g. "_imcy") so we only match the XYZW part
    underscorePos = find(s == '_', 1, 'first');
    if ~isempty(underscorePos)
        prefix = s(1:underscorePos-1);
    else
        prefix = s;
    end
    % try every pairing of countryList (origin,dest) and test prefix startsWith origin+dest
    for oi = 1:numel(countryList)
        o = char(countryList(oi));
        for di = 1:numel(countryList)
            d = char(countryList(di));
            cand = [o d];
            if startsWith(prefix, cand)
                origin = string(o);
                dest = string(d);
                return;
            end
        end
    end
end


