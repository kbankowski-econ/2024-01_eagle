function [y, T, residual, g1] = static_131(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1231))-(y(1253)*log(y(1113)-y(1113)*params(281))-1/(1+params(320))*y(1172)^(1+params(320))+y(1231)*params(267));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(267);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
