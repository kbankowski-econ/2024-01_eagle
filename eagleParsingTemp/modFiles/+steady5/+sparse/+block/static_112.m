function [y, T, residual, g1] = static_112(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(28)=log(y(3052));
  residual(1)=(T(28))-((1-params(527))*log(x(174))+T(28)*params(527)+x(188));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3052)-params(527)*1/y(3052);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
