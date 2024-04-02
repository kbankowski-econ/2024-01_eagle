function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2051)*y(1993))-(y(1592)*params(409)*y(1628)*y(1946)/params(477)+y(1286)*params(337)*y(1322)*y(1945)/params(477)+y(980)*params(268)*y(1016)*y(1944)/params(477)+y(674)*params(199)*y(710)*y(1943)/params(477)+y(62)*params(61)*y(98)*y(1941)/params(477)+y(368)*params(130)*y(404)*y(1942)/params(477));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1993);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
