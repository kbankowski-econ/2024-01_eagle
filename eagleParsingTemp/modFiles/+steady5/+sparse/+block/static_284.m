function [y, T, residual, g1] = static_284(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(354))-(y(375)*log(y(3517)-params(28)*y(3517))-1/(1+params(75))*y(278)^(1+params(75))+params(9)*y(354));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(9);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
