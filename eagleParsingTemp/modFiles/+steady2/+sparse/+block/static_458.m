function [y, T, residual, g1] = static_458(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(441))-(y(461)*log(y(303)-params(84)*y(303))-1/(1+params(127))*y(365)^(1+params(127))+params(67)*y(441));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(67);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
