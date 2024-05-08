function [y, T, residual, g1] = static_99(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(25)=log(y(3444));
  residual(1)=(T(25))-((1-params(662))*log(x(183))+T(25)*params(662)+x(198));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3444)-params(662)*1/y(3444);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
