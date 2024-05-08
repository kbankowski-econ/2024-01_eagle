function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(47)=log(y(5556));
  residual(1)=(T(47))-((1-params(1487))*log(x(308))+T(47)*params(1487)+x(322));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5556)-params(1487)*1/y(5556);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
