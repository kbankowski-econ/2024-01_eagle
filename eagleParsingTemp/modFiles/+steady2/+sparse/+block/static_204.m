function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1452)=params(71)*T(775)^params(76);
  residual(1)=(y(232))-((1-params(71))*(y(262)/y(261))^(-params(76))+y(232)*T(1452));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1452);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
