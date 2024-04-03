function [y, T, residual, g1] = static_173(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1325)=params(133)*(y(526)/T(972))^params(138);
  residual(1)=(y(556))-((1-params(133))*(y(587)/y(586))^(-params(138))+y(556)*T(1325));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1325);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
