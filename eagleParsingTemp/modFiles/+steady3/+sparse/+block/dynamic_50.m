function [y, T, residual, g1] = dynamic_50(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1775)*y(1828))-(y(1776)*y(1829)+y(1778)*y(1830)+y(1780)*y(1831)+y(1782)*y(1832));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1775);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
