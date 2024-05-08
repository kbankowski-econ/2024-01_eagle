function [y, T, residual, g1] = static_127(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(31)=log(y(3164));
  residual(1)=(T(31))-((1-params(730))*log(x(208))+T(31)*params(730)+x(223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3164)-params(730)*1/y(3164);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
