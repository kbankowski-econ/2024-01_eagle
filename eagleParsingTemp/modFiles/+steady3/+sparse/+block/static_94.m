function [y, T, residual, g1] = static_94(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(613)=params(72)*(y(171)/T(238))^params(77);
  residual(1)=(y(209))-((1-params(72))*(y(242)/y(241))^(-params(77))+y(209)*T(613));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(613);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
