function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1699)=params(72)*T(439)^params(77);
  residual(1)=(y(311))-((1-params(72))*(y(344)/y(343))^(-params(77))+y(311)*T(1699));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1699);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
