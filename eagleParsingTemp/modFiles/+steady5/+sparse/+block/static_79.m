function [y, T, residual, g1] = static_79(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(19)=log(y(1519));
  residual(1)=(T(19))-((1-params(332))*log(x(123))+T(19)*params(332)+x(138));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1519)-params(332)*1/y(1519);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
