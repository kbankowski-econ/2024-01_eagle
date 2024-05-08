function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2417)*y(2465))-(y(2418)*y(2466)+y(2419)*y(2467)+y(2420)*y(2468)+y(2421)*y(2469));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2417);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
