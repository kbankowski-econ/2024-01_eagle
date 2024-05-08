function [y, T, residual, g1] = static_157(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1141)=params(440)*T(690)^params(445);
  residual(1)=(y(1452))-((1-params(440))*(y(1485)/y(1484))^(-params(445))+y(1452)*T(1141));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1141);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
