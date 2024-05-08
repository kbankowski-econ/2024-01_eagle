function [y, T, residual, g1] = dynamic_44(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2673)*y(2726))-(y(2674)*y(2727)+y(2676)*y(2728)+y(2678)*y(2729)+y(2680)*y(2730));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2673);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
