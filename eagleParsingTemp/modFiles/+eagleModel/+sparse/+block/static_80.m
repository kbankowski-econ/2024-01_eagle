function [y, T, residual, g1] = static_80(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(20)=log(y(2340));
  residual(1)=(T(20))-((1-params(458))*log(x(125))+T(20)*params(458)+x(140));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2340)-params(458)*1/y(2340);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
