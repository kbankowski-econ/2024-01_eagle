function [y, T, residual, g1] = static_111(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(853)=params(382)*T(163)^params(387);
  residual(1)=(y(1382))-((1-params(382))*(y(1414)/y(1413))^(-params(387))+y(1382)*T(853));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(853);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
