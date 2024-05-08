function [y, T, residual, g1] = static_415(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2525))-(y(2547)*log(y(7237)-y(7237)*params(336))-1/(1+params(383))*y(2449)^(1+params(383))+y(2525)*params(317));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(317);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
