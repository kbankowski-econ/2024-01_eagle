function [y, T, residual, g1] = static_361(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7193))-(y(7214)*log(y(7819)-params(1328)*y(7819))-1/(1+params(1379))*y(7117)^(1+params(1379))+params(1309)*y(7193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1309);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
