function [y, T, residual, g1] = static_174(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1675)*y(1728))-(y(1676)*y(1729)+y(1678)*y(1730)+y(1680)*y(1731)+y(1682)*y(1732));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1675);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
