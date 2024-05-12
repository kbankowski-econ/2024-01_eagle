function [y, T, residual, g1] = static_480(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(927))-(y(947)*log(y(789)-params(213)*y(789))-1/(1+params(256))*y(851)^(1+params(256))+params(196)*y(927));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(196);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
