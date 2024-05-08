function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3350)*y(3402))-(y(3351)*y(3403)+y(3353)*y(3404)+y(3355)*y(3405)+y(3357)*y(3406));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3350);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
