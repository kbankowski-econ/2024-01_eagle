function outputString = prepareTableMultLine(country_code, gov_investment_data, gov_consumption_data, format_spec, transform_function)
% PREPARETABLEMULTLINE Generates formatted LaTeX table row for government multipliers
%
% This function creates a single LaTeX table row containing government investment
% and consumption multiplier values for a specified country across multiple years.
%
% INPUTS:
%   country_code        - String: 2-letter country code (e.g., 'AT', 'DE')
%   gov_investment_data - Struct: Government investment simulation results
%   gov_consumption_data- Struct: Government consumption simulation results  
%   format_spec         - String: Printf format specification (e.g., ' & %.1f')
%   transform_function  - Function handle: Data transformation (optional, default: identity)
%
% OUTPUT:
%   outputString        - String: Formatted LaTeX table row with country label and values
%
% EXAMPLE:
%   row = prepareTableMultLine('AT', inv_data, cons_data, ' & %.1f', @(x) x*100);
%   % Returns: '\tAT & 0.9 & 0.1 & 0.2 & ... \\\n'

    % Set default transformation function if not provided
    if nargin < 5 || isempty(transform_function)
        transform_function = @(x) x;  % Identity function - no transformation
    end    
    
    % Define reporting periods: years 1, 3, 5, 7, 10 after shock
    reporting_periods = [yy(1), yy(3), yy(5), yy(7), yy(10)];
    
    % Pre-allocate values array (5 periods + 1 cumulative × 2 policy types = 12 values)
    total_values = length(reporting_periods) * 2 + 2;  % +2 for cumulative periods
    values = nan(1, total_values);
    value_index = 0;

    % GOVERNMENT INVESTMENT DATA PROCESSING
    % Convert quarterly data to annual using mean aggregation
    annual_investment_series = transform_function(...
        convert(gov_investment_data.(country_code + "_y"), "YEARLY", "Method", "mean"));
    
    % Extract values for specified reporting periods
    for period = reporting_periods
        value_index = value_index + 1;
        values(value_index) = annual_investment_series(period);
    end
    
    % Add cumulative 1-10 year sum for investment
    value_index = value_index + 1;
    values(value_index) = sum(annual_investment_series(reporting_periods(1):reporting_periods(end)));

    % GOVERNMENT CONSUMPTION DATA PROCESSING  
    % Convert quarterly data to annual using mean aggregation
    annual_consumption_series = transform_function(...
        convert(gov_consumption_data.(country_code + "_y"), "YEARLY", "Method", "mean"));
    
    % Extract values for specified reporting periods
    for period = reporting_periods
        value_index = value_index + 1;
        values(value_index) = annual_consumption_series(period);
    end
    
    % Add cumulative 1-10 year sum for consumption
    value_index = value_index + 1;
    values(value_index) = sum(annual_consumption_series(reporting_periods(1):reporting_periods(end)));

    % BUILD FORMAT STRING
    % Create repeated format specification for all values
    format_string = '';
    for i = 1:length(values)
        format_string = [format_string, format_spec];
    end

    % FORMAT OUTPUT STRING
    % Apply formatting to all values at once
    formatted_values = sprintf(format_string, values);
    
    % Replace NaN values with LaTeX-friendly placeholder for missing data
    formatted_values = strrep(formatted_values, 'NaN', '--');

    % CONSTRUCT FINAL LATEX ROW
    % Escape backslashes in country code for LaTeX compatibility
    escaped_country_code = replace(country_code, '\', '\\');
    
    % Assemble complete table row with tab, country label, values, and line ending
    outputString = ['\t', escaped_country_code, formatted_values, ' \\\\\n'];
    
end