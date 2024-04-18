function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2048)=params(480)*T(896)^params(485);
  residual(1)=(y(1527))-((1-params(480))*(y(1559)/y(1558))^(-params(485))+y(1527)*T(2048));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2048);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
