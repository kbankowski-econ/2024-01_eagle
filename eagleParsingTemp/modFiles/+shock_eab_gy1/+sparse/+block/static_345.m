function [y, T, residual, g1] = static_345(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5382)=params(1376)*T(448)^params(1381);
  residual(1)=(y(7167))-((1-params(1376))*(y(7200)/y(7199))^(-params(1381))+y(7167)*T(5382));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5382);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
