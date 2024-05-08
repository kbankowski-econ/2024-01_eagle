function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(53)=log(y(6485));
  residual(1)=(T(53))-((1-params(1742))*log(x(365))+T(53)*params(1742)+x(379));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6485)-params(1742)*1/y(6485);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
