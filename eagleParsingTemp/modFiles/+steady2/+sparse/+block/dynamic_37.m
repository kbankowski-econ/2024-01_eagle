function [y, T, residual, g1] = dynamic_37(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(3648)))-((1-params(369))*log(x(120))+params(369)*log(y(1442))+x(135));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3648);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
