function [y, T, residual, g1] = static_397(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4871)=params(766)*T(1690)^params(771);
  residual(1)=(y(3885))-((1-params(766))*(y(3918)/y(3917))^(-params(771))+y(3885)*T(4871));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4871);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
