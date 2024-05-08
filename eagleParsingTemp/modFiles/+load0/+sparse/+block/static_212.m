function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3162)*y(3215))-(y(3163)*y(3216)+y(3165)*y(3217)+y(3167)*y(3218)+y(3169)*y(3219));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3162);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
