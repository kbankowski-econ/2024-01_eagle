function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5381)=params(1475)*(y(7643)/T(3241))^params(1480);
  residual(1)=(y(7679))-((1-params(1475))*(y(7711)/y(7710))^(-params(1480))+y(7679)*T(5381));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5381);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
