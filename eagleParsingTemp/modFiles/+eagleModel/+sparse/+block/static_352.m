function [y, T, residual, g1] = static_352(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4864)=params(370)*T(2243)^params(375);
  residual(1)=(y(1921))-((1-params(370))*(y(1954)/y(1953))^(-params(375))+y(1921)*T(4864));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4864);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
