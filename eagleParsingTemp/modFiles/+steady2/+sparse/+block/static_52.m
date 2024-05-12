function [y, T, residual, g1] = static_52(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(13)=log(y(1922));
  residual(1)=(T(13))-((1-params(506))*log(x(95))+T(13)*params(506)+x(109));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1922)-params(506)*1/y(1922);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
