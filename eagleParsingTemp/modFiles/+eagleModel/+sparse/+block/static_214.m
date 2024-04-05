function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1212)=params(301)*T(490)^params(306);
  residual(1)=(y(1103))-((1-params(301))*(y(1134)/y(1133))^(-params(306))+y(1103)*T(1212));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1212);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
