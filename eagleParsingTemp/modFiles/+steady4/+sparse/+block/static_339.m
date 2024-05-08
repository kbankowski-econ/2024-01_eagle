function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4541)=params(688)*T(2310)^params(693);
  residual(1)=(y(4329))-((1-params(688))*(y(4362)/y(4361))^(-params(693))+y(4329)*T(4541));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4541);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
