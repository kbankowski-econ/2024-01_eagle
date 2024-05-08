function [y, T, residual, g1] = static_416(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3419))-(y(3441)*log(y(6936)-y(6936)*params(622))-1/(1+params(670))*y(3343)^(1+params(670))+y(3419)*params(603));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(603);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
