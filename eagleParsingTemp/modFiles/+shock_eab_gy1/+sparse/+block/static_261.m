function [y, T, residual, g1] = static_261(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2479)=params(355)*T(425)^params(360);
  residual(1)=(y(1441))-((1-params(355))*(y(1474)/y(1473))^(-params(360))+y(1441)*T(2479));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2479);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
