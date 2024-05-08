function [y, T, residual, g1] = static_329(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1226))-(y(1247)*log(y(1088)-y(1088)*params(306))-1/(1+params(349))*y(1150)^(1+params(349))+y(1226)*params(289));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(289);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
