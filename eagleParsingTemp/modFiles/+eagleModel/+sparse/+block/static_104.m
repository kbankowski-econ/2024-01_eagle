function [y, T, residual, g1] = static_104(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1031)=params(294)*T(550)^params(299);
  residual(1)=(y(919))-((1-params(294))*(y(950)/y(949))^(-params(299))+y(919)*T(1031));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1031);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
