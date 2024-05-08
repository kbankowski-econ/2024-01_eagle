function [y, T, residual, g1] = static_198(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1657))-(y(1679)*log(y(2400)-y(2400)*params(336))-1/(1+params(383))*y(1581)^(1+params(383))+y(1657)*params(317));
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
