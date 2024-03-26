function [y, T, residual, g1] = static_181(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1167)=params(382)*T(877)^params(387);
  residual(1)=(y(1739))-((1-params(382))*(y(1770)/y(1769))^(-params(387))+y(1739)*T(1167));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1167);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
