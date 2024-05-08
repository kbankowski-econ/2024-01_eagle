function [y, T, residual, g1] = static_411(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1350))-(y(1371)*log(y(1212)-y(1212)*params(330))-1/(1+params(373))*y(1274)^(1+params(373))+y(1350)*params(313));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(313);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
