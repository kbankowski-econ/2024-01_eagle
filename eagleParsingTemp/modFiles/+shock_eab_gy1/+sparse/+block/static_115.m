function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(29)=log(y(3167));
  residual(1)=(T(29))-((1-params(733))*log(x(211))+T(29)*params(733)+x(226));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3167)-params(733)*1/y(3167);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
