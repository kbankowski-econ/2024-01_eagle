function [y, T, residual, g1] = static_147(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(37)=log(y(4677));
  residual(1)=(T(37))-((1-params(950))*log(x(267))+T(37)*params(950)+x(282));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4677)-params(950)*1/y(4677);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
