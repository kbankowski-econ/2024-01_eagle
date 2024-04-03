function [y, T, residual, g1] = static_177(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(580))-(y(601)*log(y(452)-params(97)*y(452))-1/(1+params(136))*y(518)^(1+params(136))+params(79)*y(580));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(79);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
