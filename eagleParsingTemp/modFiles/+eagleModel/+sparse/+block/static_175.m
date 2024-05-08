function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(43)=log(y(5405));
  residual(1)=(T(43))-((1-params(1055))*log(x(292))+T(43)*params(1055)+x(307));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5405)-params(1055)*1/y(5405);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
