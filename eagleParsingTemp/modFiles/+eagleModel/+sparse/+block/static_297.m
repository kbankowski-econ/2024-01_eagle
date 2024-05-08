function [y, T, residual, g1] = static_297(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1957))-(y(1979)*log(y(1813)-y(1813)*params(408))-1/(1+params(456))*y(1881)^(1+params(456))+y(1957)*params(389));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(389);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
