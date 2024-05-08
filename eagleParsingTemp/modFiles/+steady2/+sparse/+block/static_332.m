function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4423)=params(673)*T(810)^params(678);
  residual(1)=(y(2345))-((1-params(673))*(y(2377)/y(2376))^(-params(678))+y(2345)*T(4423));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4423);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
