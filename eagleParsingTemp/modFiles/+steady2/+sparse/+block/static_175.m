function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1152))-(y(1172)*log(y(1014)-params(327)*y(1014))-1/(1+params(370))*y(1076)^(1+params(370))+params(310)*y(1152));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(310);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
