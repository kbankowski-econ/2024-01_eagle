function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3575)=params(1087)*(y(3705)/T(484))^params(1092);
  residual(1)=(y(3741))-((1-params(1087))*(y(3772)/y(3771))^(-params(1092))+y(3741)*T(3575));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3575);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
