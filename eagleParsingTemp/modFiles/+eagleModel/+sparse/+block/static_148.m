function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(38)=log(y(4916));
  residual(1)=(T(38))-((1-params(958))*log(x(266))+T(38)*params(958)+x(281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4916)-params(958)*1/y(4916);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
