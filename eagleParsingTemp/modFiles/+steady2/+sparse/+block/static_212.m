function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3097)*y(3145))-(y(3098)*y(3146)+y(3099)*y(3147)+y(3100)*y(3148)+y(3101)*y(3149));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3097);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
