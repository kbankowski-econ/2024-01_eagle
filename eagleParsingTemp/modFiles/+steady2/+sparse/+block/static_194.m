function [y, T, residual, g1] = static_194(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1457)=params(370)*T(813)^params(375);
  residual(1)=(y(1386))-((1-params(370))*(y(1416)/y(1415))^(-params(375))+y(1386)*T(1457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1457);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
