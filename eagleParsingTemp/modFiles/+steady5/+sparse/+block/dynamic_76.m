function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3419)*y(3471))-(y(3420)*y(3472)+y(3422)*y(3473)+y(3424)*y(3474)+y(3426)*y(3475));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3419);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
