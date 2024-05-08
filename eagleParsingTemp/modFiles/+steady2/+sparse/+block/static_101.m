function [y, T, residual, g1] = static_101(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(26)=log(y(2503));
  residual(1)=(T(26))-((1-params(724))*log(x(175))+T(26)*params(724)+x(189));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2503)-params(724)*1/y(2503);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
