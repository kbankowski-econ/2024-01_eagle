function [y, T, residual, g1] = static_190(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1485)=params(441)*T(694)^params(446);
  residual(1)=(y(1572))-((1-params(441))*(y(1605)/y(1604))^(-params(446))+y(1572)*T(1485));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1485);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
