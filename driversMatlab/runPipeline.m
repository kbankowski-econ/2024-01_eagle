function runPipeline(opts)
%RUNPIPELINE Run the EAGLE pipeline end to end, or any subset of its stages.
%
%   runPipeline("steady", true, "shocks", true, "tables", true, "charts", true, "paper", true)
%   runPipeline("all", true)                       every stage in order
%   runPipeline("shocks", true, "shockList", ["shock_ngeu", "shock_eab_gy4"])
%
%   Stages, in pipeline order (all default to false):
%     calibdata  Python: data_retrieval, main, calculateCalibData, collectCalibData
%     calibmod   extractSSsharesFromCSV  (trade matrix, shares, tax, debt, transfers mod files)
%     steady     calculateSteadyState    (parsing + steady0 .. steady7, ~40 min)
%     shocks     functions.runEAGLEsimul for every row of shockDict (~8-12 min each)
%     ngeu       processNGEUdata
%     tables     runLatexCalibTables, runLatexSimulTables
%     charts     runChartsForWP + plotCalibCharts, plotTradeFlows, plotNGEUbubbleChart
%                (IRF charts are produced by the shocks stage)
%     paper      bashScripts/buildPaper.sh (latexmk)
%
%   Options:
%     shockList          subset of shock names; default all rows of shockDict
%     separateProcesses  run each shock in its own "matlab -batch" (default true:
%                        one session runs out of memory on 16 GB after ~5 shocks)
%     stopOnError        abort at the first failing stage (default true)
%     python             Python executable (default "python3")
%
%   Every stage logs its run time to timings/timings.csv through the stage
%   scripts themselves; this driver adds one "pipeline / all" row.
%   Call iniProject first in a fresh session.

arguments
    opts.all (1,1) logical = false
    opts.calibdata (1,1) logical = false
    opts.calibmod (1,1) logical = false
    opts.steady (1,1) logical = false
    opts.shocks (1,1) logical = false
    opts.ngeu (1,1) logical = false
    opts.tables (1,1) logical = false
    opts.charts (1,1) logical = false
    opts.paper (1,1) logical = false
    opts.shockList string = strings(0)
    opts.separateProcesses (1,1) logical = true
    opts.stopOnError (1,1) logical = true
    opts.python (1,1) string = "python3"
end

utils.call.paths;
if exist('machine_label', 'var')
    setenv('EAGLE_MACHINE', char(machine_label));   % same label for the shell and Python helpers
end
stageNames = ["calibdata", "calibmod", "steady", "shocks", "ngeu", "tables", "charts", "paper"];
if opts.all
    for s = stageNames, opts.(s) = true; end
end
selected = stageNames(arrayfun(@(s) opts.(s), stageNames));
if isempty(selected)
    fprintf('runPipeline: no stage selected. Use runPipeline("all", true) or pick stages.\n');
    return
end

tPipeline = tic;
failed = strings(0);
previousDir = pwd;
restoreDir = onCleanup(@() cd(previousDir));
banner(sprintf('Pipeline start: %s', strjoin(selected, ' > ')));

for stage = selected
    cd(project_path);
    banner(stage);
    try
        switch stage
            case "calibdata"
                for script = ["data_retrieval.py", "main.py", "calculateCalibData.py", "collectCalibData.py"]
                    runShell(sprintf('cd "%s/data/Codes" && %s %s', project_path, opts.python, script), script);
                end
            case "calibmod"
                extractSSsharesFromCSV();
            case "steady"
                calculateSteadyState;
            case "shocks"
                runShocks(opts, project_path);
            case "ngeu"
                envi = environment.setup(); %#ok<NASGU> processNGEUdata expects envi in the workspace
                processNGEUdata;
            case "tables"
                runLatexCalibTables;
                runLatexSimulTables;
            case "charts"
                runChartsForWP;
                for script = ["plotCalibCharts.py", "plotTradeFlows.py", "plotNGEUbubbleChart.py"]
                    runShell(sprintf('cd "%s" && %s driversPython/%s', project_path, opts.python, script), script);
                end
            case "paper"
                runShell(sprintf('"%s/bashScripts/buildPaper.sh"', project_path), "buildPaper.sh");
        end
        fprintf('\n[pipeline] %s done (%.0f s since start)\n', stage, toc(tPipeline));
    catch ME
        failed(end+1) = stage; %#ok<AGROW>
        fprintf(2, '\n[pipeline] %s FAILED: %s\n', stage, ME.message);
        if opts.stopOnError
            utils.logTiming("pipeline", "all", tPipeline, "failed", ...
                "stages=" + strjoin(selected, '+') + "; failed at " + stage);
            rethrow(ME);
        end
    end
    close all;
end

status = "ok"; if ~isempty(failed), status = "failed"; end
utils.logTiming("pipeline", "all", tPipeline, status, ...
    "stages=" + strjoin(selected, '+') + iif(isempty(failed), "", "; failed=" + strjoin(failed, '+')));
banner(sprintf('Pipeline end: %.1f min, failed stages: %s', toc(tPipeline)/60, iif(isempty(failed), "none", strjoin(failed, ', '))));
end

%% ---------------------------------------------------------------- helpers
function runShocks(opts, project_path)
    envi = environment.setup();
    shockList = opts.shockList;
    if isempty(shockList)
        shockList = string(envi.shockDict.Properties.RowNames)';
    end
    fprintf('[pipeline] %d shocks: %s\n', numel(shockList), strjoin(shockList, ', '));
    for aShock = shockList
        if opts.separateProcesses
            matlabBin = fullfile(matlabroot, 'bin', 'matlab');
            cmd = sprintf('"%s" -batch "cd(''%s''); iniProject; functions.runEAGLEsimul(''%s'')"', ...
                matlabBin, project_path, aShock);
            runShell(cmd, aShock);
        else
            functions.runEAGLEsimul(aShock);
        end
    end
end

function runShell(cmd, label)
    fprintf('[pipeline] $ %s\n', cmd);
    rc = system(cmd);
    if rc ~= 0
        error('runPipeline:shell', '%s exited with code %d', label, rc);
    end
end

function banner(txt)
    fprintf('\n%s\n#  %s\n%s\n', repmat('#', 1, 78), txt, repmat('#', 1, 78));
end

function out = iif(cond, a, b)
    if cond, out = a; else, out = b; end
end
