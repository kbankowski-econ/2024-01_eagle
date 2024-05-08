function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(47)=log(y(5316));
  residual(1)=(T(47))-((1-params(1134))*log(x(321))+T(47)*params(1134)+x(336));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5316)-params(1134)*1/y(5316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
