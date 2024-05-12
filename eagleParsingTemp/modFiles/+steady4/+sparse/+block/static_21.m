function [y, T, residual, g1] = static_21(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6)=log(y(1060));
  residual(1)=(T(6))-((1-params(143))*log(x(40))+T(6)*params(143)+x(54));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1060)-params(143)*1/y(1060);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
