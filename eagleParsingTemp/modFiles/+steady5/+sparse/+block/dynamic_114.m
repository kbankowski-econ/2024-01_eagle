function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(449)*y(4189))-(y(2383)*(-params(57))-params(122)*y(2684)-params(187)*y(2985)-params(252)*y(3286));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(449);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
