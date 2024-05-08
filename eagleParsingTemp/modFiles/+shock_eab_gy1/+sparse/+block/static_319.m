function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3803)*y(3856))-(y(3804)*y(3857)+y(3806)*y(3858)+y(3808)*y(3859)+y(3810)*y(3860));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3803);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
