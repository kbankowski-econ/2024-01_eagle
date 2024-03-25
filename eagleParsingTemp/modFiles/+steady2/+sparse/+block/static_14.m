function [y, T, residual, g1] = static_14(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=log(y(235));
  residual(1)=(T(4))-((1-params(59))*log(x(10))+T(4)*params(59)+x(24));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(235)-params(59)*1/y(235);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
