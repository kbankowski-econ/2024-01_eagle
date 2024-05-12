function [y, T, residual, g1] = static_415(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5301))-(y(5321)*log(y(5163)-params(1374)*y(5163))-1/(1+params(1417))*y(5225)^(1+params(1417))+params(1357)*y(5301));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1357);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
