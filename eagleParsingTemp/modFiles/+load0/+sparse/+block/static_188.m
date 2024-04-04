function [y, T, residual, g1] = static_188(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1175)=params(388)*T(875)^params(393);
  residual(1)=(y(1751))-((1-params(388))*(y(1782)/y(1781))^(-params(393))+y(1751)*T(1175));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1175);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
