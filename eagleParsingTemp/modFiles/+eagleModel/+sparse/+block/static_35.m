function [y, T, residual, g1] = static_35(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(9)=log(y(1264));
  residual(1)=(T(9))-((1-params(260))*log(x(71))+T(9)*params(260)+x(86));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1264)-params(260)*1/y(1264);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
