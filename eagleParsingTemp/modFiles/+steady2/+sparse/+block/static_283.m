function [y, T, residual, g1] = static_283(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2627))-(y(2647)*log(y(2489)-params(718)*y(2489))-1/(1+params(761))*y(2551)^(1+params(761))+params(701)*y(2627));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
