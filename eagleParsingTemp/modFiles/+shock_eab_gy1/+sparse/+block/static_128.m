function [y, T, residual, g1] = static_128(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(32)=log(y(3741));
  residual(1)=(T(32))-((1-params(752))*log(x(209))+T(32)*params(752)+x(224));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3741)-params(752)*1/y(3741);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
