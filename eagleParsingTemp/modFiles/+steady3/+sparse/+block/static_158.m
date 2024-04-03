function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2045)*y(1987))-(y(1587)*params(397)*y(1623)*y(1940)/params(463)+y(1282)*params(327)*y(1318)*y(1939)/params(463)+y(977)*params(260)*y(1013)*y(1938)/params(463)+y(672)*params(193)*y(708)*y(1937)/params(463)+y(62)*params(59)*y(98)*y(1935)/params(463)+y(367)*params(126)*y(403)*y(1936)/params(463));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1987);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
