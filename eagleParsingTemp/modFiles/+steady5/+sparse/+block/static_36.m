function [y, T, residual, g1] = static_36(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(9)=log(y(1598));
  residual(1)=(T(9))-((1-params(221))*log(x(68))+T(9)*params(221)+x(82));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1598)-params(221)*1/y(1598);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
