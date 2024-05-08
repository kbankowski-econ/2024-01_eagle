function [y, T, residual, g1] = static_67(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(2102));
  residual(1)=(T(17))-((1-params(452))*log(x(127))+T(17)*params(452)+x(142));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2102)-params(452)*1/y(2102);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
