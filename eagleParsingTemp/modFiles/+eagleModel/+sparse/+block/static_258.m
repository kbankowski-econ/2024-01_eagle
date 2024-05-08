function [y, T, residual, g1] = static_258(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(725))-(y(746)*log(y(581)-params(122)*y(581))-1/(1+params(170))*y(649)^(1+params(170))+params(103)*y(725));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(103);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
