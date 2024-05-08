function [y, T, residual, g1] = static_436(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2281))-(y(2301)*log(y(2143)-params(580)*y(2143))-1/(1+params(623))*y(2205)^(1+params(623))+params(563)*y(2281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(563);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
