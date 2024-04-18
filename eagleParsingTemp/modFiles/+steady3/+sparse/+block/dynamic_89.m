function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3030)*y(3083))-(y(3031)*y(3084)+y(3033)*y(3085)+y(3035)*y(3086)+y(3037)*y(3087));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3030);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
