function [y, T, residual, g1] = static_377(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3509))-(y(3529)*log(y(3371)-params(923)*y(3371))-1/(1+params(966))*y(3433)^(1+params(966))+params(906)*y(3509));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(906);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
