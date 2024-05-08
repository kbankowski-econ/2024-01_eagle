function [y, T, residual, g1] = static_259(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1837))-(y(1859)*log(y(3378)-y(3378)*params(404))-1/(1+params(452))*y(1761)^(1+params(452))+y(1837)*params(385));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(385);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
