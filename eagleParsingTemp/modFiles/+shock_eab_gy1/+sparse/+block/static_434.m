function [y, T, residual, g1] = static_434(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2437))-(y(2459)*log(y(6928)-y(6928)*params(424))-1/(1+params(472))*y(2361)^(1+params(472))+y(2437)*params(405));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(405);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
