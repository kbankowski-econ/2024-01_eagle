function [y, T, residual, g1] = static_347(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(762))-(y(783)*log(y(624)-y(624)*params(181))-1/(1+params(224))*y(686)^(1+params(224))+y(762)*params(164));
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
