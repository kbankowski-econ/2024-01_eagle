function [y, T, residual, g1] = static_317(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5350)=params(1076)*T(1572)^params(1081);
  residual(1)=(y(7467))-((1-params(1076))*(y(7500)/y(7499))^(-params(1081))+y(7467)*T(5350));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5350);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
