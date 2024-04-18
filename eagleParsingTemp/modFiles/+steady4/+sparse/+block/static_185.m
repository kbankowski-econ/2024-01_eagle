function [y, T, residual, g1] = static_185(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1616)=params(380)*T(720)^params(385);
  residual(1)=(y(1633))-((1-params(380))*(y(1666)/y(1665))^(-params(385))+y(1633)*T(1616));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1616);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
