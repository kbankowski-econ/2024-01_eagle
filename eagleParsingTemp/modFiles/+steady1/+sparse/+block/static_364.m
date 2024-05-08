function [y, T, residual, g1] = static_364(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5604))-(y(5626)*log(y(5460)-y(5460)*params(797))-1/(1+params(845))*y(5528)^(1+params(845))+y(5604)*params(778));
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
