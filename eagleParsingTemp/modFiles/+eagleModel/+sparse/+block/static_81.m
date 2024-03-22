function [y, T, residual, g1] = static_81(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(850))-(y(872)*log(y(732)-y(732)*params(254))-1/(1+params(293))*y(791)^(1+params(293))+y(850)*params(240));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(240);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
