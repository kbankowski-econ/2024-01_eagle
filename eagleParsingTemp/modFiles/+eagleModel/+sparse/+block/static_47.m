function [y, T, residual, g1] = static_47(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(11)=log(y(862));
  residual(1)=(T(11))-((1-params(213))*log(x(70))+T(11)*params(213)+x(86));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(862)-params(213)*1/y(862);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
