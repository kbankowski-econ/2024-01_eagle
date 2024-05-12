function [y, T, residual, g1] = static_399(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5787))-(y(5807)*log(y(5649)-params(1503)*y(5649))-1/(1+params(1546))*y(5711)^(1+params(1546))+params(1486)*y(5787));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1486);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
