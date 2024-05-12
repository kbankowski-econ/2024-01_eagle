function [y, T, residual, g1] = static_405(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5810)=params(273)*T(2477)^params(278);
  residual(1)=(y(1502))-((1-params(273))*(y(1535)/y(1534))^(-params(278))+y(1502)*T(5810));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5810);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
