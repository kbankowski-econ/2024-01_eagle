function [y, T, residual, g1] = static_112(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(982))-(y(1002)*log(y(848)-params(295)*y(848))-1/(1+params(340))*y(909)^(1+params(340))+params(281)*y(982));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(281);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
