function [y, T, residual, g1] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2105)*y(2158))-(y(2106)*y(2159)+y(2108)*y(2160)+y(2110)*y(2161)+y(2112)*y(2162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2105);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
