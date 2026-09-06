function extractSSsharesFromCSV()
tScript = tic;
utils.call.paths;
envi = environment.setup;
inCSV  = fullfile(project_path,'data','_calibDataCalculated.csv');
outDir = fullfile(project_path,'eagleParsingTemp','modFiles');
if ~exist(outDir,'dir'), mkdir(outDir); end

% import options
opts = detectImportOptions(inCSV,'TextType','string');
vn = string(opts.VariableNames); lk = lower(vn);
if any(lk=="year"),     opts = setvartype(opts, cellstr(vn(lk=="year")),"string"); end
if any(lk=="country"),  opts = setvartype(opts, cellstr(vn(lk=="country")),"string"); end
if any(lk=="variable"), opts = setvartype(opts, cellstr(vn(lk=="variable")),"string"); end
if any(lk=="value"),    opts = setvartype(opts, cellstr(vn(lk=="value")),"double"); end
if any(lk=="year"), opts = setvaropts(opts, cellstr(vn(lk=="year")),'TreatAsMissing',{}); end

T = readtable(inCSV, opts);
T.Properties.VariableNames = lower(strtrim(erase(string(T.Properties.VariableNames), char(160))));
if ~any(strcmpi('variable', T.Properties.VariableNames)), error('No variable column'); end
T.variable = string(strtrim(T.variable));
if any(strcmpi('year', T.Properties.VariableNames))
    T.year = string(T.year); yr = lower(strtrim(replace(T.year, char(160)," ")));
    T = T(yr=="average", :);
    assert(~isempty(T),'No rows with year=="average"');
end
if any(strcmpi('value', T.Properties.VariableNames)), T.value = double(T.value); else error('No value column'); end

countries = string(envi.Meta.ctryList);
bilatRegex  = '^[A-Z]{4,}_im(cy|cgy|iy|igy)$';

% if no country column, parse per-country rows (COUNTRY_var) and bilateral prefix
if ~any(strcmpi('country', T.Properties.VariableNames))
    n = height(T);
    parsedCountry = strings(n,1);
    parsedVar = strings(n,1);
    parsedOrigin = strings(n,1);
    parsedDest   = strings(n,1);
    for r = 1:n
        v = char(T.variable(r));
        if ~isempty(regexp(v, bilatRegex, 'once'))
            u = find(v=='_',1); prefix = v(1:max(1,u-1));
            found = false;
            for oi=1:numel(countries)
                o = char(countries(oi));
                for di=1:numel(countries)
                    d = char(countries(di));
                    if strcmp(prefix,[o d])
                        parsedOrigin(r)=string(o); parsedDest(r)=string(d); found=true; break;
                    end
                end
                if found, break; end
            end
            parsedVar(r)=string(v);
        else
            found=false;
            for ci=1:numel(countries)
                c=char(countries(ci)); prefix=[c '_'];
                if startsWith(v,prefix)
                    parsedCountry(r)=string(c);
                    parsedVar(r)=string(v(length(prefix)+1:end));
                    found=true; break;
                end
            end
            if ~found, parsedVar(r)=string(v); end
        end
    end
    T.country = parsedCountry;
    T.variable = parsedVar;
    T.origin = parsedOrigin;
    T.dest = parsedDest;
else
    T.country = string(T.country);
end

% per-country groups
shareNames = ["cy", "cgybar","iy","igybar"];
shareMods  = ["cy", "cgybar","iy","igybar"];
taxNames   = ["taucbar","taunbar","tauwfbar","tauwhbar","taukbar"];
taxMods    = ["taucbar","taunbar","tauwfbar","tauwhbar","taukbar"];
debtNames  = "bytarget";   debtMods  = "bytarget";
trsfNames  = "trybar";     trsfMods  = "trybar";

write_group(outDir,"shares",    shareNames, shareMods, countries, T);
write_group(outDir,"tax_rates", taxNames,   taxMods,   countries, T);
write_group(outDir,"debt",      debtNames,  debtMods,  countries, T);
write_group(outDir,"transfers", trsfNames,  trsfMods,  countries, T);

% trade file
tradeFile = fullfile(outDir,'trade_matrix_values_calibrated_new.mod');
fid = fopen(tradeFile,'w'); assert(fid~=-1,'Cannot open %s',tradeFile);

