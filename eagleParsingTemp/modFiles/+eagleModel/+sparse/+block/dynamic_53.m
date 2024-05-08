function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(527)*y(3530))-(y(2035)*(-params(70))-params(161)*y(2334)-params(252)*y(2633)-params(343)*y(2932)-params(437)*y(3231));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(527);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
