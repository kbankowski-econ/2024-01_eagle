function [y, T, residual, g1] = static_52(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(13)=log(y(2037));
  residual(1)=(T(13))-((1-params(298))*log(x(95))+T(13)*params(298)+x(109));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2037)-params(298)*1/y(2037);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
