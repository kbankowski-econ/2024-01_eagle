function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2121))-(y(2141)*log(y(1983)-params(585)*y(1983))-1/(1+params(628))*y(2045)^(1+params(628))+params(568)*y(2121));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(568);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
