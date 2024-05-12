function [y, T, residual, g1] = static_405(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7724)=params(1414)*T(4033)^params(1419);
  residual(1)=(y(5275))-((1-params(1414))*(y(5307)/y(5306))^(-params(1419))+y(5275)*T(7724));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7724);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
