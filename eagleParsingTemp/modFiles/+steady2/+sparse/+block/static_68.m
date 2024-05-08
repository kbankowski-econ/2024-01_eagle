function [y, T, residual, g1] = static_68(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(2304));
  residual(1)=(T(17))-((1-params(615))*log(x(122))+T(17)*params(615)+x(136));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2304)-params(615)*1/y(2304);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
