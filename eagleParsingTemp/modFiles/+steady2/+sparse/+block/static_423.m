function [y, T, residual, g1] = static_423(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6780)=params(870)*T(1360)^params(875);
  residual(1)=(y(3185))-((1-params(870))*(y(3217)/y(3216))^(-params(875))+y(3185)*T(6780));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6780);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
