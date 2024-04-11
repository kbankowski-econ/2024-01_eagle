function [y, T, residual, g1] = static_161(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(201)*y(267))-(y(2295)*y(2355)*y(158)*params(533)/params(69)+y(1926)*y(1986)*y(157)*params(457)/params(69)+y(1557)*y(1617)*y(156)*params(377)/params(69)+y(1188)*y(1248)*y(155)*params(300)/params(69)+y(450)*y(510)*y(153)*params(146)/params(69)+y(819)*y(879)*y(154)*params(223)/params(69));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(201);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
