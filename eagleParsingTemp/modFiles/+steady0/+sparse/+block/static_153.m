function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1078)=params(123)*(y(513)/T(864))^params(128);
  residual(1)=(y(543))-((1-params(123))*(y(574)/y(573))^(-params(128))+y(543)*T(1078));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1078);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
