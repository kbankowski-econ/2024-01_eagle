function [y, T, residual, g1] = static_225(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3035)*y(3088))-(y(3036)*y(3089)+y(3038)*y(3090)+y(3040)*y(3091)+y(3042)*y(3092));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3035);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
