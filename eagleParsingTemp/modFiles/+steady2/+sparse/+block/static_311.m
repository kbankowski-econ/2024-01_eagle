function [y, T, residual, g1] = static_311(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3747)=params(431)*T(104)^params(436);
  residual(1)=(y(1458))-((1-params(431))*(y(1490)/y(1489))^(-params(436))+y(1458)*T(3747));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3747);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
