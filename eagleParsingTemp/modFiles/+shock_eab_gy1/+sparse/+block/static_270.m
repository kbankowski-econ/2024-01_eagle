function [y, T, residual, g1] = static_270(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1467))-(y(1488)*log(y(3375)-params(310)*y(3375))-1/(1+params(358))*y(1391)^(1+params(358))+params(291)*y(1467));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(291);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
