function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4091))-(y(4112)*log(y(4194)-params(721)*y(4194))-1/(1+params(770))*y(4018)^(1+params(770))+params(705)*y(4091));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(705);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
