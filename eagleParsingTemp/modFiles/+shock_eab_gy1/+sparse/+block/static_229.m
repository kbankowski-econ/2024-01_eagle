function [y, T, residual, g1] = static_229(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2245)*y(2298))-(y(2246)*y(2299)+y(2248)*y(2300)+y(2250)*y(2301)+y(2252)*y(2302));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2245);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
