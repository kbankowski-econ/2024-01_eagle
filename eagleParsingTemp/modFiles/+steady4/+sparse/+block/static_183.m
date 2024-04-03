function [y, T, residual, g1] = static_183(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2107))-(y(2128)*log(y(1982)-params(441)*y(1982))-1/(1+params(483))*y(2048)^(1+params(483))+params(426)*y(2107));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(426);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
