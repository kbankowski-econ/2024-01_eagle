function [y, T, residual, g1] = static_112(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(448)=params(190)*T(207)^params(195);
  residual(1)=(y(638))-((1-params(190))*(y(669)/y(668))^(-params(195))+y(638)*T(448));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(448);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
