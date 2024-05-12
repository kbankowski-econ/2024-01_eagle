function [y, T, residual, g1] = static_224(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(56)=log(y(7215));
  residual(1)=(T(56))-((1-params(1369))*log(x(377))+T(56)*params(1369)+x(393));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7215)-params(1369)*1/y(7215);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
