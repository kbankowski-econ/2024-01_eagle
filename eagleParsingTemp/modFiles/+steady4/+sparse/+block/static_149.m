function [y, T, residual, g1] = static_149(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(38)=log(y(4617));
  residual(1)=(T(38))-((1-params(759))*log(x(256))+T(38)*params(759)+x(270));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4617)-params(759)*1/y(4617);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
