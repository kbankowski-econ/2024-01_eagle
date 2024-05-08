function [y, T, residual, g1] = dynamic_66(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1647)*y(1695))-(y(1648)*y(1696)+y(1649)*y(1697)+y(1650)*y(1698)+y(1651)*y(1699));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1647);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
