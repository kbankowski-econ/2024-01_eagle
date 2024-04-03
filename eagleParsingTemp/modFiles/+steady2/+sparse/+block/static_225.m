function [y, T, residual, g1] = static_225(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1456)=params(223)*T(161)^params(228);
  residual(1)=(y(814))-((1-params(223))*(y(844)/y(843))^(-params(228))+y(814)*T(1456));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1456);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
