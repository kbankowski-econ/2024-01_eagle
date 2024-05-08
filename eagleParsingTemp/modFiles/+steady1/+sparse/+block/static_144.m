function [y, T, residual, g1] = static_144(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(36)=log(y(3477));
  residual(1)=(T(36))-((1-params(683))*log(x(228))+T(36)*params(683)+x(242));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3477)-params(683)*1/y(3477);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
