function [y, T, residual, g1] = static_224(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(56)=log(y(7515));
  residual(1)=(T(56))-((1-params(1069))*log(x(363))+T(56)*params(1069)+x(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7515)-params(1069)*1/y(7515);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
