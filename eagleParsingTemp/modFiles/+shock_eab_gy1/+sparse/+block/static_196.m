function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(50)=log(y(6701));
  residual(1)=(T(50))-((1-params(1267))*log(x(350))+T(50)*params(1267)+x(365));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6701)-params(1267)*1/y(6701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
