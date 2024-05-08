function [y, T, residual, g1] = static_258(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(301))-(y(321)*log(y(163)-params(56)*y(163))-1/(1+params(99))*y(225)^(1+params(99))+params(39)*y(301));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(39);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
