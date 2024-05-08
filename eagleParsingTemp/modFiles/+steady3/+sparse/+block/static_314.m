function [y, T, residual, g1] = static_314(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1807)*y(1860))-(y(1808)*y(1861)+y(1810)*y(1862)+y(1812)*y(1863)+y(1814)*y(1864));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1807);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
