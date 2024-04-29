function [y, T, residual, g1] = static_78(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1602))-((1-params(432))*x(123)+y(1602)*params(432)+x(138));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(432);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
