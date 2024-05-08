function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(43)=log(y(4631));
  residual(1)=(T(43))-((1-params(1277))*log(x(281))+T(43)*params(1277)+x(295));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4631)-params(1277)*1/y(4631);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
