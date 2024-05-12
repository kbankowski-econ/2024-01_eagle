function [y, T, residual, g1] = static_450(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5756)=params(534)*T(1111)^params(539);
  residual(1)=(y(3700))-((1-params(534))*(y(3733)/y(3732))^(-params(539))+y(3700)*T(5756));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5756);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
