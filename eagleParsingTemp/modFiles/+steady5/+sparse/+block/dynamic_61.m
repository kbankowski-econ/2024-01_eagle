function [y, T, residual, g1] = dynamic_61(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2261)*y(2313))-(y(2262)*y(2314)+y(2264)*y(2315)+y(2266)*y(2316)+y(2268)*y(2317));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2261);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
