function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2050)=params(92)*T(354)^params(97);
  residual(1)=(y(255))-((1-params(92))*(y(287)/y(286))^(-params(97))+y(255)*T(2050));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2050);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
