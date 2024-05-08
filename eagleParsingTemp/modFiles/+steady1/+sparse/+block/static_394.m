function [y, T, residual, g1] = static_394(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(475))-(y(496)*log(y(331)-params(27)*y(331))-1/(1+params(75))*y(399)^(1+params(75))+params(8)*y(475));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(8);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
