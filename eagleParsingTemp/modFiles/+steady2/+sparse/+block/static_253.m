function [y, T, residual, g1] = static_253(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1317))-(y(1338)*log(y(1179)-y(1179)*params(359))-1/(1+params(402))*y(1241)^(1+params(402))+y(1317)*params(342));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(342);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
