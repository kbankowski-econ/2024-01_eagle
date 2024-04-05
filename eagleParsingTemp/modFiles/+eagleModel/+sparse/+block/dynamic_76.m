function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(540)*y(3985))-(y(2269)*(-params(58))-params(138)*y(2555)-params(218)*y(2841)-params(298)*y(3127));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(540);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
