function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(456)*y(3662))-(y(2097)*(-params(69))-params(146)*y(2410)-params(223)*y(2723)-params(300)*y(3036)-params(380)*y(3349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(456);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
