function [y, T, residual, g1] = static_14(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3)=log(y(222));
  residual(1)=(T(3))-((1-params(52))*log(x(11))+T(3)*params(52)+x(26));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(222)-params(52)*1/y(222);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
