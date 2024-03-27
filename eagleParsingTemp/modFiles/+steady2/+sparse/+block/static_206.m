function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1459)=params(295)*T(518)^params(300);
  residual(1)=(y(1097))-((1-params(295))*(y(1127)/y(1126))^(-params(300))+y(1097)*T(1459));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1459);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
