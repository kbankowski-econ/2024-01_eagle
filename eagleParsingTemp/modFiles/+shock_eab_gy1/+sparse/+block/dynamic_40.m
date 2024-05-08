function [y, T, residual, g1] = dynamic_40(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1638)*y(1691))-(y(1639)*y(1692)+y(1641)*y(1693)+y(1643)*y(1694)+y(1645)*y(1695));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1638);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
