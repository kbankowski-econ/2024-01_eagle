function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4505)=params(367)*(y(1787)/T(1761))^params(372);
  residual(1)=(y(1825))-((1-params(367))*(y(1858)/y(1857))^(-params(372))+y(1825)*T(4505));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4505);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
