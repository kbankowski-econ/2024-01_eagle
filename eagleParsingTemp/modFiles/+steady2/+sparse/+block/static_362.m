function [y, T, residual, g1] = static_362(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3953))-(y(3973)*log(y(3815)-params(1044)*y(3815))-1/(1+params(1087))*y(3877)^(1+params(1087))+params(1027)*y(3953));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1027);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
