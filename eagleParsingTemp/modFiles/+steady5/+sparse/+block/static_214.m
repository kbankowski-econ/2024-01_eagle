function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1472))-(y(1494)*log(y(2141)-y(2141)*params(286))-1/(1+params(323))*y(1410)^(1+params(323))+y(1472)*params(269));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(269);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
