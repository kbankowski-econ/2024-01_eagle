function [y, T, residual, g1] = static_221(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(281))-(y(301)*log(y(143)-params(52)*y(143))-1/(1+params(95))*y(205)^(1+params(95))+params(35)*y(281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(35);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
