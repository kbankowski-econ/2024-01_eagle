function [y, T, residual, g1] = static_187(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2401))-(y(2422)*log(y(2267)-y(2267)*params(634))-1/(1+params(679))*y(2328)^(1+params(679))+y(2401)*params(620));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(620);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
