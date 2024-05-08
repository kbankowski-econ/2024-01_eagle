function [y, T, residual, g1] = static_357(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5199)=params(1162)*(y(5811)/T(2329))^params(1167);
  residual(1)=(y(5849))-((1-params(1162))*(y(5882)/y(5881))^(-params(1167))+y(5849)*T(5199));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5199);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
