function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1333)=params(320)*T(759)^params(325);
  residual(1)=(y(1449))-((1-params(320))*(y(1480)/y(1479))^(-params(325))+y(1449)*T(1333));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1333);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
