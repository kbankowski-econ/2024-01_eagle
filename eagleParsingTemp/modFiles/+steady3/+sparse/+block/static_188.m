function [y, T, residual, g1] = static_188(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1287)=params(400)*T(942)^params(405);
  residual(1)=(y(1775))-((1-params(400))*(y(1806)/y(1805))^(-params(405))+y(1775)*T(1287));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1287);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
