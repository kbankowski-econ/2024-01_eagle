function [y, T, residual, g1] = static_87(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2794))-((1-params(439))*x(138)+y(2794)*params(439)+x(151));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(439);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
