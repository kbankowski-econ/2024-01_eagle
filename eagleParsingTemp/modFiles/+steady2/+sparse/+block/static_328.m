function [y, T, residual, g1] = static_328(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1713)*y(1761))-(y(1714)*y(1762)+y(1715)*y(1763)+y(1716)*y(1764)+y(1717)*y(1765));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1713);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
