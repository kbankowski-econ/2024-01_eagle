function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1773))-(y(1794)*log(y(1633)-params(483)*y(1633))-1/(1+params(533))*y(1700)^(1+params(533))+params(467)*y(1773));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(467);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
