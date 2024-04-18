function [y, T, residual, g1] = static_178(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1640)=params(536)*(y(1857)/T(518))^params(541);
  residual(1)=(y(1895))-((1-params(536))*(y(1928)/y(1927))^(-params(541))+y(1895)*T(1640));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1640);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
