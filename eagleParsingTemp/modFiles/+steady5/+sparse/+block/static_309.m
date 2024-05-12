function [y, T, residual, g1] = static_309(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2543)*y(2595))-(y(2544)*y(2596)+y(2546)*y(2597)+y(2548)*y(2598)+y(2550)*y(2599));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2543);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
