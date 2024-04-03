function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2071))-(y(2093)*log(y(2149)-y(2149)*params(415))-1/(1+params(455))*y(2012)^(1+params(455))+y(2071)*params(401));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(401);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
