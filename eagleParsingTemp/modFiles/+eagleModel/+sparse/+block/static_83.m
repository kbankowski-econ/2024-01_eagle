function [y, T, residual, g1] = static_83(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(21)=log(y(7));
  residual(1)=(T(21))-((1-params(4))*log(params(5))+T(21)*params(4)+x(2));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7)-params(4)*1/y(7);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
