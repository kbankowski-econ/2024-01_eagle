function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1356)=params(145)*T(143)^params(150);
  residual(1)=(y(519))-((1-params(145))*(y(549)/y(548))^(-params(150))+y(519)*T(1356));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1356);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
