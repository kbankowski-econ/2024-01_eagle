function [y, T, residual, g1] = static_261(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(78)=params(303)^(-1);
  residual(1)=(y(1816)*(1-y(6082)))-(T(78)*y(1787));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(6082);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
