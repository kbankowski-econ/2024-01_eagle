function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5496)=params(303)*(y(2049)/T(2608))^params(308);
  residual(1)=(y(2087))-((1-params(303))*(y(2120)/y(2119))^(-params(308))+y(2087)*T(5496));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5496);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
