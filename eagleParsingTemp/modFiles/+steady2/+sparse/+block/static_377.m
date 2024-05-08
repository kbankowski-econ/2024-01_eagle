function [y, T, residual, g1] = static_377(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(804))-(y(824)*log(y(666)-params(189)*y(666))-1/(1+params(232))*y(728)^(1+params(232))+params(172)*y(804));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(172);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
