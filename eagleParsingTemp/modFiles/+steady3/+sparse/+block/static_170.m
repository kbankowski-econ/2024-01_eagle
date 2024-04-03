function [y, T, residual, g1] = static_170(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1224)=params(466)*(y(2049)/T(356))^params(471);
  residual(1)=(y(2077))-((1-params(466))*(y(2107)/y(2106))^(-params(471))+y(2077)*T(1224));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1224);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
