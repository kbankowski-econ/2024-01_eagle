function [y, T, residual, g1] = static_90(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(24)=log(y(1785));
  residual(1)=(T(24))-((1-params(375))*log(x(141))+T(24)*params(375)+x(155));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1785)-params(375)*1/y(1785);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
