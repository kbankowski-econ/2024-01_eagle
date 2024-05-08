function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2062)=params(538)*T(1069)^params(543);
  residual(1)=(y(2039))-((1-params(538))*(y(2072)/y(2071))^(-params(543))+y(2039)*T(2062));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2062);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
