function [y, T, residual, g1] = static_400(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2317))-(y(2339)*log(y(2173)-y(2173)*params(420))-1/(1+params(468))*y(2241)^(1+params(468))+y(2317)*params(401));
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
