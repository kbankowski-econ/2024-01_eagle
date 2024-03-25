function [y, T, residual, g1] = dynamic_71(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2477)*y(2424))-(y(2119)*params(279)*y(2137)*y(2392)/params(349)+y(1872)*params(205)*y(1890)*y(2391)/params(349)+y(1378)*params(63)*y(1396)*y(2389)/params(349)+y(1625)*params(134)*y(1643)*y(2390)/params(349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2424);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
