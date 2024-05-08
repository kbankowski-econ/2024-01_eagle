function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2330)*y(2383))-(y(2331)*y(2384)+y(2333)*y(2385)+y(2335)*y(2386)+y(2337)*y(2387));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2330);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
