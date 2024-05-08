function [y, T, residual, g1] = dynamic_38(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(6107)))-((1-params(632))*log(x(183))+params(632)*log(y(2604))+x(198));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6107);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
