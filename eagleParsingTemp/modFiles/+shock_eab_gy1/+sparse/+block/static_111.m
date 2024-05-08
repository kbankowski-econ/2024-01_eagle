function [y, T, residual, g1] = static_111(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(27)=log(y(2261));
  residual(1)=(T(27))-((1-params(619))*log(x(181))+T(27)*params(619)+x(196));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2261)-params(619)*1/y(2261);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
