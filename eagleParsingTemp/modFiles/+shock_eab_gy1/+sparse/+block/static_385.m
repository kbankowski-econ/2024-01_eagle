function [y, T, residual, g1] = static_385(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2043))-(y(2064)*log(y(7779)-params(328)*y(7779))-1/(1+params(376))*y(1967)^(1+params(376))+params(309)*y(2043));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(309);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
