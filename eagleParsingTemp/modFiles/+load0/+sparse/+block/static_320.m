function [y, T, residual, g1] = static_320(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4220)=params(842)*(y(5267)/T(2408))^params(847);
  residual(1)=(y(5305))-((1-params(842))*(y(5338)/y(5337))^(-params(847))+y(5305)*T(4220));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4220);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
