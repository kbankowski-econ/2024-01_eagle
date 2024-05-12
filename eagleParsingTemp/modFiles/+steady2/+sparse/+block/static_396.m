function [y, T, residual, g1] = static_396(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1898))-(y(1919)*log(y(1760)-y(1760)*params(471))-1/(1+params(514))*y(1822)^(1+params(514))+y(1898)*params(454));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(454);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
