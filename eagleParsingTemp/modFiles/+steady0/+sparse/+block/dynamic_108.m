function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3241)*y(3294))-(y(3242)*y(3295)+y(3244)*y(3296)+y(3246)*y(3297)+y(3248)*y(3298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3241);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
