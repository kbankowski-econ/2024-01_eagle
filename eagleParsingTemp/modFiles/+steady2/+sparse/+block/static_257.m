function [y, T, residual, g1] = static_257(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2480))-(y(2501)*log(y(2342)-y(2342)*params(690))-1/(1+params(733))*y(2404)^(1+params(733))+y(2480)*params(673));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(673);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
