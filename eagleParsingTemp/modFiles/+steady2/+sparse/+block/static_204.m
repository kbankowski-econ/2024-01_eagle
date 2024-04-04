function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1458)=params(375)*T(818)^params(380);
  residual(1)=(y(1396))-((1-params(375))*(y(1426)/y(1425))^(-params(380))+y(1396)*T(1458));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1458);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
