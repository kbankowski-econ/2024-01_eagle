function [y, T, residual, g1] = static_155(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1716)*y(1658))-(y(1868)*params(449)*y(1904)*y(1615)/params(385)+y(1265)*params(317)*y(1301)*y(1614)/params(385)+y(964)*params(252)*y(1000)*y(1613)/params(385)+y(663)*params(187)*y(699)*y(1612)/params(385)+y(61)*params(57)*y(97)*y(1610)/params(385)+y(362)*params(122)*y(398)*y(1611)/params(385));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1658);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
