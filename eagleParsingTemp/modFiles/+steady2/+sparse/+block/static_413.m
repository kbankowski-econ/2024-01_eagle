function [y, T, residual, g1] = static_413(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2176))-(y(2197)*log(y(2038)-y(2038)*params(560))-1/(1+params(603))*y(2100)^(1+params(603))+y(2176)*params(543));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(543);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
