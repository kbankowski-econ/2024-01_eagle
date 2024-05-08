function [y, T, residual, g1] = dynamic_63(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1680)*y(1733))-(y(1681)*y(1734)+y(1683)*y(1735)+y(1685)*y(1736)+y(1687)*y(1737));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1680);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
