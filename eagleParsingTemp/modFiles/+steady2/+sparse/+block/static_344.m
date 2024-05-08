function [y, T, residual, g1] = static_344(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(763))-(y(783)*log(y(625)-params(181)*y(625))-1/(1+params(224))*y(687)^(1+params(224))+params(164)*y(763));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(164);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
