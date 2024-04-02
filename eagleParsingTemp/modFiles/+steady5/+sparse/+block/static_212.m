function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1497))-(y(1519)*log(y(1369)-y(1369)*params(304))-1/(1+params(343))*y(1435)^(1+params(343))+y(1497)*params(286));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(286);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
