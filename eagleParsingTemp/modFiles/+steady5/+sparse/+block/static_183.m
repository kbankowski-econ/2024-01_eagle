function [y, T, residual, g1] = static_183(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2546))-(y(2568)*log(y(2625)-y(2625)*params(490))-1/(1+params(539))*y(2473)^(1+params(539))+y(2546)*params(474));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(474);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
