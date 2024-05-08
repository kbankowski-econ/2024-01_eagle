function [y, T, residual, g1] = dynamic_63(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1660)*y(1713))-(y(1661)*y(1714)+y(1663)*y(1715)+y(1665)*y(1716)+y(1667)*y(1717));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1660);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
