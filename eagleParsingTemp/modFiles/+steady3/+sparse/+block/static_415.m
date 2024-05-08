function [y, T, residual, g1] = static_415(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2527))-(y(2548)*log(y(7238)-params(335)*y(7238))-1/(1+params(383))*y(2451)^(1+params(383))+params(316)*y(2527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
