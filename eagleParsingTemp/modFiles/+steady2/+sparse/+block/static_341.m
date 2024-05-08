function [y, T, residual, g1] = static_341(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6769)=params(620)*T(926)^params(625);
  residual(1)=(y(2255))-((1-params(620))*(y(2287)/y(2286))^(-params(625))+y(2255)*T(6769));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6769);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
