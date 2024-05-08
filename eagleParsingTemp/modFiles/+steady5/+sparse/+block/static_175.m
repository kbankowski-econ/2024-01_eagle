function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(43)=log(y(5625));
  residual(1)=(T(43))-((1-params(834))*log(x(281))+T(43)*params(834)+x(295));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5625)-params(834)*1/y(5625);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
