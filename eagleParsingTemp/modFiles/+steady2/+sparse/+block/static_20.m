function [y, T, residual, g1] = static_20(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5)=log(y(950));
  residual(1)=(T(5))-((1-params(248))*log(x(41))+T(5)*params(248)+x(55));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(950)-params(248)*1/y(950);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
