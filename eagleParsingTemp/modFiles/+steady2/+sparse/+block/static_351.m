function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1969))-(y(1989)*log(y(1831)-params(520)*y(1831))-1/(1+params(563))*y(1893)^(1+params(563))+params(503)*y(1969));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(503);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
