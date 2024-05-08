function [y, T, residual, g1] = dynamic_61(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2236)*y(2289))-(y(2237)*y(2290)+y(2239)*y(2291)+y(2241)*y(2292)+y(2243)*y(2293));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2236);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
