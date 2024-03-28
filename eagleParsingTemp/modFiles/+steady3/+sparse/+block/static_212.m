function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1298)=params(193)*T(165)^params(198);
  residual(1)=(y(854))-((1-params(193))*(y(885)/y(884))^(-params(198))+y(854)*T(1298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1298);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
