function [y, T, residual, g1] = dynamic_82(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2120)*y(2168))-(y(2121)*y(2169)+y(2122)*y(2170)+y(2123)*y(2171)+y(2124)*y(2172));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
