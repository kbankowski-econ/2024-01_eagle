function [y, T, residual, g1] = static_334(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6847)*y(6900))-(y(6848)*y(6901)+y(6850)*y(6902)+y(6852)*y(6903)+y(6854)*y(6904));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6847);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
