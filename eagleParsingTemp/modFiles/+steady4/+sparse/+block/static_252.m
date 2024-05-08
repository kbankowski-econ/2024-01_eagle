function [y, T, residual, g1] = static_252(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3097)*y(3150))-(y(3098)*y(3151)+y(3100)*y(3152)+y(3102)*y(3153)+y(3104)*y(3154));
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
