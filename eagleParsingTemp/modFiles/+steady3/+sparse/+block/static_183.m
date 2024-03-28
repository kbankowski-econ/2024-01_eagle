function [y, T, residual, g1] = static_183(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1295)=params(394)*T(955)^params(399);
  residual(1)=(y(1763))-((1-params(394))*(y(1794)/y(1793))^(-params(399))+y(1763)*T(1295));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1295);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
