function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1211)=params(381)*T(714)^params(386);
  residual(1)=(y(1389))-((1-params(381))*(y(1420)/y(1419))^(-params(386))+y(1389)*T(1211));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1211);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
