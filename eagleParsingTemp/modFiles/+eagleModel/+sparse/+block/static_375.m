function [y, T, residual, g1] = static_375(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4270)=params(661)*T(1234)^params(666);
  residual(1)=(y(3226))-((1-params(661))*(y(3259)/y(3258))^(-params(666))+y(3226)*T(4270));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4270);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
