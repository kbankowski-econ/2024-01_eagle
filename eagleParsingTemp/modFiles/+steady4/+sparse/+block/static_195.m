function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1774))-(y(1796)*log(y(2145)-y(2145)*params(350))-1/(1+params(391))*y(1712)^(1+params(391))+y(1774)*params(333));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(333);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
