function [y, T, residual, g1] = static_259(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1547)*y(1595))-(y(1548)*y(1596)+y(1549)*y(1597)+y(1550)*y(1598)+y(1551)*y(1599));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
