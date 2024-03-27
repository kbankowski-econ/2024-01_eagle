function [y, T, residual, g1] = dynamic_119(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4159))-(y(4219)*(1-params(508))+y(1967)*params(508)+x(167));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(1-params(508)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
