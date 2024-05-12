function [y, T, residual, g1] = static_425(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1528))-(y(1549)*log(y(7775)-params(228)*y(7775))-1/(1+params(276))*y(1452)^(1+params(276))+params(209)*y(1528));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(209);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
