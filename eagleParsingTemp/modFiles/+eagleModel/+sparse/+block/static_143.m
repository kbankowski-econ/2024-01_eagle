function [y, T, residual, g1] = static_143(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(35)=log(y(3339));
  residual(1)=(T(35))-((1-params(819))*log(x(237))+T(35)*params(819)+x(252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3339)-params(819)*1/y(3339);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
