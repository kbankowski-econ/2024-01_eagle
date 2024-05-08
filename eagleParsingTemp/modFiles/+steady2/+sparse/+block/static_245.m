function [y, T, residual, g1] = static_245(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2841))-(y(2861)*log(y(2703)-params(795)*y(2703))-1/(1+params(841))*y(2765)^(1+params(841))+params(778)*y(2841));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(778);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
