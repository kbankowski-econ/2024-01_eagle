function [y, T, residual, g1] = dynamic_181(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13396)*y(13449))-(y(13397)*y(13450)+y(13399)*y(13451)+y(13401)*y(13452)+y(13403)*y(13453));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13396);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
