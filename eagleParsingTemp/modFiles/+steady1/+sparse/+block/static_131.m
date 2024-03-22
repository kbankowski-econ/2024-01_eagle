function [y, T, residual, g1] = static_131(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(983))-(y(1004)*log(y(861)-params(217)*y(861))-1/(1+params(257))*y(921)^(1+params(257))+params(200)*y(983));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
