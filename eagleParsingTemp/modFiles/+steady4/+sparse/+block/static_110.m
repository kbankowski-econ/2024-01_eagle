function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(883)=params(382)*T(112)^params(387);
  residual(1)=(y(1382))-((1-params(382))*(y(1414)/y(1413))^(-params(387))+y(1382)*T(883));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(883);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
