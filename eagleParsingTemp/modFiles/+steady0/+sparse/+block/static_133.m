function [y, T, residual, g1] = static_133(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1069)=params(459)*(y(1783)/T(396))^params(464);
  residual(1)=(y(1819))-((1-params(459))*(y(1851)/y(1850))^(-params(464))+y(1819)*T(1069));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1069);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
