function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(662))-(y(683)*log(y(540)-params(153)*y(540))-1/(1+params(193))*y(600)^(1+params(193))+params(136)*y(662));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(136);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
