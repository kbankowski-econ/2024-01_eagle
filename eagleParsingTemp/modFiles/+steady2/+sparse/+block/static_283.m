function [y, T, residual, g1] = static_283(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5599)=params(1570)*T(617)^params(1575);
  residual(1)=(y(5700))-((1-params(1570))*(y(5731)/y(5730))^(-params(1575))+y(5700)*T(5599));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5599);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
