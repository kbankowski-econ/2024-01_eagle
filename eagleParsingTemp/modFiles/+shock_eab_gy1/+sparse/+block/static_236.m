function [y, T, residual, g1] = static_236(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2476)=params(637)*T(1449)^params(642);
  residual(1)=(y(2554))-((1-params(637))*(y(2587)/y(2586))^(-params(642))+y(2554)*T(2476));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2476);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
