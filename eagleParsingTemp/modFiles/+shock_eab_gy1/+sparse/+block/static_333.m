function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1947))-(y(1968)*log(y(6925)-params(325)*y(6925))-1/(1+params(373))*y(1871)^(1+params(373))+params(306)*y(1947));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(306);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
