function [y, T, residual, g1] = static_436(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4103))-(y(4124)*log(y(7795)-params(728)*y(7795))-1/(1+params(776))*y(4027)^(1+params(776))+params(709)*y(4103));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(709);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
