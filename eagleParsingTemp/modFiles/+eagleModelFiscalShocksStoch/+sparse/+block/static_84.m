function [y, T, residual, g1] = static_84(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(22)=log(y(2130));
  residual(1)=(T(22))-((1-params(530))*log(x(159))+T(22)*params(530)+x(176));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2130)-params(530)*1/y(2130);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
