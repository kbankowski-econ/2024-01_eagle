function [y, T, residual, g1] = static_317(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4817)=params(1264)*T(167)^params(1269);
  residual(1)=(y(6340))-((1-params(1264))*(y(6373)/y(6372))^(-params(1269))+y(6340)*T(4817));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4817);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
