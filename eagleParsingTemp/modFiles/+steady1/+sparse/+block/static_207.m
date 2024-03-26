function [y, T, residual, g1] = static_207(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1164))-(y(1186)*log(y(1042)-y(1042)*params(217))-1/(1+params(254))*y(1102)^(1+params(254))+y(1164)*params(200));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
