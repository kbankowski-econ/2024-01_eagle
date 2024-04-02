function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(274))-(y(295)*log(y(146)-y(146)*params(28))-1/(1+params(67))*y(212)^(1+params(67))+params(10)*y(274));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(10);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
