function [y, T, residual, g1] = static_244(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2534)=params(399)*T(465)^params(404);
  residual(1)=(y(1292))-((1-params(399))*(y(1324)/y(1323))^(-params(404))+y(1292)*T(2534));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2534);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
