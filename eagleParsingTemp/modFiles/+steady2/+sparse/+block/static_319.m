function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3174))-(y(3195)*log(y(3036)-y(3036)*params(859))-1/(1+params(902))*y(3098)^(1+params(902))+y(3174)*params(842));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(842);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
