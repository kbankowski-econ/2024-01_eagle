function [y, T, residual, g1] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1722)*y(1764))-(y(1723)*y(1765)+y(1725)*y(1766));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1722);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
