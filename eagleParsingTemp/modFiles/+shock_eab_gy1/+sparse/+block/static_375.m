function [y, T, residual, g1] = static_375(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5384))-(y(5405)*log(y(6953)-params(1018)*y(6953))-1/(1+params(1066))*y(5308)^(1+params(1066))+params(999)*y(5384));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(999);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
