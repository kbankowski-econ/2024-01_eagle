function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(40)=log(y(4865));
  residual(1)=(T(40))-((1-params(758))*log(x(255))+T(40)*params(758)+x(269));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4865)-params(758)*1/y(4865);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
