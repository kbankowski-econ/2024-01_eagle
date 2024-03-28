function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1107)*y(1050))-(y(1854)*params(442)*y(1890)*y(1007)/params(248)+y(1555)*params(379)*y(1591)*y(1006)/params(248)+y(1256)*params(312)*y(1292)*y(1005)/params(248)+y(657)*params(184)*y(693)*y(1004)/params(248)+y(59)*params(56)*y(95)*y(1002)/params(248)+y(358)*params(120)*y(394)*y(1003)/params(248));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1050);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
