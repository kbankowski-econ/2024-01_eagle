function [y, T, residual, g1] = static_267(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3171)=params(72)*T(383)^params(77);
  residual(1)=(y(377))-((1-params(72))*(y(410)/y(409))^(-params(77))+y(377)*T(3171));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3171);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
