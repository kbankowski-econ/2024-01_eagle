function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1709)*y(1752))-(y(1710)*y(1753)+y(1712)*y(1754));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1709);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
