function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1448))-(y(1469)*log(y(1310)-y(1310)*params(420))-1/(1+params(466))*y(1372)^(1+params(466))+y(1448)*params(403));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(403);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
