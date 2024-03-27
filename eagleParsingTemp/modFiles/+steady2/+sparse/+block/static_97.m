function [y, T, residual, g1] = static_97(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(27)=log(y(2004));
  residual(1)=(T(27))-((1-params(514))*log(x(159))+T(27)*params(514)+x(173));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2004)-params(514)*1/y(2004);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
