function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1179)=params(190)*T(146)^params(195);
  residual(1)=(y(848))-((1-params(190))*(y(879)/y(878))^(-params(195))+y(848)*T(1179));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1179);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
