function [y, T, residual, g1] = static_283(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5515))-(y(5536)*log(y(5634)-params(875)*y(5634))-1/(1+params(924))*y(5442)^(1+params(924))+params(859)*y(5515));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(859);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
