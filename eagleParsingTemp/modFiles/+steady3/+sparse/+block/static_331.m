function [y, T, residual, g1] = static_331(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5330))-(y(5352)*log(y(6420)-y(6420)*params(797))-1/(1+params(845))*y(5254)^(1+params(845))+y(5330)*params(778));
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
