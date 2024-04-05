function [y, T, residual, g1] = static_173(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1120)=params(543)*(y(1930)/T(552))^params(548);
  residual(1)=(y(1958))-((1-params(543))*(y(1988)/y(1987))^(-params(548))+y(1958)*T(1120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
