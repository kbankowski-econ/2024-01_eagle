function [y, T, residual, g1] = static_349(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6853))-(y(6874)*log(y(6965)-params(1315)*y(6965))-1/(1+params(1365))*y(6780)^(1+params(1365))+params(1299)*y(6853));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1299);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
