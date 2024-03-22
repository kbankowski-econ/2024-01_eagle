function [y, T, residual, g1] = static_117(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(431))-(y(453)*log(y(309)-y(309)*params(89))-1/(1+params(126))*y(369)^(1+params(126))+y(431)*params(72));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(72);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
