function [y, T, residual, g1] = static_449(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3587))-(y(3609)*log(y(7790)-y(7790)*params(628))-1/(1+params(676))*y(3511)^(1+params(676))+y(3587)*params(609));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(609);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
