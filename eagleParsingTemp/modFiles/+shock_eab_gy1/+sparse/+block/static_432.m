function [y, T, residual, g1] = static_432(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2438))-(y(2459)*log(y(6929)-params(424)*y(6929))-1/(1+params(472))*y(2362)^(1+params(472))+params(405)*y(2438));
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
