function [y, T, residual, g1] = static_60(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(1221));
  residual(1)=(T(17))-((1-params(347))*log(x(112))+T(17)*params(347)+x(126));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1221)-params(347)*1/y(1221);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
