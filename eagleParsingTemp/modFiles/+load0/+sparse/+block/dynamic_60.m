function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2524)*y(2577))-(y(2525)*y(2578)+y(2527)*y(2579)+y(2529)*y(2580)+y(2531)*y(2581));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2524);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
