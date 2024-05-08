function [y, T, residual, g1] = static_286(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2352))-(y(2374)*log(y(2208)-y(2208)*params(503))-1/(1+params(551))*y(2276)^(1+params(551))+y(2352)*params(484));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(484);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
