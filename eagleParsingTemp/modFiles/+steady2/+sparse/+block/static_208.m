function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(52)=log(y(6294));
  residual(1)=(T(52))-((1-params(1665))*log(x(336))+T(52)*params(1665)+x(350));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6294)-params(1665)*1/y(6294);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
