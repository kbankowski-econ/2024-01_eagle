function [y, T, residual, g1] = static_68(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(18)=log(y(1501));
  residual(1)=(T(18))-((1-params(434))*log(x(126))+T(18)*params(434)+x(142));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1501)-params(434)*1/y(1501);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