% (a) bilateral with omissions (shiftAmount = 12)
shiftAmount = 12;
countries = string(countries(:)'); countriesAux = [countries, countries];
residMap = containers.Map;
for ii=1:numel(countries), residMap(char(countries(ii))) = char(countriesAux(ii+shiftAmount)); end

isBilat = ~cellfun(@isempty, regexp(cellstr(T.variable), bilatRegex, 'once'));
Tb = T(isBilat,:);
if ~ismember('origin',Tb.Properties.VariableNames) || ~ismember('dest',Tb.Properties.VariableNames)
    Tb.origin = strings(height(Tb),1); Tb.dest = strings(height(Tb),1);
    for k=1:height(Tb)
        v = char(Tb.variable(k)); u = find(v=='_',1); prefix = v(1:max(1,u-1));
        for oi=1:numel(countries)
            o=char(countries(oi));
            for di=1:numel(countries)
                d=char(countries(di));
                if strcmp(prefix,[o d]), Tb.origin(k)=string(o); Tb.dest(k)=string(d); break; end
            end
            if Tb.origin(k)~="", break; end
        end
    end
end

for k=1:height(Tb)
    varname = string(Tb.variable(k)); val = Tb.value(k);
    origin = string(Tb.origin(k)); dest = string(Tb.dest(k));
    if origin=="" || dest=="" % fallback parse
        parsedOrigin=""; parsedDest="";
        for oi=1:numel(countries)
            for di=1:numel(countries)
                cand = countries(oi)+countries(di);
                if startsWith(varname,cand), parsedOrigin=countries(oi); parsedDest=countries(di); break; end
            end
            if parsedOrigin~="", break; end
        end
        origin=parsedOrigin; dest=parsedDest;
    end
    if origin=="" || dest=="" 
        warning('Could not parse "%s". Writing it.',varname);
        fprintf(fid,'%s, %.6f;\n',varname,val); continue;
    end
    if origin==dest, continue; end
    if isKey(residMap,char(origin)) && dest==string(residMap(char(origin))), continue; end
    fprintf(fid,'%s, %.6f;\n',varname,val);
end

% (b) totals per country
tradeTotals = ["imcy","imcgy","imiy","imigy"];
for c = countries
    for v = tradeTotals
        r = T(T.country==c & T.variable==v,:);
        if ~isempty(r), fprintf(fid,'%s_%s, %.6f;\n', c, v, r.value(1)); end
    end
end

% (c) size + tby
for c = countries
    r = T(T.country==c & T.variable=="size",:);
    if ~isempty(r), fprintf(fid,'%s_size, %.6f;\n', c, r.value(1)); end
end
for c = countries
    if c~="US"
        r = T(T.country==c & T.variable=="tby",:);
        if ~isempty(r), fprintf(fid,'%s_tby, %.6f;\n', c, r.value(1)); end
    end
end

% (d) _nuc constants
fprintf(fid, 'RA_nuc, 0.90;\nAT_nuc, 0.65;\nBE_nuc, 0.65;\nES_nuc, 0.65;\nFI_nuc, 0.65;\n');
fprintf(fid, 'GR_nuc, 0.65;\nIT_nuc, 0.65;\nNL_nuc, 0.65;\nPT_nuc, 0.65;\nDE_nuc, 0.65;\n');
fprintf(fid, 'RU_nuc, 0.65;\nUS_nuc, 0.45;\n');

fclose(fid);
fprintf('Wrote %s\n',tradeFile);
utils.logTiming("calibmod", "extractSSsharesFromCSV", tScript);
end

%% helper
function write_group(outDir, groupName, csvVars, modelVars, countries, T)
if isstring(csvVars), csvVars = cellstr(csvVars); end
if isstring(modelVars), modelVars = cellstr(modelVars); end
for k=1:numel(csvVars)
    vName = string(csvVars{k}); mName = string(modelVars{k});
    sub = T(T.variable==vName & ismember(T.country,countries), :);
    f = fullfile(outDir, sprintf('%s_%s.mod', groupName, mName));
    fid = fopen(f,'w'); assert(fid~=-1,'Cannot open %s', f);
    for c = countries
        r = sub(sub.country==c,:);
        if ~isempty(r), fprintf(fid, '%s_%s, %.4f;\n', c, mName, r.value(1)); end
    end
    fclose(fid);
    fprintf('Wrote %s\n', f);
end
end



