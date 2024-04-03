function [y, T, residual, g1] = static_48(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(12)=log(y(906));
  residual(1)=(T(12))-((1-params(189))*log(x(68))+T(12)*params(189)+x(83));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(906)-params(189)*1/y(906);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
