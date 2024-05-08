function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1371))-(y(1392)*log(y(1227)-params(307)*y(1227))-1/(1+params(355))*y(1295)^(1+params(355))+params(288)*y(1371));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(288);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
