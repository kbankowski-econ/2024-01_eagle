function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2065)=params(73)*T(330)^params(78);
  residual(1)=(y(304))-((1-params(73))*(y(337)/y(336))^(-params(78))+y(304)*T(2065));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2065);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
