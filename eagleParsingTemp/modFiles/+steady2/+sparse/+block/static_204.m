function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1658)*y(1706))-(y(1659)*y(1707)+y(1660)*y(1708)+y(1661)*y(1709)+y(1662)*y(1710));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1658);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
