function [y, T, residual, g1] = static_178(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2650)*y(2703))-(y(2651)*y(2704)+y(2653)*y(2705)+y(2655)*y(2706)+y(2657)*y(2707));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2650);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
