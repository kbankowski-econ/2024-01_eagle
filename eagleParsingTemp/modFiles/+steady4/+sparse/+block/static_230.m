function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3361)*y(3414))-(y(3362)*y(3415)+y(3364)*y(3416)+y(3366)*y(3417)+y(3368)*y(3418));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3361);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
