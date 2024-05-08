function [y, T, residual, g1] = static_301(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6303))-(y(6324)*log(y(6163)-params(951)*y(6163))-1/(1+params(1001))*y(6230)^(1+params(1001))+params(935)*y(6303));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(935);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
