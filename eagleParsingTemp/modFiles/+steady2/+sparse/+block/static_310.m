function [y, T, residual, g1] = static_310(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1630)*y(1678))-(y(1631)*y(1679)+y(1632)*y(1680)+y(1633)*y(1681)+y(1634)*y(1682));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1630);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
