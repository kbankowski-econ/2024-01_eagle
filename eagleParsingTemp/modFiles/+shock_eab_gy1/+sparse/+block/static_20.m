function [y, T, residual, g1] = static_20(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6)=log(y(1036));
  residual(1)=(T(6))-((1-params(167))*log(x(42))+T(6)*params(167)+x(57));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1036)-params(167)*1/y(1036);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
