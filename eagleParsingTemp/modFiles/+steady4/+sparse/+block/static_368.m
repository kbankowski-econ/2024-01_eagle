function [y, T, residual, g1] = static_368(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6955))-(y(6976)*log(y(8161)-params(951)*y(8161))-1/(1+params(999))*y(6879)^(1+params(999))+params(932)*y(6955));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(932);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
