function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(798)=params(435)*T(295)^params(440);
  residual(1)=(y(1329))-((1-params(435))*(y(1361)/y(1360))^(-params(440))+y(1329)*T(798));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(798);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
