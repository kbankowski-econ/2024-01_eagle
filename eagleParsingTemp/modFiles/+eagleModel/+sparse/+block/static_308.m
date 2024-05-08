function [y, T, residual, g1] = static_308(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4855))-(y(4877)*log(y(4711)-y(4711)*params(998))-1/(1+params(1049))*y(4779)^(1+params(1049))+y(4855)*params(979));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(979);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
