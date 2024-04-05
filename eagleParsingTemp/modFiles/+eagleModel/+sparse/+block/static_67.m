function [y, T, residual, g1] = static_67(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(1437));
  residual(1)=(T(17))-((1-params(376))*log(x(131))+T(17)*params(376)+x(147));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1437)-params(376)*1/y(1437);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
