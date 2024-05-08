function [y, T, residual, g1] = static_114(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(1)-(y(848)*params(191)*(1-y(749))*y(1741)/y(1712));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(848)*params(191)*(-y(1741))/y(1712)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
