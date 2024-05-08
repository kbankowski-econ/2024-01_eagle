function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1657))-(y(1677)*log(y(1519)-params(460)*y(1519))-1/(1+params(503))*y(1581)^(1+params(503))+params(443)*y(1657));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(443);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
