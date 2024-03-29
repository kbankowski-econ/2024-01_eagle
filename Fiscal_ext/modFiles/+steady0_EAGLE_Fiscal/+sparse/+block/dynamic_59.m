function [y, T, residual, g1] = dynamic_59(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2173)*y(2227))-(y(2174)*y(2228)+y(2178)*y(2230)+y(2182)*y(2232)+y(2175)*y(2229)+y(2179)*y(2231));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2173);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
