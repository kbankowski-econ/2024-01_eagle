function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3084))-(y(3105)*log(y(5373)-params(610)*y(5373))-1/(1+params(658))*y(3008)^(1+params(658))+params(591)*y(3084));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(591);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
