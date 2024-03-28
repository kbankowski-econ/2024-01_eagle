function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1426)*y(1369))-(y(1879)*params(456)*y(1915)*y(1322)/params(322)+y(1576)*params(391)*y(1612)*y(1321)/params(322)+y(969)*params(256)*y(1005)*y(1320)/params(322)+y(666)*params(190)*y(702)*y(1319)/params(322)+y(60)*params(58)*y(96)*y(1317)/params(322)+y(363)*params(124)*y(399)*y(1318)/params(322));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1369);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
