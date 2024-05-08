function [y, T, residual, g1] = static_402(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4141))-(y(4161)*log(y(4003)-params(1080)*y(4003))-1/(1+params(1123))*y(4065)^(1+params(1123))+params(1063)*y(4141));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1063);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
