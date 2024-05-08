function [y, T, residual, g1] = static_273(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3808)=params(72)*(y(363)/T(1459))^params(77);
  residual(1)=(y(401))-((1-params(72))*(y(434)/y(433))^(-params(77))+y(401)*T(3808));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3808);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
