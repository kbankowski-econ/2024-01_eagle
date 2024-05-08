function [y, T, residual, g1] = static_346(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1566))-(y(1587)*log(y(1428)-y(1428)*params(407))-1/(1+params(450))*y(1490)^(1+params(450))+y(1566)*params(390));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(390);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
