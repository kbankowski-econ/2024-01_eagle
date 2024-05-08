function [y, T, residual, g1] = static_420(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(421))-(y(441)*log(y(283)-params(80)*y(283))-1/(1+params(123))*y(345)^(1+params(123))+params(63)*y(421));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(63);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
