function [y, T, residual, g1] = static_130(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(535))-(y(557)*log(y(385)-y(385)*params(113))-1/(1+params(168))*y(462)^(1+params(168))+y(535)*params(95));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(95);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
