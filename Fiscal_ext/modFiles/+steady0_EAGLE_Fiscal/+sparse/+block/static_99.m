function [y, T, residual, g1] = static_99(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(707)=params(338)*(y(1037)/T(155))^params(343);
  residual(1)=(y(1071))-((1-params(338))*(y(1103)/y(1102))^(-params(343))+y(1071)*T(707));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(707);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
