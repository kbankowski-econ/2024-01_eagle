function [y, T, residual, g1] = static_296(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1165))-(y(1185)*log(y(1027)-params(294)*y(1027))-1/(1+params(337))*y(1089)^(1+params(337))+params(277)*y(1165));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(277);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
