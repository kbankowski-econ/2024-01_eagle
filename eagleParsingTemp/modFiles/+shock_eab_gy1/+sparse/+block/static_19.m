function [y, T, residual, g1] = static_19(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5)=log(y(557));
  residual(1)=(T(5))-((1-params(158))*log(x(43))+T(5)*params(158)+x(58));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(557)-params(158)*1/y(557);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
