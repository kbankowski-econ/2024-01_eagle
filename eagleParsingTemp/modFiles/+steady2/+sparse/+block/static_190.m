function [y, T, residual, g1] = static_190(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1452)=params(454)*T(1072)^params(459);
  residual(1)=(y(1687))-((1-params(454))*(y(1717)/y(1716))^(-params(459))+y(1687)*T(1452));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1452);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
