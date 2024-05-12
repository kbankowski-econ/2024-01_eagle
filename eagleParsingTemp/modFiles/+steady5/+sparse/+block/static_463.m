function [y, T, residual, g1] = static_463(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5757)=params(457)*T(472)^params(462);
  residual(1)=(y(3162))-((1-params(457))*(y(3195)/y(3194))^(-params(462))+y(3162)*T(5757));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5757);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
