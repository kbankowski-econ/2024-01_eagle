function [y, T, residual, g1] = static_340(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4001)=params(170)*T(790)^params(175);
  residual(1)=(y(843))-((1-params(170))*(y(876)/y(875))^(-params(175))+y(843)*T(4001));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4001);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
