function logTiming(stage, item, tStart, status, note)
%LOGTIMING Append one run-time record to timings/timings.csv.
%   utils.logTiming(stage, item, tStart)            tStart from tic
%   utils.logTiming(stage, item, tStart, status)    status e.g. "ok", "failed"
%   utils.logTiming(stage, item, seconds, ...)      a plain number is taken as seconds
%
%   Columns: timestamp,machine,stage,item,seconds,status,commit,note
%   machine = machine_label from paths.m if defined there, else the host name.
%   Summarise with driversPython/summariseTimings.py.

arguments
    stage  {mustBeTextScalar}
    item   {mustBeTextScalar}
    tStart
    status {mustBeTextScalar} = "ok"
    note   {mustBeTextScalar} = ""
end

utils.call.paths;   % defines project_path (and optionally machine_label)

if isa(tStart, 'uint64')
    seconds = toc(tStart);
else
    seconds = double(tStart);
end

if exist('machine_label', 'var')
    machine = string(machine_label);
else
    [~, host] = system('hostname -s'); machine = string(strtrim(host));
end

[rc, sha] = system(sprintf('git -C "%s" rev-parse --short HEAD', project_path));
if rc ~= 0, sha = 'unknown'; end

logFile = fullfile(project_path, 'timings', 'timings.csv');
if ~isfolder(fileparts(logFile)), mkdir(fileparts(logFile)); end
if ~isfile(logFile)
    fid = fopen(logFile, 'w');
    fprintf(fid, 'timestamp,machine,stage,item,seconds,status,commit,note\n');
    fclose(fid);
end

clean = @(s) strrep(string(s), ",", ";");
fid = fopen(logFile, 'a');
fprintf(fid, '%s,%s,%s,%s,%.0f,%s,%s,%s\n', ...
    string(datetime('now', 'Format', 'yyyy-MM-dd''T''HH:mm:ss')), clean(machine), ...
    clean(stage), clean(item), seconds, clean(status), strtrim(sha), clean(note));
fclose(fid);
fprintf('[timing] %s / %s: %.0f s (%s)\n', stage, item, seconds, status);
end
