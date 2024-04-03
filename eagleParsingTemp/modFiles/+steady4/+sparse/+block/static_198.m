function [y, T, residual, g1] = static_198(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1335)=params(340)*T(741)^params(345);
  residual(1)=(y(1475))-((1-params(340))*(y(1506)/y(1505))^(-params(345))+y(1475)*T(1335));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1335);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
