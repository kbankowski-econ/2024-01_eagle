function [y, T, residual, g1] = static_343(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5120))-(y(5141)*log(y(4976)-params(1008)*y(4976))-1/(1+params(1056))*y(5044)^(1+params(1056))+params(989)*y(5120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(989);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
