function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2099))-(y(2121)*log(y(1975)-y(1975)*params(427))-1/(1+params(469))*y(2040)^(1+params(469))+y(2099)*params(413));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(413);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
