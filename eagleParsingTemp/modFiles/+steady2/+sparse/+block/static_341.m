function [y, T, residual, g1] = static_341(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(381))-(y(401)*log(y(243)-params(72)*y(243))-1/(1+params(115))*y(305)^(1+params(115))+params(55)*y(381));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(55);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
