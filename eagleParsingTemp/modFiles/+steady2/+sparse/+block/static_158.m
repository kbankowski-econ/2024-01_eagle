function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1559)=params(463)*T(882)^params(468);
  residual(1)=(y(1423))-((1-params(463))*(y(1455)/y(1454))^(-params(468))+y(1423)*T(1559));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1559);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
