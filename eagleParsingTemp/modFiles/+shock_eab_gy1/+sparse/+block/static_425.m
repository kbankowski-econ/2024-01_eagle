function [y, T, residual, g1] = static_425(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5209)=params(469)*T(236)^params(474);
  residual(1)=(y(2412))-((1-params(469))*(y(2445)/y(2444))^(-params(474))+y(2412)*T(5209));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5209);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
