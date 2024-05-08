function [y, T, residual, g1] = static_321(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7139))-(y(7161)*log(y(7273)-y(7273)*params(1028))-1/(1+params(1078))*y(7066)^(1+params(1078))+y(7139)*params(1012));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1012);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
