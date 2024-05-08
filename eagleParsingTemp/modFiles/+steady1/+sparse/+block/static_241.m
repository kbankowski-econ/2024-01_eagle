function [y, T, residual, g1] = static_241(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(331))-(y(352)*log(y(187)-params(27)*y(187))-1/(1+params(75))*y(255)^(1+params(75))+params(8)*y(331));
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
