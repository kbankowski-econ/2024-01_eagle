function [y, T, residual, g1] = static_227(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1717))-(y(1739)*log(y(2812)-y(2812)*params(400))-1/(1+params(448))*y(1641)^(1+params(448))+y(1717)*params(381));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(381);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
