function [y, T, residual, g1] = static_305(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1865))-(y(1885)*log(y(1727)-params(500)*y(1727))-1/(1+params(543))*y(1789)^(1+params(543))+params(483)*y(1865));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(483);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
