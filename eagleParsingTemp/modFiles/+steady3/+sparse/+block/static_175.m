function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2058))-(y(2079)*log(y(1940)-params(409)*y(1940))-1/(1+params(448))*y(1999)^(1+params(448))+params(395)*y(2058));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(395);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
