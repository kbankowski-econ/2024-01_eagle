function [y, T, residual, g1] = static_75(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(20)=log(y(1254));
  residual(1)=(T(20))-((1-params(310))*log(x(115))+T(20)*params(310)+x(129));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1254)-params(310)*1/y(1254);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
