function [y, T, residual, g1] = static_100(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(26)=log(y(2435));
  residual(1)=(T(26))-((1-params(628))*log(x(182))+T(26)*params(628)+x(198));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2435)-params(628)*1/y(2435);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
