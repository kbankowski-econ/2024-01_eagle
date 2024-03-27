function [y, T, residual, g1] = static_145(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1355)=params(522)*(y(1933)/T(865))^params(527);
  residual(1)=(y(1961))-((1-params(522))*(y(1990)/y(1989))^(-params(527))+y(1961)*T(1355));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1355);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
