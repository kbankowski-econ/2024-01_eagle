function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(274))-(y(295)*log(y(146)-y(146)*params(25))-1/(1+params(65))*y(212)^(1+params(65))+params(8)*y(274));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(8);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
