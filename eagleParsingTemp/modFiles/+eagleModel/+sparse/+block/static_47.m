function [y, T, residual, g1] = static_47(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(11)=log(y(973));
  residual(1)=(T(11))-((1-params(249))*log(x(68))+T(11)*params(249)+x(83));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(973)-params(249)*1/y(973);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
