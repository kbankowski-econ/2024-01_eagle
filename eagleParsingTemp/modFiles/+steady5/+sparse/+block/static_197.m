function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2281)=params(690)*T(521)^params(695);
  residual(1)=(y(3429))-((1-params(690))*(y(3461)/y(3460))^(-params(695))+y(3429)*T(2281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2281);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
