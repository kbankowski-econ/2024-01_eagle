function [y, T, residual, g1] = static_370(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7721)=params(1804)*(y(6695)/T(3351))^params(1809);
  residual(1)=(y(6733))-((1-params(1804))*(y(6765)/y(6764))^(-params(1809))+y(6733)*T(7721));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7721);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
