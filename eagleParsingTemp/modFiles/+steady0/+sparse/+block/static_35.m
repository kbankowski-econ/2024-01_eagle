function [y, T, residual, g1] = static_35(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(10)=log(y(889));
  residual(1)=(T(10))-((1-params(181))*log(x(64))+T(10)*params(181)+x(78));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(889)-params(181)*1/y(889);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
