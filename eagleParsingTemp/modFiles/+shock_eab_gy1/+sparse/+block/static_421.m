function [y, T, residual, g1] = static_421(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5812)=params(873)*T(2226)^params(878);
  residual(1)=(y(4592))-((1-params(873))*(y(4625)/y(4624))^(-params(878))+y(4592)*T(5812));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5812);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
