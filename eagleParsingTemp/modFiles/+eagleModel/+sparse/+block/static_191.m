function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1981))-(y(2002)*log(y(1861)-params(506)*y(1861))-1/(1+params(546))*y(1922)^(1+params(546))+params(492)*y(1981));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(492);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
