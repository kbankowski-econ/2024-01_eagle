function [y, T, residual, g1] = static_170(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2330))-(y(2351)*log(y(2409)-params(490)*y(2409))-1/(1+params(539))*y(2257)^(1+params(539))+params(474)*y(2330));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(474);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
