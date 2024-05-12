function [y, T, residual, g1] = static_441(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1413))-(y(1433)*log(y(1275)-params(342)*y(1275))-1/(1+params(385))*y(1337)^(1+params(385))+params(325)*y(1413));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(325);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
