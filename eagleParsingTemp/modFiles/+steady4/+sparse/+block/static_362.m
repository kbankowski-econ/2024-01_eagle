function [y, T, residual, g1] = static_362(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5751)=params(380)*(y(2587)/T(896))^params(385);
  residual(1)=(y(2625))-((1-params(380))*(y(2658)/y(2657))^(-params(385))+y(2625)*T(5751));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5751);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
