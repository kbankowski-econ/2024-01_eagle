function [y, T, residual, g1] = static_131(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(761)=params(165)*T(32)^params(170);
  residual(1)=(y(450))-((1-params(165))*(y(482)/y(481))^(-params(170))+y(450)*T(761));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(761);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
