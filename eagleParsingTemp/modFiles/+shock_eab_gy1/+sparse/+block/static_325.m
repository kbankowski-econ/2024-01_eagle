function [y, T, residual, g1] = static_325(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5945)*y(5998))-(y(5946)*y(5999)+y(5948)*y(6000)+y(5950)*y(6001)+y(5952)*y(6002));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5945);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
