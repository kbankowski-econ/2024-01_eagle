function [y, T, residual, g1] = static_244(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2842)=params(72)*T(1407)^params(77);
  residual(1)=(y(353))-((1-params(72))*(y(386)/y(385))^(-params(77))+y(353)*T(2842));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2842);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
