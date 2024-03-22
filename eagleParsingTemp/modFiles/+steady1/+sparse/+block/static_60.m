function [y, T, residual, g1] = static_60(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(16)=log(y(1005));
  residual(1)=(T(16))-((1-params(247))*log(x(89))+T(16)*params(247)+x(103));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1005)-params(247)*1/y(1005);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
