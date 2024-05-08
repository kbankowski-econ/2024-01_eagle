function [y, T, residual, g1] = static_302(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6302))-(y(6323)*log(y(6429)-params(952)*y(6429))-1/(1+params(1001))*y(6229)^(1+params(1001))+params(936)*y(6302));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(936);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
