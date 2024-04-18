function [y, T, residual, g1] = static_182(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2046)=params(580)*T(1249)^params(585);
  residual(1)=(y(1845))-((1-params(580))*(y(1877)/y(1876))^(-params(585))+y(1845)*T(2046));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2046);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
