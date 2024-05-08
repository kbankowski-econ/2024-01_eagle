function [y, T, residual, g1] = static_37(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(10)=log(y(1523));
  residual(1)=(T(10))-((1-params(220))*log(x(67))+T(10)*params(220)+x(81));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1523)-params(220)*1/y(1523);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
