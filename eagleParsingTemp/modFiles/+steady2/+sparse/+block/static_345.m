function [y, T, residual, g1] = static_345(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5962)=params(1205)*T(3256)^params(1210);
  residual(1)=(y(4371))-((1-params(1205))*(y(4403)/y(4402))^(-params(1210))+y(4371)*T(5962));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5962);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
