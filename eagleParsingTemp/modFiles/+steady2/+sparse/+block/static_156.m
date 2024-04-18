function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1768)*y(1816))-(y(1769)*y(1817)+y(1770)*y(1818)+y(1771)*y(1819)+y(1772)*y(1820));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1768);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
