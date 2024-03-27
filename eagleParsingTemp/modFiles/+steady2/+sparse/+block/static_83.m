function [y, T, residual, g1] = static_83(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(23)=log(y(1719));
  residual(1)=(T(23))-((1-params(440))*log(x(134))+T(23)*params(440)+x(148));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1719)-params(440)*1/y(1719);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
