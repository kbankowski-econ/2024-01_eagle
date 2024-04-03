function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1338)=params(340)*T(770)^params(345);
  residual(1)=(y(1474))-((1-params(340))*(y(1505)/y(1504))^(-params(345))+y(1474)*T(1338));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1338);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
